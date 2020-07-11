class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects =[]
  end

  def backed_project(project)
    @backed_project << project
    project.add_backer(self) unless project.backers.include?(self)
  end

end
