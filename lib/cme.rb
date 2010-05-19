# Cme

require 'rubygems'
require 'csvscan'
require 'open-uri'

directory = File.expand_path(File.dirname(__FILE__))

module Cme
  
  def self.comex_futures
    Cme::Settlement.new.comex_futures
  end
  
  def self.comex_options
    Cme::Settlement.new.comex_options
  end
  
  def self.nymex_futures
    Cme::Settlement.new.nymex_futures
  end
  
  def self.nymex_options
    Cme::Settlement.new.nymex_options
  end
  
end

require File.join(directory, 'cme', 'settlement')