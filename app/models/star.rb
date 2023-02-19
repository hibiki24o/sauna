class Star < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '20歳〜25歳' },
    { id: 3, name: '25歳〜30歳' },
    { id: 4, name: '30歳〜35歳' },
    { id: 5, name: '35歳〜40歳' },
    { id: 10, name: '40歳〜50歳' }
  ]

  include ActiveHash::Associations
  has_many :mysauna
  
  end