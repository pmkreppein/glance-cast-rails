Rails.application.routes.draw do
  get 'forecast/:latlong' => 'forecast#index', :constraints  => { :latlong => /.*/ }
  get 'cities' => 'forecast#city_list'
  root :to => "forecast#index", :latlong => '40.7128,-74.0060'
end
