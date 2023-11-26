class Todo < ApplicationRecord
  def formatted_deadline
    return deadline.strftime("%b %e, %l:%M %p")
  end

end
