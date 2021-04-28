module Api
  module V1
    class CharactersController < ApplicationController
      skip_before_action :authenticate, only: [:show, :index]
      before_action :set_character, only: [:show, :update, :destroy]

      def index
        @characters = Character.where(movie_serie_id: params[:movie_series_id])
      end

      def show
      end

      def create
        @character = Character.new(character_params)

        if @character.save
          render json: @character, status: :created, location: @character
        else
          render json: @character.errors, status: :unprocessable_entity
        end
      end

      def update
        if @character.update(character_params)
          render json: @character
        else
          render json: @character.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @character.destroy
      end

      private
        def set_character
          @character = Character.where(movie_serie_id: params[:movie_series_id]).find(params[:id])
        end

        def character_params
          params.require(:character).permit(:name, :image, :age, :movie_serie_id, :weight, :story)
        end
    end
  end
end