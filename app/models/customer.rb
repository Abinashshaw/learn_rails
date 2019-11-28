class Customer < ApplicationRecord
  def self.search(search)
    if search
      where (["name like ?","%#{search}%"])
      where (["email like ?", "%#{search}%"])
    else
      all
    end
  end

  validates :name, presence: true, uniqueness: {case_sensitive: false}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: {case_sensitive: false},
                    format: {with: VALID_EMAIL_REGEX}
end
