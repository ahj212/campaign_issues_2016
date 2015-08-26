class CreateCandidateIssues < ActiveRecord::Migration
  def change
    create_table :candidate_issues do |t|
      t.belongs_to :candidate, index: true
      t.belongs_to :issue, index: true
      t.text :position, array: true, default: []
      t.text :source, array: true, default: []
    end
  end
end
