class Pessoafisica::PessoafisicaController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_client!


end

