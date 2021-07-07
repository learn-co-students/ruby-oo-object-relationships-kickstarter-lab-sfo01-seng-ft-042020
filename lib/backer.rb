require 'pry'
class Backer
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def backed_projects
        projects = ProjectBacker.all.select do |proj_obj|
            self == proj_obj.backer
        end
        projects.map do |project_backer|
            project_backer.project
        end

    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
end