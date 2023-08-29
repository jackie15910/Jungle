require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should save successfully with all four fields set' do
      category = Category.create(name: 'Test Category')
      product = Product.new(
        name: 'Test Product',
        price_cents: 1000,
        quantity: 5,
        category: category
      )
      expect(product.save).to be_truthy
    end

    it 'should not save without a name' do
      category = Category.create(name: 'Test Category')
      product = Product.new(
        price_cents: 1000,
        quantity: 5,
        category: category
      )
      expect(product.save).to be_falsy
      expect(product.errors.full_messages).to include("Name can't be blank")
    end

    it 'should not save without a price' do
      category = Category.create(name: 'Test Category')
      product = Product.new(
        name: 'Test Product',
        quantity: 5,
        category: category
      )
      expect(product.save).to be_falsy
      expect(product.errors.full_messages).to include("Price can't be blank")
    end

    it 'should not save without a quantity' do
      category = Category.create(name: 'Test Category')
      product = Product.new(
        name: 'Test Product',
        price_cents: 1000,
        category: category
      )
      expect(product.save).to be_falsy
      expect(product.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'should not save without a category' do
      product = Product.new(
        name: 'Test Product',
        price_cents: 1000,
        quantity: 5
      )
      expect(product.save).to be_falsy
      expect(product.errors.full_messages).to include("Category can't be blank")
    end
  end
end