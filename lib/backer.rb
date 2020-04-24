class Backer
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select {|kick| kick.backer == self}.map {|kick| kick.project}
    end

    def self.all
        @@all
    end

end