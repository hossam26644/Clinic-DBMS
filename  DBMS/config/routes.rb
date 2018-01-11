Rails.application.routes.draw do
  root 'home#homepage'

  get 'home/homepage'

  get 'home/homedoctor'

  get 'home/homepatient'

  resources :fees
  resources :prescreptions
  resources :histories
  resources :appointments
  resources :patients
  get 'fees/pay/:fee', to: 'fees#pay'
  #get '/patients/:id', to: 'patients#show', as: 'patient'

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
