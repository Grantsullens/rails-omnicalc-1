Rails.application.routes.draw do
  get("/", {:controller => "main", :action => "home"})
  get("/square/:type", {:controller => "main", :action => "square"})
  get("/square_root/:type", {:controller => "main", :action => "square_root"})
  get("/payment/:type", {:controller => "main", :action => "payment"})
  get("/random/:type", {:controller => "main", :action => "random"})
end
