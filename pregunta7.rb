# un nuevo catálogo que no incluya el último precio correspondiente a cada
# producto debido a que ya no comercializa productos de talla XS

class Product
attr_accessor :name,:sizes
  def initialize(name,*sizes)
      @name = name
      selec = sizes.select.with_index{ |word, idx| idx<3 }
      @sizes = selec.map(&:to_i)
  end

end


products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
ls = prod.split(', ')
products_list << Product.new(*ls)
end

file = File.open('new_catalogo.txt', 'w')
products_list.each do |product|
  file.puts "#{product.name}  #{product.sizes}"
end
