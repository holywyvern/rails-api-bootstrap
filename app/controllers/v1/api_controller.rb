module V1
  class ApiController < ApplicationController
    include Pundit

    before_action :authenticate_user!
  end
end
