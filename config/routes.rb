Rails.application.routes.draw do
  root to: "business_applications#index"

  get 'business_applications/allapprovedapplications', to: "business_applications#allapprovedapplications", approved: true

  resources :business_applications
end
