require 'database_cleaner/active_record'
DatabaseCleaner.strategy = :truncation

return unless Rails.env.test?

CypressRails.hooks.before_server_start do
  cat1 = Category.find_or_create_by!(name: 'Evergreens')

  cat1.products.create!(
    name: 'Giant Tea',
    description: 'The Giant Tea is an uncommon...',
    image: open_asset('plante_1.jpg'),
    quantity: 0,
    price: 64.99
  )

  cat1.products.create!(
    name: 'Scented Blade',
    description: 'The Scented Blade is an extremely rare...',
    image: open_asset('plante_2.jpg'),
    quantity: 18,
    price: 24.99
  )
end

CypressRails.hooks.after_transaction_start do
  # Called after the transaction is started (at launch and after each reset)
end

CypressRails.hooks.after_state_reset do
  # Triggered after `/cypress_rails_reset_state` is called
end

CypressRails.hooks.before_server_stop do
  # Called once, at_exit
end

private

def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end