require 'csv'
require 'pry'

class Taylor

  def strip(string)
    [string.first.gsub( /"/, '')]
  end

  def read_and_strip(file_path)
    line = IO.foreach(file_path) {|x| x.downcase.gsub(/[^a-z0-9\s]/i, ' ') }
  end
end

#
# text = Taylor.new
# path = './swift_stats/test.txt'
#
# puts text.read_and_strip(path)
#


# class FileIO
#   def self.get_data(filepath)
#     CSV.open(filepath, headers: true)
#   end
# end
#


#
#
# CSV.foreach('./swift_stats/test.txt') do |row|
#   CSV.parse(row.gsub('"', ''))
#   puts row
# end
#
#
#
# CSV.parse(csv_line.gsub('\"', '""')).first
#
# csv_string = CSV.generate do |csv|
#   csv << ["row", "of", "CSV", "data"]
#   csv << ["another", "row"]
#   # ...
# end
#
# line1 = CSV.read('./swift_stats/test.txt')
#
# puts line1
