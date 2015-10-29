Spree::BaseController.class_eval do 
  def check_logged_in
    unless spree_current_user.has_spree_role?("admin")
      redirect_to spree_login_path
    end 
  end 
end