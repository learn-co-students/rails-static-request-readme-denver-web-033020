Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #http verb get
  # 'about' is the path
  # 'static#about' is telling the route to go through the static controller and the about method
  get 'about', to: 'static#about'
end
