class PagesController < ApplicationController
  def home
    @homepage = true
    @pages = Page.all
  end

  def kitchen_sink
  end
end
