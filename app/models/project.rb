class Project < ApplicationRecord
  has_many :project_project_tags
  has_many :project_tags, through: :project_project_tags
  accepts_nested_attributes_for :project_project_tags, allow_destroy: true, reject_if: :all_blank
end
