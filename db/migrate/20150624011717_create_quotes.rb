class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|

    	t.string :player
    	t.string :team

      t.timestamps
    end
  end
end
