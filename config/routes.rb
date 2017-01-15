# coding: utf-8
Rails.application.routes.draw do
  get 'admin/index'

  get 'home/index'

  # devise_for :users
  devise_for :users, controllers: {
               omniauth_callbacks: "users/omniauth_callbacks"
             }
  devise_scope :user do
    get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session
    get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  resources :games, only: [:index, :show] do
    get 'data', :on => :member
    get 'characters', :on => :member
    get 'about', :on => :member
    get 'events', :on => :member
  end

  root to: 'home#index'
end
