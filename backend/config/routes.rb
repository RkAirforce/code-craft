Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }
      resources :top, only: [:index]
      resources :admin do
        get :users, on: :collection
        get :posts, on: :collection
        get :comments, on: :collection
        get :events, on: :collection
        get :event_comments, on: :collection
        get :tags, on: :collection
      end
      resource :passwords, only: [:update]
      resources :relationships, param: 'follow_id', only: %i[create destroy]
      resources :posts, except: [:new]
      resources :events, only: %i[show create update destroy]
      resources :health_check, only: [:index]
      resources :event_comments, only: %i[create destroy]
      resources :tags, only: %i[show create destroy] do
        delete :delete_tag
      end
      resources :join_events, only: %i[create destroy]
      resources :likes, only: %i[create destroy]
      resources :comments, only: %i[create destroy]
      resources :users, except: [:edit] do
        get :current_user, action: :login_user, on: :collection
      end
      resources :search do
        get :users, on: :collection
        get :posts, on: :collection
        get :events, on: :collection
        get :tags, on: :collection
      end
      # ログイン・ログアウト処理
      resources :user_token, only: [:create] do
        delete :destroy, on: :collection
      end
    end
  end
end
