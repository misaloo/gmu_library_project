class Book < ActiveRecord::Base
  belongs_to :author
  validates :author, presence: true
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
  has_many :reservations, dependent: :destroy
  has_many :users, :through => :reservations

  def available_to_reserve
    available_to_reserve = self.total_in_library - self.reservations.size
  end

  def reserve_check?
    total_available = self.total_in_library - self.reservations.size
    total_available > 0
  end

  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['title LIKE ?  OR isbn LIKE ?', search_condition, search_condition])
  end

end
