class Todo < ApplicationRecord
  def formatted_deadline
    if deadline != nil
      return deadline.strftime("%b %e, %l:%M %p")
    end
  end
end
