Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", {:controller => "directors", :action => "index" })
  get("/directors/eldest", {:controller => "directors", :action => "director_eldest"})
  get("/directors/:director_id", {:controller => "directors", :action => "director_details"})



  get("/actors", {:controller => "actors", :action => "index" })
  get("/characters", {:controller => "characters", :action => "index" })
  get("/movies", {:controller => "movies", :action => "index" })

  
end
