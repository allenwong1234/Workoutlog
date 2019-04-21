class LogsController < ApplicationController
    def new
    end
    
    def create
        render plain: params[:log].inspect
    end
    
    def show
    end
    
    
end
