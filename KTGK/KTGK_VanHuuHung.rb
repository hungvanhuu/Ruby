
class Phuongtien
    attr_accessor :id129, :hangsx129, :namsx129, :dongxe129, :giaban129, :bienso129, :mauxe129
    def initialize(id129,hangsx129,namsx129,dongxe129,giaban129,bienso129,mauxe129)
        @id129=id129
        @hangsx129=hangsx129
        @namsx129=namsx129
        @dongxe129=dongxe129
        @giaban129=giaban129
        @bienso129=bienso129
        @mauxe129=mauxe129
        end
        
end
class Oto < Phuongtien
    attr_accessor :sochongoi129, :kieudongco129, :nhienlieu129 ,:sotuikhi129, :ngaydangkiem129
    def initialize(id129,hangsx129,namsx129,dongxe129,giaban129,bienso129,mauxe129,sochongoi129, kieudongco129, nhienlieu129 ,sotuikhi129, ngaydangkiem129)
        super(id129,hangsx129,namsx129,dongxe129,giaban129,bienso129,mauxe129)
        @sochongoi129 = sochongoi129
        @kieudongco129 = kieudongco129
        @nhienlieu129 = nhienlieu129
        @sotuikhi129 = sotuikhi129
        @ngaydangkiem129 = ngaydangkiem129
      end
      def display
        def display
            puts "Oto: { " + "Số chỗ ngồi : " + @sochongoi129.to_s + "| Kiểu động cơ: " + @kieudongco129 + "| Nhiên liệu: " + @nhienlieu129 + "| Số túi khí: " + @sotuikhi129 + "| Ngày đăng kiểm: " + @ngaydangkiem129  
            + "| Id: "+ @id129.to_s +  "| Hãng sản xuất: "+ @hangsx129 + "| Năm sản xuất : "+ @namsx129.to_s + "| Dòng xe: "+ @dongxe129+ "| Giá bán: "+ @giaban129.to_s + "| Bienso: "+ @bienso129 + "|  Màu xe: "+ @mauxe129+"  }"
          end
      end
    end
    class Xemay <Phuongtien
        attr_accessor :congsuat129, :dungtichbinhxang129
        def initialize(id129,hangsx129,namsx129,dongxe129,giaban129,bienso129,mauxe129,congsuat129, dungtichbinhxang129)
            super(id129,hangsx129,namsx129,dongxe129,giaban129,bienso129,mauxe129)
            @congsuat129=congsuat129
            @dungtichbinhxang129=dungtichbinhxang129
        end
        def display
            puts "Oto: { " + "Công suất: " + @congsuat129 + "| Dungtich: " + @Dungtich  
            + "| Id: "+ @id129.to_s +  "| Hãng sản xuất: "+ @hangsx129 + "| Năm sản xuất : "+ @namsx129.to_s + "| Dòng xe: "+ @dongxe129+ "| Giá bán: "+ @giaban129.to_s + "| Bienso: "+ @bienso129 + "|  Màu xe: "+ @mauxe129+"  }"
          end
    end
    class Xetai<Phuongtien
        attr_accessor :trongtai129
        def initialize(id129,hangsx129,namsx129,dongxe129,giaban129,bienso129,mauxe129,trongtai129)
            super(id129,hangsx129,namsx129,dongxe129,giaban129,bienso129,mauxe129)
            @Trongtai129 =trongtai129

        end
    
        def display
            puts "Oto: { " + "Trọng tải: " + @trongtai129 
            + "| Id: "+ @id129.to_s +  "| Hãng sản xuất: "+ @hangsx129 + "| Năm sản xuất : "+ @namsx129.to_s + "| Dòng xe: "+ @dongxe129+ "| Giá bán: "+ @giaban129.to_s + "| Bienso: "+ @bienso129 + "|  Màu xe: "+ @mauxe129+"  }"
          end
    end

    #class Qlpt
    class QLPTGT
        @listPhuongtien = Array.new()
        def initialize
            @listPhuongtien = Array.new()
        end
        
        def add(entity)
            @listPhuongtien.push(entity)
        end
        def addPhuongtien
            puts "Enter a: để nhập oto"
            puts "Enter b: để nhập xe máy"
            puts "Enter c: để nhập xe tải"
            puts "Enter d: thoat khoi chuong trinh: "
            print "moi ban chon:"
            type = gets.chomp.to_s
        
            puts "Enter id: "
            id129 = gets.chomp.to_i
            puts "Enter Hãng sản xuất:"
            hangsx129 = gets.chomp.to_s
            puts "Enter Năm sản xuất:"
            namsx129 = gets.chomp.to_i
            puts "Enter Dòng xe:"
            dongxe129 = gets.chomp.to_s
            puts "Enter Giá bánt:"
            giaban129 = gets.chomp.to_i
            puts "Enter Bienso:"
            bienso129 = gets.chomp.to_s
            puts "Enter màu xe:"
            mauxe129 = gets.chomp.to_s
           
        
        
            case type
            when "a"
              puts "Enter Số chỗ ngồi:"
              sochongoi129 = gets.chomp.to_i
              puts "Enter Kiểu động cơ: "
              kieudongco129= gets.chomp.to_s
              puts "Enter nhiên liệu: "
              nhienlieu129 = gets.chomp.to_s
              puts "Số túi khí: "
              sotuikhi129 = gets.chomp.to_i
              puts "Enter ngày đăng kiểm: "
              ngaydangkiem129 = gets.chomp.to_s
              oto = Oto.new(id129,hangsx129,namsx129,dongxe129,giaban129,bienso129,mauxe129,sochongoi129, kieudongco129, nhienlieu129 ,sotuikhi129, ngaydangkiem129)
              add(oto)
            when "b"
              puts "Enter công suất: "
              congsuat129 = gets.chomp.to_s
              puts "Enter dung tích bình xăng : "
              dungtichbinhxang129 = gets.chomp.to_s
              xemay = Xemay.new(id129,hangsx129,namsx129,dongxe129,giaban129,bienso129,mauxe129,congsuat129,dungtichbinhxang129)
              add(xemay)
            when "c"
              puts "Enter Trọng tải: "
              trongtai129 = gets.chomp.to_s
              xetai = Xetai.new(id129,hangsx129,namsx129,dongxe129,giaban129,bienso129,mauxe129,trongtai129)
              add(xetai)
            end
            when "d"
                puts "ket thuc nhap "
                exit
            end
         end
        #xoa phuongtien
            def deletePhuongtien(id)
            @listPhuongtien.delete_if {|x| x.id129 == id129 }
            end
        #tìm theo hãng , mãu, biển số
            def findByHangSx(hangsx129)
            @listPhuongtien.each do |i|
              if i.class == hangsx129
                return i.display
              end
            end
            def findByMau(mauxe129)
                @listPhuongtien.each do |i|
                  if i.class == mauxe129
                    return i.display
                  end
                end
                def findByBienso(bienso129)
                    @listPhuongtien.each do |i|
                      if i.class == bienso129
                        return i.display
                      end
                    end
        
          end
        
           def showListInforDocument()
            @listPhuongtien.each do |i|
              i.display
              puts i.class
            end
        end
    end
    