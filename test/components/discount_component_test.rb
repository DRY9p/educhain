# frozen_string_literal: true

require "test_helper"
require "view_component/test_case"
class DiscountComponentTest < ViewComponent::TestCase
  # def test_render_component
  #   render_inline(DiscountComponent.new(item: "my item"))
  # end

  # Создаем курс с валидными атрибутами
  def test_render_component
    course = Course.create!(title: 'Organizing your Time', price_cents: 15500, location: 'London')
    render_inline(DiscountComponent.new(item: course))
    assert_selector 'p[class="green"]'
    assert_text "10% discount"
  end

  def test_component_not_rendered
    course = Course.create!(title: 'Organizing your Time', price_cents: 155, location: 'London')
    render_inline(DiscountComponent.new(item: course))
    refute_component_rendered
  end
end
