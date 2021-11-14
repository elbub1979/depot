require 'active_merchant/billing/rails'
credit_card = ActiveMerchant::Billing::CreditCard.new(
  number: '5164730002820200',
  month: '12',
  year: '2022',
  first_name: 'Ilya',
  last_name: 'Leushkin',
  verification_value: '100'
)
puts "Действительна ли карта #{credit_card.number}? #{credit_card.valid?}"
