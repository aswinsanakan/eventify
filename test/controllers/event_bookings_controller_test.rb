require 'test_helper'

class EventBookingsControllerTest < ActionController::TestCase
  setup do
    @event_booking = event_bookings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_bookings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_booking" do
    assert_difference('EventBooking.count') do
      post :create, event_booking: { event_id: @event_booking.event_id, user_id: @event_booking.user_id }
    end

    assert_redirected_to event_booking_path(assigns(:event_booking))
  end

  test "should show event_booking" do
    get :show, id: @event_booking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_booking
    assert_response :success
  end

  test "should update event_booking" do
    patch :update, id: @event_booking, event_booking: { event_id: @event_booking.event_id, user_id: @event_booking.user_id }
    assert_redirected_to event_booking_path(assigns(:event_booking))
  end

  test "should destroy event_booking" do
    assert_difference('EventBooking.count', -1) do
      delete :destroy, id: @event_booking
    end

    assert_redirected_to event_bookings_path
  end
end
