class ProjectProjectTag < ApplicationRecord
  belongs_to :project
  belongs_to :project_tag
end
