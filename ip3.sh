#!/bin/bash

#funcao: raiz(2)*cos(x-pi/4)

echo "Vamos realizar o calculo de uma funcao f(x) = raiz(2)*cos(x-pi/4)"
echo "Vamos arredondar pi para 3.14"

pi=3.14
raiz_quadrada=$(echo "scale=2; sqrt(2)" | bc -l)
soma=0

for ((x=1; x<=20; x++)) do 
	cos=$(echo "$raiz_quadrada * c($x * ($pi/4))" | bc -l)
	soma=$(echo "$cos + $soma" | bc -l)
done

echo "o resultado da expressao eh: $soma"
