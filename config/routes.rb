Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #devise_for :users, :controllers => { :registrations => "users", sessions: "users/sessions" }

  # unauthenticated :user do
  #   root :to => 'monitoring/projects#index', :constraints => lambda { |request| request.env['warden'].user.nil? }, as: :unauthenticated_root
  # end

  # root :to => 'monitoring/projects#index', :constraints => lambda { |request| request.env['warden'].user.role == 'monitoring_officer' if request.env['warden'].user }, as: :monitoring_root
  # root :to => 'monitoring/projects#index', :constraints => lambda { |request| request.env['warden'].user.role == 'project_engineer' || 'project_manager' if request.env['warden'].user }, as: :projects_root
  # root :to => 'accounting#index', :constraints => lambda { |request| request.env['warden'].user.role == 'accounting_officer' if request.env['warden'].user }, as: :accounting_root
  # root :to => 'supplies#index', :constraints => lambda { |request| request.env['warden'].user.role == 'supply_officer' if request.env['warden'].user }, as: :supply_root
end
