class ProjectTag < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_many :project_project_tags
  has_many :projects, through: :project_project_tags


  class ProjectTagType < ActiveHash::Base
    # include ActiveHash::Enum
    self.data = [
      {id: 1, name: 'レディース'},
      {id: 2, name: 'メンズ'},
      {id: 3, name: 'キッズ'},
    ]
  end
end
