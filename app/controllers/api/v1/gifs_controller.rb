# class Api::V1::GifsController < ApplicationController
#   def index
#
#   end
# end

module Api
  module V1
    class GifsController < ApplicationController
      def index
        pandas = Gif.all
        render json: {status: 'SUCCESS', message: 'Loaded GIFs', data: pandas}, status: :ok
      end
    end
  end
end
