class WelcomeController < ApplicationController
  skip_before_action :authorized
  def home
    render "home"
  end
end
