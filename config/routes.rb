Rails.application.routes.draw do |map|

  mount_at = Rationalize::Engine.config.mount_at

  match mount_at => 'rationalize/translations#index'

  map.resources :translations, :only => [ :index, :create ],
                          :controller => "rationalize/translations",
                          :path_prefix => mount_at,
                          :name_prefix => "rationalize_"

end
