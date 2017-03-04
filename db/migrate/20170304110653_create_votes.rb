class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.datetime :received
      t.string :campaign
      t.string :validity
      t.string :choice

      t.timestamps
    end
  end
end
