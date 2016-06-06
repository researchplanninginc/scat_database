class Person < ActiveRecord::Base
  belongs_to :person , :class_name => "Survey", :foreign_key => "person_id"
  belongs_to :person , :class_name => "Survey", :foreign_key => "person_id"
  belongs_to :person , :class_name => "Survey", :foreign_key => "person_id"
  belongs_to :person , :class_name => "Survey", :foreign_key => "person_id"
  belongs_to :person , :class_name => "Survey", :foreign_key => "person_id"
  belongs_to :person , :class_name => "Survey", :foreign_key => "person_id"


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
