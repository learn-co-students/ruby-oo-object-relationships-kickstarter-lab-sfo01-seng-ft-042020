class Project
  attr_accessor :title
  def initialize(title)
    @title = title
  end 

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def my_projects
    ProjectBacker.all.select {|project| project.project == self}
  end
  def backers 
    my_projects.map {|p| p.backer}
    
  end
end
