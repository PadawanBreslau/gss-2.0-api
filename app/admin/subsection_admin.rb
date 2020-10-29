Trestle.resource(:subsection) do
  menu do
    item :subsections, icon: 'fa fa-star'
  end

  form do |_subsection|
    text_field :start
    text_field :finish
    text_area :description
    number_field :section_order
    number_field :length, label: 'Lenght in km'
    number_field :ascent, label: 'Ascent in m'
    number_field :descent, label: 'Descent in m'
    select :track_color, Subsection.track_colors.keys.map { |color| [color.humanize, color] }
    select :section_id, Section.all.map { |section| [section.title, section.id] }, label: 'Section'
  end
end
