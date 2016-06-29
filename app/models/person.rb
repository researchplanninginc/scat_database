class Person < ActiveRecord::Base


  has_many :surveys , :class_name => "Survey1", :foreign_key => "surv_per1"
  has_many :surveys , :class_name => "Survey2", :foreign_key => "surv_per2"
  has_many :surveys , :class_name => "Survey3", :foreign_key => "surv_per3"
  has_many :surveys , :class_name => "Survey4", :foreign_key => "surv_per4"
  has_many :surveys , :class_name => "Survey5", :foreign_key => "surv_per5"
  has_many :surveys , :class_name => "Survey6", :foreign_key => "surv_per6"

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
