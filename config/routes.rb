Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1'do
      scope 'posts' do
        post 'create', to:'posts#create'
        patch 'update/:id', to:'posts#update'
        delete 'delete/:id', to:'posts#delete'
      end
      scope 'categories' do
        post 'create', to:'categories#create'
        patch 'update/:id', to:'categories#update'
        delete 'delete/:id', to:'categories#delete'
      end
    end
  end  
end
