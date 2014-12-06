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

class SupportsControllerTest < ActionController::TestCase
  setup do
    @support = supports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create support" do
    assert_difference('Support.count') do
      post :create, support: { incident_id: @support.incident_id, user_id: @support.user_id }
    end

    assert_redirected_to support_path(assigns(:support))
  end

  test "should show support" do
    get :show, id: @support
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @support
    assert_response :success
  end

  test "should update support" do
    patch :update, id: @support, support: { incident_id: @support.incident_id, user_id: @support.user_id }
    assert_redirected_to support_path(assigns(:support))
  end

  test "should destroy support" do
    assert_difference('Support.count', -1) do
      delete :destroy, id: @support
    end

    assert_redirected_to supports_path
  end
end
