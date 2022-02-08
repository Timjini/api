class StaticController < ApplicationController
    def home 
        render json: { status: "it's an API"}
    end
end
