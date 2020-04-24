require 'pry'

class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end


    def back_project(project)
       ProjectBacker.new(project, self)
        # binding.pry   
    end

    def backed_projects
        my_pbs = ProjectBacker.all.select {|p_b| p_b.backer == self}
        my_pbs.map {|p_b| p_b.project }
        # binding.pry
    end

end

#Backer.back_project("blahblah")

#Backer.backed_projects  = [projects == self]