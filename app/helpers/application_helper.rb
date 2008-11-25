# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def link_to_name obj, method = nil
    return '' if obj.nil?
    unless method
      link_to obj.name, obj, :class => "name #{obj.class.name.downcase}"
    else
      link_to obj.send(method), obj, :class => obj.class.name.downcase
    end
  end
end
