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

require 'test_helper'

class IncidentTypesControllerTest < ActionController::TestCase
  setup do
    @incident_type = incident_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incident_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incident_type" do
    assert_difference('IncidentType.count') do
      post :create, incident_type: { description: @incident_type.description }
    end

    assert_redirected_to incident_type_path(assigns(:incident_type))
  end

  test "should show incident_type" do
    get :show, id: @incident_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incident_type
    assert_response :success
  end

  test "should update incident_type" do
    patch :update, id: @incident_type, incident_type: { description: @incident_type.description }
    assert_redirected_to incident_type_path(assigns(:incident_type))
  end

  test "should destroy incident_type" do
    assert_difference('IncidentType.count', -1) do
      delete :destroy, id: @incident_type
    end

    assert_redirected_to incident_types_path
  end
end
