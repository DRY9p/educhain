module CoursesHelper
  def count_enrollees(course)
    count = (course.price_cents / 4).round
    tag.p "#{count} enrollees so far"
  end

  def star_icon
    image_tag("/assets/star.png", width: "100%")
  end
end
