class Book < ActiveRecord::Base
  GENRES = ["Sci-Fi", "History", "Biographies"]
  validates :title, :author_id, :abstract, :total_in_library, :genre, :published_on, presence: true
  validates :pages,
     numericality: { only_integer: true, greater_than_or_equal_to: 0 },
     unless: "pages.blank?"
  validates :total_in_library, 
    numericality: { greater_than_or_equal_to: 0 },
    if: "total_in_library.present?"
  validates :abstract, length: { minimum: 15 }
  validates :genre, inclusion: { in: GENRES,
    message: "%{value} is not a valid genre." },
    unless: "genre.blank?"
end
