# parametry -- 1 czas od, 2 czas do, plik

start, finish, file = ARGV

start_line = `grep -n '#{start}' #{file} | head -n 1 | cut -d':' -f1`
finish_line = `grep -n '#{finish}' #{file} | head -n 1 | cut -d':' -f1`

raise 'UPS' if start_line.to_i == 0
raise 'UPS' if finish_line.to_i == 0

lines = finish_line.to_i - start_line.to_i

puts `head -n #{finish_line.to_i} #{file} | tail -n #{lines}`
