Rails.application.routes.draw do

  devise_for :users
  get '/' => 'homepage#index'

  root to: "homepage#index"

  get 'surveys' => 'surveys#index'

  resource :surveys, only: [:index, :new, :create]

end
