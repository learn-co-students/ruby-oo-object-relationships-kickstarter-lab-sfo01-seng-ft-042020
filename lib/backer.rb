require 'pry'

class Backer
attr_reader :name, :title

def initialize(name)
    @name = name
    @title = title
end 

def back_project(project)
    ProjectBacker.new(project, self) 
    
end 

def backed_projects
    p_b_array = ProjectBacker.all.select do |p_b|
        p_b.backer == self
    end
    p_b_array.map do |backer|
        backer.project
    end 
end

end

#binding.pry
#0

