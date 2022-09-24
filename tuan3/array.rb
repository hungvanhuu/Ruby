class Human
  attr_accessor :name, :gender, :hair_color, :height, :weight, :phone, :email, :nation

  def initialize (name, gender, hair_color, height, weight, phone, email, nation)
    @name = name
    @gender = gender
    @hair_color = hair_color
    @height = height
    @weight = weight
    @phone = phone
    @email = email
    @nation = nation
  end
end

class Student < Human
  attr_accessor :cl, :grades1, :grades2, :grades3, :average_grade

  def initialize(name, gender, hair_color, height, weight, phone, email, nation,cl,grades1, grades2, grades3)
    super(name, gender, hair_color, height, weight, phone, email, nation)
    @cl = cl
    @grades1 = grades1
    @grades2 = grades2
    @grades3 = grades3
    @average_grade = (@grades1 + @grades2 + @grades3) / 3.0
  end

end

def prt_stdbefore(array_students)
  puts "\n ========Danh sách điểm trung bình của các sinh viên: ============ "
  for student in array_students do
    puts "Name: #{student.name} - Gender: #{student.gender} - Hair_color: #{student.hair_color} - Height: #{student.height}
- Weight: #{student.weight} - Phone: #{student.phone} - Email: #{student.email} - Nation: #{student.nation}
- class: #{student.cl} - Average = #{student.average_grade}"
    puts"---------------------------------"
  end
end

def prt_std(array_students)
  puts "\n======Danh sách thứ tự điểm trung bình giảm dần của các sinh viên: ============"
  for student in array_students do
    puts "Name: #{student.name} - class: #{student.cl} - Average = #{student.average_grade}"
    puts "-----------------------------------"
  end
end


svs_before = []
svs = []


student1 = Student.new('Van Huu Hung', "Nam","đen","165","49","5783579074","hungvanhuu@gmail.com","VietNam", "19T1", 9,8,9)
student2 = Student.new('Van Huu Hung', "Nam","đen","160","50","4688643268","a@gmail.com","VietNam", "19T1", 3,6,7)
student3 = Student.new('Nguyen Van A', "Nu","đen","160","48","4689754379","b@gmail.com","VietNam", "19T1", 5,6,9)
student4 = Student.new('Tran Van B', "Nam","đen","175","55","5579746890","c@gmail.com","VietNam", "19T1", 6,9,4)
svs << student1
svs << student2
svs << student3
svs << student4
svs_before = svs

prt_stdbefore(svs_before)
svs.sort! { |a, b| b.average_grade <=> a.average_grade }
prt_std(svs)