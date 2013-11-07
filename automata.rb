# coding: utf-8
#mi tabla de estados
transicion= [[1,3,3],[1,2,3],[3,3,3]]
#introducir el identificador
puts "Introduce autómata"
STDOUT.flush
automata=gets.chomp
#longitud del identificador
l=automata.length()
#cambio de estados
i=0
(0..(l-1)).each do |n|
	if automata.split('')[n]=~ /[A-Za-z]/ 
 		j=0
 	elsif automata.split('')[n]=~ /[0-9]/ 
 		j=1
 	else
 		j=2
 	end
 	i=transicion[i][j]
 	if i==3 then
 		puts "ERROR"
 		break
 	end
 	if n==l-1 and i==2 
 		puts "CORRECTO"
 	end
end
if i!=2 and i!=3 
	puts "ERROR"
end
