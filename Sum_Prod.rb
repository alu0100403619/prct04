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

def producto(mat_a, mat_b)
  mult = Array.new{Array.new()}
  for i in (0...mat_a.length)
    aux2 = Array.new()
    for j in (0...mat_b[0].length)
      #mult [i][j] = 0
      aux = 0
      for k in (0...mat_b.length)
        #mult[i][j] = mult[i][j] + (mat_a[i][k] * mat_b[k][j])
        aux = aux + (mat_a[i][k] * mat_b[k][j])
      end #for k
      aux2 << aux
    end #for j
    mult << aux2
  end #for i
  #puts "Mostrando resultado"
  #mostrar(mult)
  mult
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

mult = producto(mat1, mat2)
puts "Mostrando Matriz 1"
show(mat1)
puts "Mostrando Matriz 2"
show(mat2)
puts "Mostrando Resultado Multiplicación"
show(mult)