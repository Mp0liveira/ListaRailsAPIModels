Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1'do
      scope 'posts' do
        post 'create', to:'posts#create'
        patch 'update/:id', to:'posts#update'
      end
    end
  end  
end
