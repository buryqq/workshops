class Teacher < ActiveRecord::Base
  TITLES = %w(Dr. Prof. TA)
  has_many :subject_items, dependent: :nullify
  has_many :subject_item_notes, dependent: :destroy
  has_many :subject_items, dependent: :destroy

  validates :first_name, :last_name, presence: true
  validates :academic_title, inclusion: { in: TITLES }, presence: true

  accepts_nested_attributes_for :subject_items
end
