ActiveAdmin.register Product do
  actions :index
  
  # 一覧ページの検索条件削除
  remove_filter :reservation

  # 一覧ページの検索条件指定
  filter :product_name
  filter :price
  filter :created_at
  filter :updated_at

  # 一覧ページ
  index do
    column :id
    column :product_name
    column :price
    column :created_at

    actions 
  end

  permit_params :date, :time, :user_id, :product_name
  # or
  # permit_params do
  #   permitted = [:product_name, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
