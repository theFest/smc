Rails.application.routes.draw do
  get 'welcome/index' ## our default rouce for now.
  root 'welcome#index' ## reason, so we can have this route in root path.
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
