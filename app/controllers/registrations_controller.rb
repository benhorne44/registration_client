class RegistrationsController < ApplicationController
  respond_to :json

  def create
    registration = Registration.new(role_id: params[:role_id], user_id: params[:user_id], event_id: params[:event_id])
    if registration.save
      render json: registration, :status => 201
    else
      render json: {}, :status => 500
    end
  end

end
