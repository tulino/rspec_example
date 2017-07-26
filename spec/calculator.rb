class NotANumberError < StandardError
end
class Calculator
   HATA_MESAJI = "Lutfen sayı girin"

    def topla(sayi1, sayi2)
       numbers?(sayi1,sayi2)
            sayi1 + sayi2
    end
    def cikar(sayi1,sayi2)
     numbers?(sayi1,sayi2)
      sayi1 - sayi2 
    end
    def bol(sayi1,sayi2)
       numbers?(sayi1,sayi2) 
        (sayi1.to_f / sayi2).floor(2)
        fail ZeroDivisionError,"sayi sıfıra bölünemez" if sayi2 == 0 
        (sayi1.to_f / sayi2).floor(2)       
   
    end
    def carpma(sayi1,sayi2)
       numbers?(sayi1,sayi2)
        (sayi1.to_f * sayi2).floor(4)
    end
    private
        def numbers?(*numbers)
        fail NotANumberError,HATA_MESAJI unless [*numbers].all? {|sayi| sayi.is_a?(Integer)}
    end

end