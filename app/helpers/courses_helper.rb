module CoursesHelper
  def to_default_currency
    Money.new(@course.price_cents)
  end
end
