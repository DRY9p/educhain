# frozen_string_literal: true

require "test_helper"
require "view_component/test_case"

class CourseComponentTest < ViewComponent::TestCase
  def test_component_renders_all_children
    course = Course.create!(title:"some title", price_cents:4000, location:'London')
    render_inline(CourseComponent.new(item: course, notice: 'A new test', item_counter: 1))
    assert_selector("h2", text: "1) some title")
    assert_selector("h4", text: "40,00 ₽")
    assert_selector("h4", text: "London")
    assert_text("enrollees")
  end
end
