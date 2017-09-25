Rails.application.routes.draw do
  get 'home/index'
  get 'home/page1'
  get 'home/page2'  

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
