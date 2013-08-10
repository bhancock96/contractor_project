class User < ActiveRecord::Base

  
  include BCrypt

    def password
      @password ||= Password.new(password_hash)
    end

    def password=(new_password)
      @password = Password.create(new_password)
      self.password_hash = @password
    end

    def self.login(params) 
      @user = User.find_by_email(params[:user][:email])
      if @user.password == params[:user][:password]
        @user
        # session[:user_id] = @user.id
      else
        redirect '/' 
      end
    end
end
