class AddTurnToRequests < ActiveRecord::Migration[6.0]
  def change
    add_reference :requests, :turn, null: false, foreign_key: true
  end
end
