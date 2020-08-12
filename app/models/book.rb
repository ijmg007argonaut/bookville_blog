class Book < ApplicationRecord
  #no blanks
  validates :title, :authorfirst, :authorlast, :pages, :isbn, :price, :description, presence: true
  #title validation
  validates :title, length: {minimum: 2, maximum: 40}, allow_blank: false, format: { with: /[a-zA-Z0-9_ ]{2,40}/,
  message: "For book title, numbers or letters only, 2 to 40 letters" }
  #author first name validation
  validates :authorfirst, length: {minimum: 2, maximum: 35}, allow_blank: false, format: { with: /[a-zA-Z_ ]{2,35}/,
  message: "For author's first name, enter letters only, 2 to 35 letters" }
  #author last name validation
  validates :authorlast, length: {minimum: 2, maximum: 40}, allow_blank: false, format: { with: /[a-zA-Z_ ]{2,35}/,
  message: "For author's last name, enter letters only, 2 to 35 letters" }
  #pages validation
  validates :pages, inclusion: 0...10001 #{ with: /[0-9]{1,4}/, message: "book total pages, enter numbers only, from 1 to 10000" }
  #isbn validation
  validates :isbn, format: { with: /[0-9]{3}[-\s\.][0-9]{1}[-\s\.][0-9]{2}[-\s\.][0-9]{6}[-\s\.][0-9]{1}/,
  message: "enter numbers only, like ###-#-##-######-#, Example: 978-3-16-148410-0" }
  #price validation
  validates :price, inclusion: 0...10001# { message: "For book price, enter price from 0 to 10000" }
  validates :price, format: {with:  /[0-9]{0,4}[0-9]{2}/, message: "For book price, enter price from 0 to 10000" }
end
