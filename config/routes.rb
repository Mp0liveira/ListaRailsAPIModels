Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1'do
      scope 'commentary' do
        post 'create', to:'commentary#create'
      end
    end
  end  
end
