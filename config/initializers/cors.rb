# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3001' # フロントエンドのURLを指定
  
      resource '*',
        headers: :any,
        methods: [:get, :post, :patch, :put, :delete, :options, :head],
        credentials: true
    end
  end
  