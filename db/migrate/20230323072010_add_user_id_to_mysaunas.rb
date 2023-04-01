class AddUserIdToMysaunas < ActiveRecord::Migration[6.0]
  def change
    add_reference :mysaunas, :user, null: false, foreign_key: true
  end
end
