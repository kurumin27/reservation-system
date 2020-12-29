ActiveAdmin.register AdminUser do
  actions :index

  index do
    selectable_column
    id_column
    column :email
    column :created_at
    column :updated_at
    column :remember_created_at
    actions
  end

  filter :email
  filter :created_at


  permit_params :email, :password, :password_confirmation
end
