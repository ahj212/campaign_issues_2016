class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :candidates, :issues do |t|
      # t.index [:candidate_id, :issue_id]
      # t.index [:issue_id, :candidate_id]
    end
  end
end
