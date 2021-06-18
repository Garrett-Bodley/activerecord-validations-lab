class TitleValidator < ActiveModel::Validator
  def validate(record)
    unless record.title.present? && record.title.match?(/Won't Believe|Secret|Top \d|Guess/)
      record.errors[:title] << "Title is not sufficiently clickbait-y!"
    end
  end
end