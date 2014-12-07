require 'test_helper'

class AptsControllerTest < ActionController::TestCase
  setup do
    @apt = apts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apt" do
    assert_difference('Apt.count') do
      post :create, apt: { address: @apt.address, contact: @apt.contact, description: @apt.description, hunt_id: @apt.hunt_id, link: @apt.link, num_baths: @apt.num_baths, num_beds: @apt.num_beds, opinions: @apt.opinions, price: @apt.price, status: @apt.status }
    end

    assert_redirected_to apt_path(assigns(:apt))
  end

  test "should show apt" do
    get :show, id: @apt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apt
    assert_response :success
  end

  test "should update apt" do
    patch :update, id: @apt, apt: { address: @apt.address, contact: @apt.contact, description: @apt.description, hunt_id: @apt.hunt_id, link: @apt.link, num_baths: @apt.num_baths, num_beds: @apt.num_beds, opinions: @apt.opinions, price: @apt.price, status: @apt.status }
    assert_redirected_to apt_path(assigns(:apt))
  end

  test "should destroy apt" do
    assert_difference('Apt.count', -1) do
      delete :destroy, id: @apt
    end

    assert_redirected_to apts_path
  end
end
