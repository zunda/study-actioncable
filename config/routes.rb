Rails.application.routes.draw do
  get 'rooms/show'
  root to: 'rooms/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
