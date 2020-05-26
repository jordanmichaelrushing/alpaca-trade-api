# frozen_string_literal: true

module Alpaca
  module Trade
    module Api
      class AccountConfig
        attr_reader :dtbp_check, :no_shorting, :suspend_trade, :trade_confirm_email

        def initialize(json)
          @dtbp_check = json['dtbp_check']
          @no_shorting = json['no_shorting']
          @suspend_trade = json['suspend_trade']
          @trade_confirm_email = json['trade_confirm_email']
        end
      end
    end
  end
end
