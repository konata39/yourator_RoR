Rails.application.routes.draw do
  resources :db_jobs
  resources :tests
  resources :db_companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
  get "job" => 'home#job'
  get "company" => 'home#company'
  get "job_info" => 'home#job_info'
  get "company_info" => 'home#company_info'
  get "job_edit" => 'home#job_edit'
  get "company_edit" => 'home#company_edit'
  get "all_job_edit" => 'home#all_job_edit'
  get "execute_state" => "home#state_execution"
  get "execute_delete" => "home#delete_execution"
  post "execute_job" => "home#job_execution"
end
