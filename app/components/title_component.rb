# frozen_string_literal: true

class TitleComponent < ViewComponent::Base
  def initilize(title:)
    @title = title
  end
end
