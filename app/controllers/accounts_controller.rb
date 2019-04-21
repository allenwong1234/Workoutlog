class AccountsController < ApplicationController
    def show
        @account = Account.find(params[:id])
    end
    
    def new
        @account = Account.new
    end

    def create
        @account = Account.new(accounts_params)
            
        @account.save
        redirect_to @account 
    end
end

private 
    def accounts_params
        params.require(:account).permit(:name, :email, :password, :gender, :dob, :feet, :inches, :weight)
    end