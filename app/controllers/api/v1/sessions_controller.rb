module Api
  module V1
    class SessionsController < ApplicationController
      skip_before_action :authenticate

      def login
        @session = User.find_by(name: params[:name])

        if @session 
          render :show
        else
          render json: @session.errors
        end
      end

      def show
        @user = User.find_by(params[:id])
      end
    end
  end
end