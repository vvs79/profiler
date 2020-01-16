module Api::V1
  class DataController < ApplicationController

    def calculate
      create_users if params[:data]
      render json: true
    end

    private

    def create_users
      id = User.count > 0 ? User.last.id + 1 : 1
      params[:data].to_i.times { |i| User.create(email: "mail#{id + i}@testmail.com", age: rand(100)) }
    end
  end
end
