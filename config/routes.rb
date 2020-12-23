Rails.application.routes.draw do

  resources :alunos
  resources :cursos
  resources :professores
  root to: "professores#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
