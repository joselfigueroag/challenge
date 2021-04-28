module Api
  module V1
    class MovieSeriesController < ApplicationController
      skip_before_action :authenticate, only: [:show, :index]
      before_action :set_movie_series, only: [:show, :update, :destroy]

      def index
        @movie_series = MovieSerie.all
      end

      def show
      end

      def create
        @movie_series = MovieSerie.new(movie_series_params)

        if @movie_series.save
          render json: @movie_series, status: :created, location: @movie_series
        else
          render json: @movie_series.errors, status: :unprocessable_entity
        end
      end

      def update
        if @movie_series.update(movie_series_params)
          render json: @movie_series
        else
          render json: @movie_series.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @movie_series.destroy
      end

      private
        def set_movie_series
          @movie_series = MovieSerie.find(params[:id])
        end

        def movie_series_params
          params.require(:movie_series).permit(:title, :image, :create_date, :gender, :qualification)
        end
    end
  end
end
