Rails.application.routes.draw do
  get 'diaries/index'
  get 'diaries/show'
  get 'diaries/new'
  get 'diaries/edit'
  root to: 'home#top'
  devise_for :users
  resource :user, except: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
