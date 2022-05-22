# == Schema Information
#
# Table name: characters
#
#  id          :bigint           not null, primary key
#  description :string
#  name        :string           not null
#  quote       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#
# Indexes
#
#  index_characters_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Character < ApplicationRecord
  belongs_to :user
  validates_presence_of :name

  def get_description
    return self.description if self.description

    "A mysterious character from a long lost story"
  end
end
