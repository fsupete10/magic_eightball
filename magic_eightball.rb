require "colorize"
    require "pry"
    
    def answers
        [
          "It is certain".colorize(:yellow),
          "It is decidedly so".colorize(:yellow),
          "Without a doubt".colorize(:yellow),
          "Yes definitely".colorize(:yellow),
          "You may rely on it".colorize(:yellow),
          "As I see it, yes".colorize(:yellow),
          "Most likely".colorize(:yellow),
          "Outlook good".colorize(:yellow),
          "Yes".colorize(:yellow),
          "Signs point to yes".colorize(:yellow),
          "Reply hazy try again".colorize(:blue),
          "Ask again later".colorize(:blue),
          "Better not tell you now".colorize(:blue),
          "Cannot predict now".colorize(:blue),
          "Concentrate and ask again".colorize(:blue),
          "Don't count on it".colorize(:red),
          "My reply is no".colorize(:red),
          "My sources say no".colorize(:red),
          "Outlook not so good".colorize(:red),
          "Very doubtful".colorize(:red)
        ]
      end
      
      def random_answer
        answers[Random.rand(answers.size)]
      end
      
      def shake_ball
        Array.new(1 + Random.rand(5)).map{ |e| "[shake]" }.join(" ")
      end
      
      def wait_for_user
        question = gets.chomp
        exit(0) if question == "q"
      end
      
      def prompt
        "Welcome to the Magic Eight Ball, please ask a question! (q to quit)".colorize(:green)
      end
      
      if __FILE__ == $0
        puts
        puts prompt
        puts
      
        while (true)
          wait_for_user
          puts
          puts shake_ball + " " + random_answer
          puts
        end
    end
    
