class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

 def avg_notes(subject_item)
    notes = subject_item_notes.select { |note| note.subject_item_id == subject_item.id  }
    notes.present? ? '%.2f' % (notes.sum(&:value).to_f / notes.length) : '0.00'	
 end

   
end
