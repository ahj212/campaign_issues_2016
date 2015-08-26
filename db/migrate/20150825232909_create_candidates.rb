class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :political_affiliation
      t.string :birth_date
      t.string :experience
      t.string :religion
      t.string :home_state
      t.string :total_raised
      t.text :summary
      t.text :img_url
    end
  end
end
