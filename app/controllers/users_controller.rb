class UsersController < ApplicationController


    #List of Users
    def index #template mit HTML
        @users = User.all
    end
  
    #Individual User
    def show #Template
        @user = User.find(params[:id])
    end
  
    #Display for new record
    def new #Template
        @user = User.new
    end
  
    #Save new record
    def create #no Template
        @user = User.new(allowed_params)
        
        if @user.save #true, falls erfolgreich in DB gespeichert
            redirect_to users_path #Index
        else
            render "new"
        end
    end
  

  
    def edit #Template
        @user = User.find(params[:id]) #Nimm User aus Datenbank, mit gegebener Id
    end
  
    def update #no Template
        @user = User.find(params[:id])
        if @user.update(allowed_params) #update() statt update_attributes()
            redirect_to users_path #INdex
        else
            render "new"
        end
    end
  
    def destroy #no Template
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path #Index
    end

    private
        #Welche Daten sind sicher, alles andere wird ignoriert
        def allowed_params
            params.require(:user).permit(:name, :age)
        end

end
