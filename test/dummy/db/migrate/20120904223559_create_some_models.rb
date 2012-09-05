class CreateSomeModels < ActiveRecord::Migration
  def change
    create_table :some_models do |t|
      t.string :somedata1
      t.string :somedata2

      t.timestamps
    end
  end
end
