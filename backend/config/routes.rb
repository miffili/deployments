Rails.application.routes.draw do
  post '/graphql', to: 'graphql#execute'

  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: 'graphql#execute' if Rails.env.development?
end
