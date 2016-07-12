class StaticController < ApplicationController
  def help
    render 'static/help'
  end

  def about
    render 'static/about'
  end

  def contact
    render 'static/contact'
  end
end
