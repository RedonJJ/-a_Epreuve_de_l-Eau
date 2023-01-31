for i in 0..9
    for j in 0..9
      for k in i..9
        for l in (j+1)..9
          puts "#{i}#{j} #{k}#{l}"
        end
      end
    end
  end
  