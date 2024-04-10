#!/bin/bash

echo "Digite as medidas dos lados de um paralelepipedo, para calcular a diagonal"
echo "lado a: "
read a
echo "lado b: "
read b
echo "lado c: "
read c

echo "Para calcular a diagonal devemos fazer a raiz quadrada de  a²+b²+c²"
a2=$[a**2]
b2=$[b**2]
c2=$[c**2]

d=$[a2+b2+c2]
diagonal=$(echo "sqrt($d)" | bc -l)

echo "Valor da diagonal: $diagonal"
