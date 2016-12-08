#!/usr/bin/env ruby

require 'zip'
require 'tmpdir'

def count_archive(file, count)
  Zip::File.open(file) do |zip_file|
    zip_file.each do |entry|
      if (entry.name.end_with?(".class") || entry.name.end_with?(".groovy"))
        count = count + 1
      end
      if (entry.name.end_with?(".war") || entry.name.end_with?(".jar"))
        Dir.mktmpdir do |dir|
          entry.extract("#{dir}/archive")
          count = count_archive("#{dir}/archive", count)
        end
      end
    end
  end
  return count
end

application = "#{Dir.pwd}/#{ARGV[0]}"
puts "Scanning         : #{application}"
puts "Java files found : #{count_archive(application, 0)}"
