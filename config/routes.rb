Rails.application.routes.draw do
  get 'forecast/:latlong' => 'forecast#index', :constraints  => { :latlong => /.*/ }
end
