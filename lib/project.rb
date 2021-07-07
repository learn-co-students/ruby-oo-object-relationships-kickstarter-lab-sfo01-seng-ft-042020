require 'pry'
class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end

    def backers
       backerz = ProjectBacker.all.select do |back_obj|
            self == back_obj.project
        end
        backerz.map do |backed|
            backed.backer
        end
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

end