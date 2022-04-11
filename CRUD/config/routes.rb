Rails.application.routes.draw do
  root "employee_infos#index"

  get '/employee_infos/new', to: 'employee_infos#new'
  post '/employee_infos/new', to: 'employee_infos#create'

 
  post '/employee_infos/:id/edit', to: 'employee_infos#update'
  

  delete '/employee_infos/:id', to: 'employee_infos#deleting'
  get '/employee_infos/:id' ,to: 'employee_infos#deleting'

  get '/employee_infos/:id/show', to: 'employee_infos#show'
  
  resources:employee_infos
end
