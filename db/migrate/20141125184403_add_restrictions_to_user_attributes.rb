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

class AddRestrictionsToUserAttributes < ActiveRecord::Migration
  def change
    change_column :users, :first_name, :string, limit: 30
    change_column :users, :last_name, :string, limit: 30

    change_column_null :users, :username, false
    change_column_null :users, :first_name, false
    change_column_null :users, :last_name, false
    change_column_null :users, :cpf, false
    change_column_null :users, :birth, false
    change_column_null :users, :gender, false
    change_column_null :users, :email, false

    change_column_default :users, :username, ''
    change_column_default :users, :first_name, ''
    change_column_default :users, :last_name, ''
    change_column_default :users, :cpf, ''
    change_column_default :users, :gender, 'O'
    change_column_default :users, :email, ''
  end
end
