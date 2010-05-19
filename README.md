# CME

Ruby wrapper to access settlement market data from the Chicago Mercantile Exchange (CME)  [http://www.cmegroup.com/market-data/settlements/](http://www.cmegroup.com/market-data/settlements/)

## Installation

Gem will be created soon.

As a plugin (in your Rails directory):

    script/plugin install git@github.com:phuphighter/CME.git
    
### Dependencies

[CSVScan](http://github.com/sandofsky/csvscan)
    
#### Examples

Currently, this gem only supports the csv files for COMEX and NYMEX.  Fixed-width file support coming soon.

    >> Cme.comex_futures
    => [{:est_vol=>"73", :contact_year=>"2010", :low=>"1208.2", :prior_settle=>"1227.7", :contract_day=>nil, :low_ab_indicator=>nil, :prior_vol=>"49", :open=>"1214.1", :contract=>"GCK10", :last_ab_indicator=>nil, :prior_int=>"12", :product_description=>"Gold Futures", :settle=>"1214.3", :product_symbol=>"GC", :tradedate=>"05/18/2010", :high=>"1216.8", :pt_chg=>"-13.4", :contract_month=>"05", :last=>"1216.1", :high_ab_indicator=>"B"},...]
    
    >> Cme.nymex_futures
    => [{:est_vol=>"0", :contact_year=>"2010", :low=>nil, :prior_settle=>"15.00", :contract_day=>nil, :low_ab_indicator=>nil, :prior_vol=>nil, :open=>nil, :contract=>"09K10", :last_ab_indicator=>nil, :prior_int=>nil, :product_description=>"So2 Emission 25 Futures", :settle=>"15.00", :product_symbol=>"09", :tradedate=>"05/18/2010", :high=>nil, :pt_chg=>"UNCH", :contract_month=>"05", :last=>nil, :high_ab_indicator=>nil},...]

## Copyright

Contact me if you have any suggestions and feel free to fork it!

Copyright (c) 2009 Johnny Khai Nguyen, released under the MIT license

