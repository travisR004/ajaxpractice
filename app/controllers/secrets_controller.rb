class SecretsController < ApplicationController

  def new
    @user_id = params[:user_id]
  end

  def create
    @secret = current_user.authored_secrets.new(secret_params)

    if @secret.save
      p "Hello"
      head :ok
    else
      head :unprocessable_entity
    end
  end

  private
  def secret_params
    params.require('secret').permit(:title, :recipient_id, :tag_ids => [])
  end
end
