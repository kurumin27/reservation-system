ActiveAdmin.register Reservation do
  actions :index

  # 一覧ページの検索条件削除
  remove_filter :reservation

  # 一覧ページの検索条件指定
  filter :name
  filter :datetime
  filter :product_name
  filter :price
  filter :created_at
  filter :updated_at

  # 一覧ページ
  index do
      column :id
      column :datetime
      column '商品ID' do |product|
        link_to product.product_id, admin_products_path(:product)
      end
      column 'ユーザーID' do |user|
        link_to user.user_id, admin_products_path(:user)
      end
      column :created_at
    actions

  end
end
  # controller do
  #   def index
  #    @reservation = Reservation.find(params[:id])
  #   end
  # end
  