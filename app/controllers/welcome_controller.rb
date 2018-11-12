class WelcomeController < ApplicationController
  before_action :require_login

  def index
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
