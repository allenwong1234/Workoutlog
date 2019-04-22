class AccountsController < ApplicationController
    def index
        @account = Account.all
    end
    
    def new
        @account = Account.new
    end
    
    def create
        @account = Account.new(accounts_params)
        
        if @account.save
            redirect_to @account
        else
            render 'new'
        end
    end
    
    def edit
        @account = Account.find(params[:id])
    end
    
    def update
        @account = Account.find(params[:id])
        if @account.update(accounts_params)
            redirect_to @account
        else
            render 'edit'
        end
    end
    
    def destroy
        @account = Account.find(params[:id])
        @account.destroy
        
        redirect_to accounts_path
    end
        
    def show
        @account = Account.find(params[:id])
    end
end

private 
    def accounts_params
        params.require(:account).permit(:name, :email, :password, :gender, :dob, :feet, :inches, :weight)
    end