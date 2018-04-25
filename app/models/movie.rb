# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  title        :string
#  release_year :integer
#  description  :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Movie < ApplicationRecord
  has_and_belongs_to_many :actors
  has_and_belongs_to_many :users
end
