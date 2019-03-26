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
    end
  end
end
