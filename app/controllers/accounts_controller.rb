class AccountsController < ApplicationController
    def new
    end
    
    def create  
        @account = Account.new(params[:account])
        
        @account.save
        redirect_to @account
    end
end

private 
    def account_params
        params.require(:account).permit(:name, :email, :password, :gender, :dob, :height, :weight)
    end
