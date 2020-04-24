class Backer

    attr_reader :name

    def initialize(name)
        @name = name


    end

    def back_project(project)
        ProjectBacker.new(project, self)


    end

    def backed_projects
       vet =  ProjectBacker.all.select {|project| project.backer  == self}
       vet.map {|project| project.project}

       
        

    end





end