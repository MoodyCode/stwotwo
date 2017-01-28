Rails.application.routes.draw do
  devise_for :admins
  root to: 'static_pages#home'
end
