class CreateProjectProjectTags < ActiveRecord::Migration[5.2]
  def change
    create_table :project_project_tags do |t|
      t.references :project, foreign_key: true
      t.references :project_tag, foreign_key: true

      t.timestamps
    end
  end
end
