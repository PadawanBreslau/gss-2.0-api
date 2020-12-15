class Section < ApplicationRecord
  default_scope { order(order: :asc) }
  has_many :subsections
  has_many :locations, through: :subsections
  has_many :utilities, through: :subsections
  has_many :trivia, as: :triviable
  has_many :images, as: :imagable
  validates :start, :finish, :order, :variation, presence: true
  validates :order, uniqueness: { scope: [:variation] }

  enum variation: [:main, :first_alternative, :second_alternative]
  store :information, accessors: [:length, :total_length, :ascent, :descent]

  def title
    "#{start} - #{finish}"
  end

  def recalculate_information
    reload
    information =
      {
        length: length_calculation,
        total_length: (total_length_calculation.to_f + length_calculation.to_f).round(1),
        ascent: ascent_calculation,
        descent: descent_calculation
      }
    update(information: information)
  end

  private

  def length_calculation
    subsections&.sum { |subs| subs.length.to_f }
  end

  def total_length_calculation
    Section.where(variation: variation).where('sections.order < ?', order)
           .map(&:length).inject(:+)&.round(1)
  end

  def ascent_calculation
    subsections&.sum { |subs| subs.ascent.to_i }
  end

  def descent_calculation
    subsections&.sum { |subs| subs.descent.to_i }
  end
end
