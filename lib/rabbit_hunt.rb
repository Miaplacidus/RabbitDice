require 'active_model'
require 'pry-debugger'

module RH
end

require 'rabbit_hunt/entity.rb'

Dir[File.dirname(__FILE__) + '/rabbit_hunt/entities/*.rb'].each {|file| require file}
Dir[File.dirname(__FILE__) + '/use_cases/*.rb'].each {|file| require file}
