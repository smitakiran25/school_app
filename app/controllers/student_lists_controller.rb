class StudentListsController < ApplicationController

  def index
    @student_lists_grid = StudentListsGrid.new(params[:student_lists_grid]) do |scope|
      scope.page(params[:page])
    end
  end


end
