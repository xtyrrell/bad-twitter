class Beep < ApplicationRecord
  validates_presence_of :text
  default_scope { order(created_at: :desc) }

  after_create_commit -> {
    broadcast_prepend_to "beeps"
  }
end
