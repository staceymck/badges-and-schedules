# Write your code here.

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    attendees.map do |name|
        badge_maker(name)
    end
end

def assign_rooms(attendees)
    attendees.map.with_index(1) do |name, index|
        "Hello, #{name}! You'll be assigned to room #{index}!"
    end
end

def printer(attendees)
    badges = batch_badge_creator(attendees)
    room_assignments = assign_rooms(attendees)
    
    badges.each {|badge| puts badge}
    room_assignments.each {|assignment| puts assignment}
end
