Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  post("/insert_item", { :controller => "backdoor", :action => "create"})

  get("/backdoor", { :controller => "backdoor", :action => "enter"})

  
end
