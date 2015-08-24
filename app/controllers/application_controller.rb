class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :call_categories


  def call_categories
  	@categories = Category.all
  end
end
