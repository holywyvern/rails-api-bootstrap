module V1
  module Jwt
    class PasswordsController < Devise::PasswordsController
      respond_to :json

      def new
        render json: nil, status: :not_found
      end
    end
  end
end
