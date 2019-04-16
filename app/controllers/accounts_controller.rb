class AccountsController < ApplicationController
    def new
        @account = Account.new
    end
    
    def index
        @account = Account.all
    end
    
    def show
        @account = Account.find(params[:id])
    end 
    
    def create
        @account = Account.new(params[accounts_params])
        
        if @account.save
            redirect_to @account 
        else
            render 'new'
        end 
    end
end

private 
    def accounts_params
        params.require(:account).permit(:name, :email, :password, :gender, :dob, :feet, :inches, :weight)
    end
