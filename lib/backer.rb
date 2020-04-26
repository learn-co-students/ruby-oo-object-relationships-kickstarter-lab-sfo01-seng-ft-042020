class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select { |s| s.backer == self }.map { |s| s.project}
    end

end




# class ProjectBacker

#     attr_accessor :project, :backer

#     @@all = []
#     def initialize(project, backer)
#         @project = project
#         @backer = backer
#         @@all << self
#     end

#     def self.all
#         @@all
#     end
# end