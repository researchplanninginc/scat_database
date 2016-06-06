class Pit < ActiveRecord::Base
  belongs_to :survey , :class_name => "Survey", :foreign_key => "survey_id"

  def self.to_csv
    attributes = %w{pit_id pit_name survey_id tidal_zone p_depth p_oil_char p_oil_bot p_oil_top p_oil_dist}
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |pits|
        csv << pits.attributes.values_at(*attributes)
      end
    end
  end

end
