Rails.application.routes.draw do
  resources :entities
  Entity.types.each do |pi_type|
    resources (pi_type.underscore.downcase.pluralize.to_sym),controller: 'entities',type: pi_type
  end
  get 'main/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'main#index'
end
