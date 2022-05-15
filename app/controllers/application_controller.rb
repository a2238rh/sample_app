class ApplicationController < ActionController::Base
  include SessionsHelper

  def hello
    render html: "hello, world!"
  end

  # ログイン済みユーザーかどうか確認
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
