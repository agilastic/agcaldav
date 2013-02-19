require 'net/https'
require 'net/http/digest_auth'
require 'uuid'
require 'rexml/document'
require 'rexml/xpath'
require 'icalendar'
require 'time'
require 'date'

['client.rb', 'request.rb', 'net.rb', 'query.rb', 'filter.rb', 'event.rb', 'todo.rb', 'format.rb'].each do |f|
    require File.join( File.dirname(__FILE__), 'agcaldav', f )
end