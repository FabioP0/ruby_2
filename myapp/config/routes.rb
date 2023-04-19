Rails.application.routes.draw do
  resources :clientes do 
    resources :articulos, module: :clientes
  end
end
