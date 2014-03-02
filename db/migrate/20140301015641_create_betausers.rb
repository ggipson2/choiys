class CreateBetausers < ActiveRecord::Migration
  def change
    create_table :betausers do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
