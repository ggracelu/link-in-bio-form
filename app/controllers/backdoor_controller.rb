class BackdoorController < ApplicationController
  def enter
    render({ :template => "item_templates/backdoor_form"})
  end

  def create
    i = Item.new
    i.link_url = params.fetch("query_link_url")
    i.link_description = params.fetch("query_link_description")
    i.thumbnail_url = params.fetch("query_thumbnail_url")
    i.save
    redirect_to("/")
    #render({ :template => "item_templates/create"})
  end
end
