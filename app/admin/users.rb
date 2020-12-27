ActiveAdmin.register User do

  # has_many :reservations
  permit_params :name, :telephone, :email, :encrypted_password
  # controller do
  #   def update
  #     User.find(user_params)
  #     redirect_to admin_root_path
  #   end
  #   private
  #   def user_params
  #     params.require(:user).permit(:name, :telephone, :password)
  #   end
  # or
  # permit_params do
  #   permitted = [:name, :telephone, :email, :encrypted_password, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
