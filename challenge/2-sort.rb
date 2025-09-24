#!/usr/bin/env ruby
###
#
#  Sort integer arguments (ascending)
#
###

result = []
ARGV.each do |arg|
  # accept integers only
  next unless arg =~ /\A-?\d+\z/

  i_arg = arg.to_i

  inserted = false
  i = 0
  l = result.size
  while !inserted && i < l
    if result[i] < i_arg
      i += 1
    else
      # FIX: insert at i (not i - 1)
      result.insert(i, i_arg)
      inserted = true
    end
  end

  # if not inserted in the loop, append to the end
  result << i_arg unless inserted
end

# one per line
puts result

