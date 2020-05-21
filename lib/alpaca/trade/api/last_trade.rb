# frozen_string_literal: true

module Alpaca
  module Trade
    module Api
      class LastTrade
        attr_reader :status, :symbol, :price, :size, :exchange,
                    :cond1, :cond2, :cond3, :cond4, :timestamp

        def initialize(json)
          p json
          @status =    json['status']
          @symbol =    json['symbol']
          @price =     json['last']['price']
          @size =      json['last']['size']
          @exchange =  json['last']['exchange']
          @cond1 =     json['last']['cond1']
          @cond2 =     json['last']['cond2']
          @cond3 =     json['last']['cond3']
          @cond4 =     json['last']['cond4']
          @timestamp = json['last']['timestamp']
        end
      end
    end
  end
end
