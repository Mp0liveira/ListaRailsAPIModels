Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1'do
      scope 'posts' do
        post 'create', to:'posts#create'
        patch 'update/:id', to:'posts#update'
        delete 'delete/:id', to:'posts#delete'
        post ':id/feedbacks/create', to: 'feedbacks#create'
        patch ':id/feedbacks/update/:id', to: 'feedbacks#update'
        delete ':id/feedbacks/delete/:id', to: 'feedbacks#delete'
        post ':id/commentaries/create', to: 'commentaries#create'
        patch ':id/commentaries/update/:id', to: 'commentaries#update'
        delete ':id/commentaries/delete/:id', to: 'commentaries#delete'
      end
      scope 'categories' do
        post 'create', to:'categories#create'
        patch 'update/:id', to:'categories#update'
        delete 'delete/:id', to:'categories#delete'
      end
    end
  end  
end
