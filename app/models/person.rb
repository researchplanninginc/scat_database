class Person < ActiveRecord::Base


  has_many :surveys , :class_name => "People", :foreign_key => "surv_per1"

  def full_name
     "#{last_name} #{first_name}"
  end

  def self.to_csv
    attributes = %w{person_id last_name first_name org}
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |people|
        csv << people.attributes.values_at(*attributes)
      end
    end
  end

end
