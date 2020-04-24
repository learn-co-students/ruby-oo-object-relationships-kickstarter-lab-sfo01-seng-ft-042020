require 'pry'

class Project

    attr_reader :title
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        my_pbs = ProjectBacker.all.select {|p_b| p_b.project == self}
        my_pbs.map {|p_b| p_b.backer}
    end

end