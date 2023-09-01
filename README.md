# Jungle

Jungle is a mini e-commerce application built with Rails 6.1, designed to provide a practical example for learning Rails development.

## Table of Contents

- [Setup](#setup)
- [Database](#database)
- [Stripe Testing](#stripe-testing)
- [Features](#features)
- [Dependencies](#dependencies)
- [Contributing](#contributing)
- [License](#license)

## Setup

1. Install dependencies: Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Features

- User authentication and registration

- Product listings with details, images, and prices

- Shopping cart functionality for adding/removing products

- Order creation and tracking

- Product categories for easy navigation

- User-friendly UI with Bootstrap 5 integration


## Final Product
!["Main page"](/img/main.jpg)
!["Bottom of the main page"](/img/bottom.jpg)
!["Product page"](/img/productPage.jpg)
!["Login"](/img/login.jpg)
!["Signup"](/img/signup.jpg)
!["Admin login"](/img/adminLogin.jpg)
!["Admin page"](/img/adminDash.jpg)
![New products"](/img/newProduct.jpg)
![New category"](/img/newCategory.jpg)
!["My cart checkout"](/img/checkout.jpg)
!["Checkout success"](/img/checkoutSuccess.jpg)

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
