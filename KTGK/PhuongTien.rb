class QLPT
  class phuongTien
    attr_accessor :ID, :Hangsx, :Namsx, :Dongxe, :Giaban, :Bienso, :Mau
    def initialize(ID,Hangsx,Namsx,Dongxe,Giaban,Bienso,Mau)
      @ID = ID
      @Hangsx = Hangsx
      @Namsx = Namsx
      @Dongxe = Dongxe
      @Giaban = Giaban
      @Bienso = Bienso
      @Mau = Mau

    end
  end

  class Oto < phuongTien
    attr_accessor :Socho, :Dongco, :Nhienlieu, :Sotuikhi, :Ngaydangkiem

    def initialize (ID,Hangsx,Namsx,Dongxe,Giaban,Bienso,Mau,Socho,Dongco,Nhienlieu,Sotuikhi,Ngaydangkiem)
      super (ID,Hangsx,Namsx,Dongxe,Giaban,Bienso,Mau)
      @Socho = Socho
      @Dongco = Dongco
      @Nhienlieu = Nhienlieu
      @Sotuikhi = Sotuikhi
      @Ngaydangkiem = Ngaydangkiem
    end
    def display
    end
  end
  class Xemay < phuongTien
    attr_accessor :Congsuat, :Dungtichbinhxang

    def initialize(ID,Hangsx,Namsx,Dongxe,Giaban,Bienso,Mau,Congsuat,Dungtichbinhxang)
      super (ID,Hangsx,Namsx,Dongxe,Giaban,Bienso,Mau)
      @Congsuat = Congsuat
      @Dungtichbinhxang = Dungtichbinhxang

    end
    def display
    end
  end

  class Xetai < phuongTien
    attr_accessor :Trongtai

    def initialize(ID,Hangsx,Namsx,Dongxe,Giaban,Bienso,Mau,Trongtai)
      super (ID,Hangsx,Namsx,Dongxe,Giaban,Bienso,Mau)
      @Trongtai = Trongtai
    end
    def display
    end
  end

end
