ActiveAdmin.register User do
  actions :index
  
  # 一覧ページの検索条件削除
  remove_filter :reservation

  # 一覧ページの検索条件指定
  filter :name
  filter :telephone
  filter :email  
  filter :created_at
  filter :updated_at

  # 一覧ページ
  index do
    column :id
    column :name
    column :email
    column :telephone
    column :created_at

    actions 
  end
  # or
  # permit_params do
  #   permitted = [:name, :telephone, :email, :encrypted_password, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
