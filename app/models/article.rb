class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  #validates :title, presence: true, length: { minimum: 5 }

  validate :title_must_have_5_chars

  def title_must_have_5_chars
    if title.length < 5
      errors.add(:title, " must have at least 5 characters")
    end
  end

end
