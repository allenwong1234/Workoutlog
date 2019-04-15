class AccountsController < ApplicationController
    def new
    end
    
    def index
    end
    
    def create
        @account = Account.new(params[accounts_params])
        
        @account.save
        redirect_to @account
    end
end

private 
    def accounts_params
        params.require(:account).permit(:name, :email, :password, :gender, :dob, :feet, :inches, :weight)
    end
