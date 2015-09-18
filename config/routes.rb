Rails.application.routes.draw do
  get 'admin' => 'admin#index', as: 'admin'
  get 'contact' => 'messages#new', as: 'blog_contact'
  get 'about' => 'blog#about', as: 'blog_about'
  get 'article/show/:id' => 'blog#article', as: 'blog_article'
  
  scope :admin do 
    resources :articles do
      resources :comments, only: [:create, :destroy]
    end
    resources :users, only: [:index, :edit, :update, :destroy]
  end

  resources :messages

  devise_for :users
  root 'blog#index'
end
