#Ruby CalDAV library named "agcaldav"
**agcaldav is a CalDAV library based on martinpovolny/ruby-caldav and 4fthawaiian/ruby-caldav and collectiveidea/caldav**

**Please keep in mind, agcaldav ist still under heavy development and still not finished...**

##Usage Events

First, you've to install the gem

    gem install agcaldav

and require it

    require "agcaldav"

Next you have to obtain the URI, username and password to a CalDAV-Server. If you don't have one try RADICALE (https://github.com/agilastic/Radicale). It's small, simple and written in python. In the following steps I'm using the default params of Radical.


Now you can e.g. create a new AgCalDAV-Client:
    	
	cal = AgCalDAV::Client.new(:uri => "http://localhost:5232/user/calendar", :user => "user" , :password => "")

Alternatively, the proxy parameters can be specified:

	cal = AgCalDAV::Client.new(:uri => "http://localhost:5232/user/calendar",:user => "user" , :password => "password", :proxy_uri => "http://my-proxy.com:8080")


####Create an Event

    result = cal.create_event(:start => "2012-12-29 10:00", :end => "2012-12-30 12:00", :title => "12345", :description => "12345 12345")

Analyze result:
   
    >> result
    => #<Icalendar::Event:0x007ff653b47520 @name="VEVENT", @components={}, @properties={"sequence"=>0, "dtstamp"=>#<DateTime: 2012-12-30T19:59:04+00:00 (26527957193/10800,0/1,2299161)>, "description"=>"sdkvjsdf sdkf sdkfj sdkf dsfj", "dtend"=>#<DateTime: 2012-12-30T12:00:00+00:00 (2456292/1,0/1,2299161)>, "dtstart"=>#<DateTime: 2012-12-29T10:00:00+00:00 (29475491/12,0/1,2299161)>, "summary"=>"12345", "uid"=>"e795c480-34e0-0130-7d1d-109add70606c", "x-radicale_name"=>"e795c480-34e0-0130-7d1d-109add70606c.ics"}> 
   
    >> result.class
    => Icalendar::Event

   
get UID of this Event:

    >> result.uid
    => "e795c480-34e0-0130-7d1d-109add70606c"


####Find an Event  (via UUID)  

    result = cal.find_event("e795c480-34e0-0130-7d1d-109add70606c")
    
    >> result.class
    => Icalendar::Event


####Find Events within time interval

    result = cal.find_events(:start => "2012-10-01 08:00", :end => "2013-01-01")

    >> result
    => [#<Icalendar::Event:0x007f8ad11cfdf0 @name="VEVENT", @components={}, @properties={"sequence"=>0, "dtstamp"=>#<DateTime: 2012-12-31T13:44:10+00:00 (4244474429/1728,0/1,2299161)>, "description"=>"sdkvjsdf sdkf sdkfj sdkf dsfj", "dtend"=>#<DateTime: 2012-12-30T12:00:00+00:00 (2456292/1,0/1,2299161)>, "dtstart"=>#<DateTime: 2012-12-29T10:00:00+00:00 (29475491/12,0/1,2299161)>, "summary"=>"12345", "uid"=>"b2c45e20-3575-0130-7d2e-109add70606c", "x-radicale_name"=>"b2c45e20-3575-0130-7d2e-109add70606c.ics"}>, #<Icalendar::Event:0x007f8ad10d7dd0 @name="VEVENT", @components={}, @properties={"sequence"=>0, "dtstamp"=>#<DateTime: 2012-12-31T13:44:10+00:00 (4244474429/1728,0/1,2299161)>, "uid"=>"b2c45e20-3575-0130-7d2e-109add70606c", "x-radicale_name"=>"b2c45e20-3575-0130-7d2e-109add70606c.ics"}>]

    >> result.class
    => Array

    >> result.count
    => 2



####Update Event

    event = {:start => "2012-12-29 10:00", :end => "2012-12-30 12:00", :title => "12345", :description => "sdkvjsdf sdkf sdkfj sdkf dsfj"}
    # set UUID 
    event[:uid] => "e795c480-34e0-0130-7d1d-109add70606c"
    c = cal.update_event(event)



####Delete Event

    cal.delete_event("e795c480-34e0-0130-7d1d-109add70606c")




##Usage ToDo

####not finished ATM
Have a look tomorrow...



##Work to be done ...

1. find and notify if overlapping events              
2. code cleanup -> more ActiveRecord style    
            
                                                             


##Testing

agcaldav will use RSpec for its test coverage. Inside the gem
directory, you can run the specs for RoR 3.x with:

  rake spec 
(will be implemented in > v0.2.5)  


 
##Licence

MIT



##Contributors

[Check all contributors][c]


1. Fork it.
2. Create a branch (`git checkout -b my_feature_branch`)
3. Commit your changes (`git commit -am "bugfixed abc..."`)
4. Push to the branch (`git push origin my_feature_branch`)
5. Open a [Pull Request][1]
6. Enjoy a refreshing Club Mate and wait

[c]: https://github.com/agilastic/agcaldav/contributors
[1]: https://github.com/agilastic/agcaldav/pulls/

