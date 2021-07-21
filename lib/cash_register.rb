require "pry"
class CashRegister
    attr_accessor :total, :discount, :items

    
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total = self.total + (price*quantity)
        @items<<{title: title, cost: price*quantity}
    end

    def apply_discount
        if self.discount == 0
            return "There is no discount to apply."
        end
        self.total = self.total - self.total*(self.discount/100.0)
        self.total
        return "After the discount, the total comes to $#{self.total.round}."
    end

    # def items 
    #     array = []
    #     @items.each do |item|
    #         array<< item[:title]
    #         # binding.pry
    #     end
    #     array
    # end

    def void_last_transaction
        last = self.items.pop
        self.total = self.total - last[:cost]
        # binding.pry
    end
    

end
