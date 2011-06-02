Dir.glob(File.dirname(__FILE__) + '/lib/connection_adapters/*.rb').each {|f| require f }
Dir.glob(File.dirname(__FILE__) + '/lib/*.rb').each {|f| require f }