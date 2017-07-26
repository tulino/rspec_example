require "calculator"
RSpec.describe Calculator do
    def calculator
      calculator = Calculator.new
    end
# ya da soye bir yontem
# before do
# @calculator = Calculator.new
#end
#kodun içindeki calculatorleri @calculator ile değiştirin bunu kullanmak için


    context "#topla" do
        
        it "returns sum of two nums" do
            expect(calculator.topla(3, 5)).to eq 8
        end

        it "rises when inputs are not a number" do
            calculator = Calculator.new
            expect{calculator.topla("sa", 5)}.to raise_error(NotANumberError,"Lutfen sayı girin")
        end
    end
    context "#cikar" do

        it "returns sum of two nums" do
            expect(calculator.cikar(5,3)).to eq 2
        end
        it "rises when inputs are not a number" do
            calculator = Calculator.new
            expect{calculator.cikar("sa", 3)}.to raise_error(NotANumberError)
        end

    end
    context "#bol" do
        it "returns  	division  of two nums" do
            expect(calculator.bol(5,3)).to eq 1.66
        end
        it "rises when inputs are not a number" do
            expect{calculator.cikar(" ", 3)}.to raise_error(NotANumberError)
        end  
        it "rises when inputs are a zero" do
            expect{calculator.bol(0,0)}.to raise_error(ZeroDivisionError,"sayi sıfıra bölünemez")
        end
    end
    context "#carpma" do
        it "returns  	multiply  of two nums" do
            expect(calculator.carpma(3, 5)).to eq 15.0
        end

        it "rises when inputs are not a number" do
            expect{calculator.carpma("sa", 5)}.to raise_error(NotANumberError)
        end
          end

          

end