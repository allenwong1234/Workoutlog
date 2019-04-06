class AccountsController < ApplicationController
    def new
    end
    
    def create  
        render plain: params[:account].inspect
    end
end
