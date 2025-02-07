class Schedule < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20}
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :memo, length: { maximum: 500 }
  
  private
  def end_at_after_start_at
    return if start_at.blank? || end_at.blank?
    
    if end_at.before?(start_at)
      errors.add(:end_at, "には開始日以降の日付を選択してください")
    end
  end
  
  validate :end_at_after_start_at

end



