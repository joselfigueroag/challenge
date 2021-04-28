module Api
  module V1
    class UsersController < ApplicationController
      skip_before_action :authenticate
      def index
        @users = User.all
      end

      def create
        @user = User.new(user_params)
        if @user.save
          render status: :created
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.permit(:name, :token)
      end
    end
  end
end
