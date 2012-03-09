Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :ballets do
    resources :ballets, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :ballets, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :ballets, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
