Rails.application.routes.draw do
  root to: redirect('/posts')
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :posts
end
