module Api
  class UsersController < ApplicationController
    def show
      render json: UserSerializer.new(User.find(params[:id])).to_json
    end

    def index
      render json: User.all
    end
  end
end
