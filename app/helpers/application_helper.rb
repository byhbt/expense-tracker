module ApplicationHelper
  def is_active_nav_item?(current_path)
    'active' if request.path == current_path
  end
end
