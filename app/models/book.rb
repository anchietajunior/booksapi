class Book < ApplicationRecord
  validates :rating, inclusion: 0..5
  enum status: {
    available: 'available',
    checked_out: 'checked_out',
    reserverd: 'reserverd'
  }

  after_save :check_if_status_changed

  private

  def rating_present?
    rating.present?
  end

  def check_if_status_changed
    if saved_change_to_status? && status == "checked_out"
      pp 'This is going to call the job'
      BookStatusUpdateJob.perform_now
    end
  end
end
