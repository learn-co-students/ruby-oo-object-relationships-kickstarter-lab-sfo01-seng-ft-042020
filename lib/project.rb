class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select { |s| s.project == self }.map { |s| s.backer }
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


