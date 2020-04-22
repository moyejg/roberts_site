class SiteController < ApplicationController
  def home
    @listserv = Listserv.new
    @listservs = Listserv.all
  end

  def about
  end

  def music
  end

  def events
  end

  def contact
  end
end
