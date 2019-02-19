Rails.application.routes.draw do
  get 'forecast/:latlong' => 'forecasts#index', :constraints  => { :latlong => /.*/ }
end
