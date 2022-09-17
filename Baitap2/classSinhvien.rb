# tạo class sinh viên
class Student
    attr_accessor :name, :id, :clas, :vToan, :vLy, :vHoa
  
    #Thiết kế các phương thức cơ bản của class
    def initialize(name, id, clas)
      @name = name
      @id = id
      @clas = clas
    end
  
    def set_name(name)
      @name = name
    end
  
    def get_name
      @name
    end
  
    def set_id(id)
      @id = id
    end
  
    def get_id
      @id
    end
  
    def set_clas(clas)
      @clas = clas
    end
  
    def get_clas
      @clas
    end
  
    #Tạo phương thức nhập điểm Toán Lý Hoá của sinh viên, tính điểm trung bình
    def diem_toan(vToan)
      @vToan = vToan
    end
  
    def diem_ly(vLy)
      @vLy = vLy
    end
  
    def diem_hoa(vHoa)
      @vHoa = vHoa
    end
  
    def get_gpa
      (vToan + vLy + vHoa) / 3.0
    end
    #In ra các thông tin của sinh viên
    def infor
      puts "Họ và tên sv: #{@name}"
      puts "Mã sv: #{@id}"
      puts "Lớp sh: #{@clas}"
      puts "Điểm trung bình: #{get_gpa().round(2)}"
    end
  end
  system "cls"
  print "Nhập họ tên sv: "
  name = gets.chomp.to_s
  print "Nhập mã sv: "
  id = gets.chomp.to_s
  print "Nhập lớp sh: "
  clas = gets.chomp.to_s
  std = Student.new(name, id, clas)
  print "Nhập điểm toán: "
  std.diem_toan(gets.chomp.to_i)
  print "Nhập điểm lý: "
  std.diem_ly(gets.chomp.to_i)
  print "Nhập điểm hóa: "
  std.diem_hoa(gets.chomp.to_i)
  
  
  puts "---     SINH VIÊN: #{std.get_name}     ---"
  std.infor