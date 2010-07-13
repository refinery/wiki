ActionController::Routing::Routes.draw do |map|
  map.resources :wiki

  map.namespace(:admin, :path_prefix => 'refinery') do |admin|
    admin.resources :wiki, :collection => {:update_positions => :post}
  end
end
