class LogsController < ApplicationController
    def new
    end
    
    def create
        @log = Log.new(log_params)
        
        @log.save
        redirect_to @log
    end
    
    def show
        @log = Log.find(params[:id])
    end
    
end

private
    def log_params
        params.require(:log).permit(:date, :focus, :details)
    end
