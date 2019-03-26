module Api
  module V1
    class GifsController < ApplicationController
      def index
        pandas = Gif.all
        render json: {status: 'SUCCESS', message: 'Loaded GIFs', data: pandas}, status: :ok
      end

      def show
        panda = Gif.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded GIF', data: panda}, status: :ok
      end

      def update
        panda = Gif.find(params[:id])
        if panda.update(panda_params)
          render json: panda
        else
          render json: {status: 'ERROR', message: 'Panda not updated', data: panda.errors}, status: :unproccessable_entity
        end
      end

      private

      def panda_params
        params.permit(:name, :img_url, :music, :likes)
      end

    end
  end
end
