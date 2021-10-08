Rails.application.routes.draw do


  devise_for :accounts
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "public#homepage"

  get "about", to: "public#about", as: :about
  get "blog", to: "public#blog", as: :blog
  get "contact", to: "public#contact", as: :contact
  post "post/view", to: "posts#save_post_view", as: :post_view

end
