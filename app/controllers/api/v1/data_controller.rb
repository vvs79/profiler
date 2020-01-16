module Api::V1
  class DataController < ApplicationController

    def calculate
      params[:data].to_i.times { print '.'; sleep 1 } if params[:data]
      render json: true
    end
  end
end
