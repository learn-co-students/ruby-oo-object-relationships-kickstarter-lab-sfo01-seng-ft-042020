require 'pry'
class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = ProjectBacker.all.select {|projectbacker| projectbacker.backer == self}
        backed_projects = []
        projects.each do |element|
            backed_projects << element.project
        end
        backed_projects
    end

end