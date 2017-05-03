class StudentListsGrid

  include Datagrid

  scope do
    Student.select(
        "students.name as name, students.dob as dob,students.section as section,students.year_of_joined as year_of_joined"
     ).group("students.name", "students.dob", "students.section","students.year_of_joined").order("students.dob")
  end


  filter(:year, :enum,
         :select => lambda { Student.all.any? ? (Student.minimum(:dob).year..Student.maximum(:dob).year) : []},
    :include_blank => false
  ) do |value|
    self.where(["extract(year from students.dob) = ?", value.to_i])
  end 
  #
  # Columns
  #

  column(:name, :header => "Student Name", :order => "students.name")
  column(:dob, :header => "DOB", :order=> "students.dob")
  column(:section, :header => "Student section", :order => "students.section")
  column(:year_of_joined, :header => "Student section", :order => "students.year_of_joined")

end
