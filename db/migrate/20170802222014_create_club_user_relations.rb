class CreateClubUserRelations < ActiveRecord::Migration[5.1]
  def change
    create_table :club_user_relations do |t|
      t.references :sportclub, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
