class Robot
    attr_reader :robot_name

    def initialize(robot_name)
        setup_engine
        configure_parameters
        load_cleaning_tools
        @robot_name = robot_name
    end

    # def robot_name
    #     @robot_name
    # end 

    def walk
        puts "Hello I am #{@robot_name} and I am walking"
    end

    def jump
        puts "jumping now ... so high"
    end
    
    def clean_room(room)
        puts "Cleaning #{room}"
    end

    def clean_house(rooms)
        rooms.each do |r|
            clean_room(r)
        end
    end

    private

    def setup_engine
        puts "setting up engine..."
    end

    def configure_parameters
        puts "configuring parameters..."
    end

    def load_cleaning_tools 
        puts "loading cleaning tools..."
    end

end

rooms = ['bathroom','kitchen','bedroom']
dream_robot = Robot.new('Mon Petit Robot Adoré')
dream_robot.walk
dream_robot.clean_house(rooms)
puts dream_robot.robot_name
dream_robot.load_cleaning_tools
