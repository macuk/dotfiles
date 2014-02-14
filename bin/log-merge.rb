# filtr dla wskazanego IP w podanych plikach
# parametry: ip plik1 plik2 plik3 ...
# stdout -- przefiltrowany strumień dla wskazanego IP

ip, *files = ARGV
start = false
ts = nil
out = {}

files.each do |file|
  File.open(file, 'r').each do |line|
    if line =~ /^Processing/
      ts = / at (.+)\)/.match(line)[1]
      start = (line =~ %r(#{ip}))
    end
    if start
      out[ts] = [] unless out[ts]
      out[ts] << line
    end
  end
end

out.keys.sort.each do |key|
  puts out[key]
end

