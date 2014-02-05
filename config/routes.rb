RegistrationClient::Application.routes.draw do

  post '/registrations' => "registrations#create"
end
