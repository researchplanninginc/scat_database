class Survey < ActiveRecord::Base

  belongs_to :person1, :class_name => "Person", :foreign_key => "surv_per1"
  belongs_to :person2, :class_name => "Person", :foreign_key => "surv_per2"
  belongs_to :person3, :class_name => "Person", :foreign_key => "surv_per3"
  belongs_to :person4, :class_name => "Person", :foreign_key => "surv_per4"
  belongs_to :person5, :class_name => "Person", :foreign_key => "surv_per5"
  belongs_to :person6, :class_name => "Person", :foreign_key => "surv_per6"


  has_many :pits , :class_name => "Pit", :foreign_key => "survey_id"
  has_many :zones , :class_name => "Zone", :foreign_key => "survey_id"

  def self.to_csv
    attributes = %w{survey_id segment_id seg_list surv_date surv_dint start_time stop_time tide_hgt surv_type surv_per1 surv_per2 surv_per3 surv_per4 surv_per5 surv_per6 surv_comm}

    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |surveys|
        csv << surveys.attributes.values_at(*attributes)
      end
    end
  end

end
