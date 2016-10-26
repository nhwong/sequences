Rails.application.routes.draw do
  get("/all_guesses", :controller=>"puzzle", :action=>"guess")
  get("/show_answer", :controller=>"puzzle", :action=>"show_answer")
end
