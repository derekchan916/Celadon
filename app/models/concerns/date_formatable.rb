module DateFormatable
  extend ActiveSupport::Concern

  def created_at
    super.strftime("%A, %B %d, %I:%M %p")
  end

  def updated_at
    super.strftime("%A, %B %d, %I:%M %p")
  end
end
