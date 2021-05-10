Rails.application.routes.draw do
  get "/query_params" => "my_params#query_params"

  get "/url_params/:your_name" => "my_params#url_params"

  get "/url_params_goodbye/:goodbye_name" => "my_params#url_params_goodbye"

  post "/body_params_login" => "my_params#body_params_login"
end
