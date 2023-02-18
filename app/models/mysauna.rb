class Mysauna < ApplicationRecord
  validates :title          , presence: true
  validates :address        , presence: true
  validates :prefecture_id  , presence: true
  validates :customer_id    , presence: true
  validates :star_id        , presence: true
  validates :price          , presence: true
  validates :review         , presence: true
end
