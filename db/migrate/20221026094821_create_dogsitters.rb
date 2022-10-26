class CreateDogsitters < ActiveRecord::Migration[7.0]
  def change
    create_table :dogsitters do |t|

      t.timestamps
    end
  end
end
