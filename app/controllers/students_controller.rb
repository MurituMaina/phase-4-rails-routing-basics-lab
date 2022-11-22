class StudentsController < ApplicationController
  def index
    render json: "#{Student.all.to_json}"
  end

  def grades
    grades = Student.all.sort_by{ |k| k.grade}
    render json: "#{grades.reverse.to_json}"
  end
end
