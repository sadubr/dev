module Revendedor::RevendedorHelper

  def link_to_new(model, url, html_options = {})
    link_to t("new", :model => model.model_name.human), url, html_options
  end

  def link_to_edit(url, html_options = {})
    html_options.reverse_merge!(:class => "green")
    link_to ("edit"), url, html_options
  end

  def link_to_destroy(url, html_options = {})
    html_options.reverse_merge!(:confirm => ('confirm'), :method => :delete, :class => "red")
    link_to ("destroy"), url, html_options
  end



end

