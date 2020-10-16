#application_controller.rbファイルは全てのコントローラーで共通となる処理を作ることができる。

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  #デバイスのコントローラーの処理を行う場合に

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  #sign_up時にemailとpassword以外の値も保存できるように追記する
  end
end
