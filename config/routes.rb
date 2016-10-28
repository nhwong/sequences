Rails.application.routes.draw do
  get("/", :controller=>"puzzle", :action=>"guess")
  get("/all_guesses", :controller=>"puzzle", :action=>"guess")
  get('/clear_guesses', :controller=>"puzzle", :action=>"clear_guesses")
  get("/show_answer", :controller=>"puzzle", :action=>"show_answer")
end
