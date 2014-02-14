# łączenie plików logu + sortowanie wg czasu
# parametry: plik1 plik2 plik3 ...
# stdout -- złączony strumień
#
# dla Rails 3

files = ARGV
ts = nil
out = {}

files.each do |file|
  File.open(file, 'r').each do |line|
    ts = / at (.+)/.match(line)[1] if line =~ /^Started/
    out[ts] = [] unless out[ts]
    out[ts] << line
  end
end

out.keys.sort.each do |key|
  puts out[key]
end
