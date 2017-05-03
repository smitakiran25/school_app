class StudentListsController < ApplicationController

  def index
    @student_lists_grid = StudentListsGrid.new(params[:student_lists]) do |scope|
      scope.page(params[:page])
    end
  end

end
