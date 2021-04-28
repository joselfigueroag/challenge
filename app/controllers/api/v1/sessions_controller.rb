module Api
  module V1
    class SessionsController < ApplicationController
      skip_before_action :authenticate

      def login
        @session = User.find_by(name: params[:name])

        unless @session
          render html: "Informacion errada, intentelo nuevamente"
        end
      end

      def show
      end
    end
  end
end