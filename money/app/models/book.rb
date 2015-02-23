class Book < ActiveRecord::Base
  include Payola::Sellable
end
