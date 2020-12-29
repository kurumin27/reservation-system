unless AdminUser.find_by(email: 'admin@example.com')
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
end
Product.create!(
  [
    {
      product_name: 'リンパ美容整体<2時間コース>',
      price: '17000'
    },
    {
      product_name: '肌再生<90分コース>',
      price: '11500'
    },
    {
      product_name: '美肌+リフトアップ<2時間コース>',
      price: '16500'
    }
  ]
)
