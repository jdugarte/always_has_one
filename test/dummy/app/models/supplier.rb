class Supplier < ActiveRecord::Base

  always_has_one :account

end
