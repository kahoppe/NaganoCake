class Item < ApplicationRecord

  belongs_to :genre

  attachment :image

  enum is_active: { 販売中: true, 販売停止中: false}

end
