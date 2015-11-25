require 'fosl/parser'
require 'fosl/process'

module FOSL
  class << self
    def lsof(args)
      FOSL::Parser.new.lsof(args)
    end
  end
end

unless defined?(:lsof)
  def lsof(args)
    FOSL.lsof(args) rescue {}
  end
end
