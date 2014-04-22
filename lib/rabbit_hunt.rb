Dir[File.dirname(__FILE__) + '/entities/*.rb'].each {|file| require file}
Dir[File.dirname(__FILE__) + '/use_cases/*.rb'].each {|file| require file}
