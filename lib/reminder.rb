class Reminder
    def initialize(name)
        @name = name
        end
    def reminnd_me_to(task)
        @task = task
    end

    def remind()
        return "#{@task}, #{@name}!"
        end

    
    end