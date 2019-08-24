class UsersController < ApplicationController
  
  def show 
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      #success
      log_in @user
      flash[:success] = "よっしゃぁ！GAMERESへの登録完了しました！！"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  private
# strong_parameters
    def user_params
     params.require(:user).permit(:name , :email, :password, :password_confirmation)
    end
  
end
