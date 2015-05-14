# This looks at codes.tsv and if it finds any codes like AGR01 then it
# makes sure there is also a code called AGR
HEADER_ROW = 0
FIRST_DATA_ROW = 1
LAST_DATA_ROW = -1
CODE_COLUMN = 0
SHORT_NAME_COLUMN = 1
LONG_NAME_COLUMN = 2

tsv = IO.readlines('codes.tsv').map { |row| row.split("\t") }
header = tsv[HEADER_ROW]
data = tsv[FIRST_DATA_ROW..LAST_DATA_ROW]

codes = {}
data.each { |row| codes[row[0]] = row }

data.each do |row|
  code = row[CODE_COLUMN]
  short_code = row[CODE_COLUMN][/(.*?)\d+/,1]
  if short_code && short_code.strip != ""
    unless codes.has_key?(short_code)
      new_row = []
      new_row[CODE_COLUMN] = short_code
      new_row[SHORT_NAME_COLUMN] = row[SHORT_NAME_COLUMN].gsub(/new\s+|existing\s+/i,'')
      new_row[LONG_NAME_COLUMN] = row[LONG_NAME_COLUMN].gsub(/new\s+|existing\s+/i,'')
      codes[short_code] = new_row
    end
  end
end

puts header.join("\t")
codes.values.sort_by { |row| row[CODE_COLUMN] }.each do |row|
  puts row.join("\t")
end
  

