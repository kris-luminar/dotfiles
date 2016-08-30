load File.dirname(__FILE__) + '/.railsrc' if $0 == 'irb' && ENV['RAILS_ENV'] 

require "awesome_print"
AwesomePrint.irb!

# ap basically replaces inspect. See http://vitobotta.com/prettier-more-user-friendly-printing-ruby-objects/
# require 'ap'
# module IRB
#   class Irb
#     def output_value
#       ap @context.last_value
#     end
#   end
# end

require 'irb/completion'
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]

require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

def clear
  system('clear')
end

def pwd
  system('pwd')
end
