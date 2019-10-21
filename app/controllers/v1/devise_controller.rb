module V1
  class DeviseController < ApplicationController
    before_action :use_default_response_format

    respond_to :json

    def respond_with(resource, _opts = {})
      render json: resource, status: http_status_for(resource)
    end

    private

    def http_status_for(resource)
      resource.valid? ? :created : :unprocessable_entity
    end

    def use_default_response_format
      request.format = :json
    end
  end
end
