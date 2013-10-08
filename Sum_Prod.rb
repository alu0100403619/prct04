def read(mat, fils, cols)
  for i in (0...fils)
    aux = Array.new()
    for j in (0...cols)
      print "mat[#{i}][#{j}]: "
      value = gets
      #mat[i][j] = value.to_i
      aux << value.to_i
    end #for j
    mat << aux
  end #for i
end

def show(mat)
  for i in (0...mat.length)
    for j in (0...mat[0].length)
      print "#{mat[i][j]}  "
    end #for j
    puts ""
  end #for i
end

def sum(mat_a, mat_b)
  sum = Array.new()

  for i in (0...mat_a.length)
    sum[i] = Array.new()
    for j in (0...mat_b[0].length)
      sum [i][j] = (mat_a[i][j] + mat_b[i][j])
    end #for j
  end #for i

  sum
end

fils = 3
cols = 3
mat1 = Array.new{Array.new()}
puts "Leyendo Matriz 1"
read(mat1, fils, cols)
mat2 = Array.new{Array.new()}
puts "Leyendo Matriz 2"
read(mat2, fils, cols)

suma = sum(mat1, mat2)
puts "Mostrando Resultado Suma"
show(suma)


