class Book < ApplicationRecord
  before_save { |book| book.popularity = calculate_populartity }

private
   def calculate_populartity
    if number_sold > 5
       'high'
    else
       'low'
    end
  end
end
