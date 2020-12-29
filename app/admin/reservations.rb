ActiveAdmin.register Reservation do
  actions :index

  # 一覧ページの検索条件削除
  remove_filter :reservation

  # 一覧ページの検索条件指定
  filter :name
  filter :date
  filter :time
  filter :product_name
  filter :price
  filter :created_at
  filter :updated_at

    # 一覧ページ
    index do
      column :id
      column :date
      column :time
      column :user_id
      column :product_name
      column :created_at
  
      actions 
    end
  permit_params :date, :time, :user_id, :product_name
  # or
  #
  # permit_params do
  #   permitted = [:date, :time, :user_id, :product_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
