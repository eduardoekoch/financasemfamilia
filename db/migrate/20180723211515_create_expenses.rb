class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.string :date
      t.string :description
      t.string :type
      t.string :value

      t.timestamps
    end
  end
end
