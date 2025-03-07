# frozen_string_literal: true

require "test_helper"
require "view_component/test_case"

class ListComponentTest < ViewComponent::TestCase
  def test_renders_slots_with_content
    render_inline(ListComponent.new) do |component|
      component.header { "A Test List" } 
    end
  end
end
