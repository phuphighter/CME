module Cme

  class Settlement

    def comex_futures
      futures_parse('ftp://ftp.cmegroup.com/pub/settle/comex_future.csv')
    end
    
    def nymex_futures
      futures_parse('ftp://ftp.cmegroup.com/pub/settle/nymex_future.csv')
    end
    
    def comex_options
      options_parse('ftp://ftp.cmegroup.com/pub/settle/comex_option.csv')
    end
    
    def nymex_options
      options_parse('ftp://ftp.cmegroup.com/pub/settle/nymex_option.csv')
    end
    
    private
    
    def futures_parse(url)
      data = []

      CSVScan.scan(open(url).read) do |row|
        product = { :product_symbol => row[0], :contract_month => row[1], :contact_year => row[2], :contract_day => row[3], 
                    :contract => row[4], :product_description => row[5], :open => row[6], :high => row[7],
                    :high_ab_indicator => row[8], :low => row[9], :low_ab_indicator => row[10], :last => row[11],
                    :last_ab_indicator => row[12], :settle => row[13], :pt_chg => row[14], :est_vol => row[15],
                    :prior_settle => row[16], :prior_vol => row[17], :prior_int => row[18], :tradedate => row[19] }

        data << product
      end
      
      data.delete_at(0)
      data
    end
    
    def options_parse(url)
      data = []

      CSVScan.scan(open(url).read) do |row|
        product = { :product_symbol => row[0], :contract_month => row[1], :contact_year => row[2], :contract_day => row[3], 
                    :put_call => row[4], :strike => row[5], :contract => row[6], :product_description => row[7], 
                    :open => row[8], :high => row[9], :high_ab_indicator => row[10], :low => row[11], :low_ab_indicator => row[12], 
                    :last => row[13], :last_ab_indicator => row[14], :settle => row[15], :pt_chg => row[16], :est_vol => row[17],
                    :prior_settle => row[18], :prior_vol => row[19], :prior_int => row[20], :tradedate => row[21] }

        data << product
      end
      
      data.delete_at(0)
      data
    end
    
  end
end
