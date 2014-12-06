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

class EstablishmentsController < ApplicationController
  before_action :set_establishment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @establishments = Establishment.all
    respond_with(@establishments)
  end

  def show
    respond_with(@establishment)
  end

  def new
    @establishment = Establishment.new
    respond_with(@establishment)
  end

  def edit
  end

  def create
    @establishment = Establishment.new(establishment_params)
    @establishment.save
    respond_with(@establishment)
  end

  def update
    @establishment.update(establishment_params)
    respond_with(@establishment)
  end

  def destroy
    @establishment.destroy
    respond_with(@establishment)
  end

  private
    def set_establishment
      @establishment = Establishment.find(params[:id])
    end

    def establishment_params
      params.require(:establishment).permit(:address, :lat, :lng)
    end
end
