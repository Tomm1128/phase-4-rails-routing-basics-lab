class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    students = Student.all.order(grade: :desc)
    render json: students
  end

  def highest_grade
    highest_grade = Student.maximum(:grade)
    student_highest_grade = Student.find_by(grade: highest_grade)
    render json: student_highest_grade
  end
end
