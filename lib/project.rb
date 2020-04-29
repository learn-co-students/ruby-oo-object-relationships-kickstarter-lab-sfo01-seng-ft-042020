require 'pry'
class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = ProjectBacker.all.select {|projectbacker| projectbacker.project == self}
        backers_array = []
        backers.each do |element|
            backers_array << element.backer
        end
        backers_array
    end

end