class Zone < ActiveRecord::Base
  belongs_to :survey , :class_name => "Survey", :foreign_key => "survey_id"

  def self.to_csv
    attributes = %w{segment_id esi_prim esi_sec back_cliff back_low back_beach back_dune back_wetl back_lag back_delt back_chan back_man acc_along acc_back stage_back acc_desc}
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |segments|
        csv << segments.attributes.values_at(*attributes)
      end
    end
  end

end
