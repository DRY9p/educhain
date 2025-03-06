require 'faker'

# Очистка данных внесенных для проверки атрибутов модели Course
Course.destroy_all

random_price = rand(9000..100000)

100.times do
  Course.create!(
    title: Faker::Educator.course_name,
    price_cents: Money.from_amount(random_price),
    location: Faker::Address.street_address
  )
end
