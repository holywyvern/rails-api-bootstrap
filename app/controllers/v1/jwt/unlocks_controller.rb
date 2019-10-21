module V1
  module Jwt
    class UnlocksController < Devise::UnlocksController
      respond_to :json

      def new
        render json: nil, status: :not_found
      end
    end
  end
end
