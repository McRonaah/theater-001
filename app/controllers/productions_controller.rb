class ProductionsController < ApplicationController
    def index
        render json:Production.all,status: :ok
    end
    def show
    byebug
        production = Production.find_by(id:params[:id])
        if production
            render json:production,status: :okay
        else
            render json: {error:"production not found"}, status: :not_found
        end
    end
end
