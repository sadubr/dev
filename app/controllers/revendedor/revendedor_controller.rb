class Revendedor::RevendedorController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_client!


end

