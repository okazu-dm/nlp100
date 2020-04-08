class MecabWrapper
  Morpheme = Struct.new(:surface, :base, :pos, :pos1)
  def self.process_morpheme(line)
    return nil if line.chomp == 'EOS'

    surface, raw_components = line.split
    components = raw_components.split(',')
    Morpheme.new(surface, components[-3], components[0], components[1])
  end
end

def process_neko
  res = []
  open('neko.txt.mecab').each_line do |line|
    morpheme = MecabWrapper.process_morpheme(line)
    res << morpheme unless morpheme.nil?
  end
  res
end

puts process_neko.join("\n") if $PROGRAM_NAME == __FILE__
