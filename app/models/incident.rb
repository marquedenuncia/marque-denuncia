# Copyright 2014 de Larissa Reis e Icaro Jerry
#
# Este arquivo é parte do programa Marque Denúncia. O Marque Denúncia é um
# software livre; você pode redistribuí-lo e/ou modificá-lo dentro dos termos da
# GNU General Public License como publicada pela Fundação do Software Livre
# (FSF); na versão 3 da Licença. Este programa é distribuído na esperança que
# possa ser útil, mas SEM NENHUMA GARANTIA; sem uma garantia implícita de
# ADEQUAÇÃO a qualquer MERCADO ou APLICAÇÃO EM PARTICULAR. Veja a licença para
# maiores detalhes. Você deve ter recebido uma cópia da GNU General Public
# License, sob o título LICENCA, junto com este programa, se não, acesse
# http://www.gnu.org/licenses/

class Incident < ActiveRecord::Base
  belongs_to :user
  belongs_to :incident_type
  belongs_to :establishment
  
  validates :description, :user, :incident_type, :establishment, presence: true
  validates :description, length: { maximum: 1000 }

  has_many :comments
  has_many :supports
  has_many :supporters, through: :supports, source: :user

  def address
    self.establishment && self.establishment.address
  end

  def address=(newaddress)
    unless newaddress.blank?
      self.establishment = if establishment = Establishment.find_by(:address => newaddress)
                             establishment
                           else
                             Establishment.create(:address => newaddress)
                           end
    end
  end
end
