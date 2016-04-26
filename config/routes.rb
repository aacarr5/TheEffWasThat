Rails.application.routes.draw do

  get '/' => 'homepage#index'

  get 'surveys' => 'surveys#index'

  resource :surveys, only: [:index, :new, :create]

end
