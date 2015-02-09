class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :description
      t.date :date
      t.boolean :required_id
    end
  end
end
