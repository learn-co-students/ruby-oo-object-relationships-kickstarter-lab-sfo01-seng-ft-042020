require "pry"

class Project
    attr_accessor 
    attr_reader :name, :title

    def initialize(title)
        @name = name
        @title = title 
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers
    p_b_array = ProjectBacker.all.select do |p_b|
            p_b.project == self
        end
        p_b_array.map do |project|
            project.backer
        end 
    end 
            

end

#binding.pry
#0
