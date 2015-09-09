class Venue < ActiveRecord::Base
  validates :name, presence:true, uniqueness: true
  validates :address, presence:true

  def hello
    if name.present?
      "Hola"
    else
      "Chao"
    end
  end
end
