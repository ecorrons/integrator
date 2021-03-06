module Integrator
  class CareerProgramme < Nested
    attr_reader :id, :career_id, :academic_unit_id, :programme, :year_count, :start_date, :total_subjects_count
    
    def to_s
      programme
    end

    def academic_unit
      AcademicUnit.find(academic_unit_id)
    end
    
    def career
      Career.find(career_id)
    end
    
    def career_subjects
      response = Client.get(subject: [academic_unit, career, self, CareerSubject])
      
      response.collect do |item|
        CareerSubject.new(item)
      end
    end
    
    def career_programme_degrees
      response = Client.get subject: [academic_unit, career, self, CareerProgrammeDegree]
      
      response.collect { |item| CareerProgrammeDegree.new(item) }
    end
  end
end
