#!/bin/bash

function fatorial {
    F=1
    # Função para calcular o fatorial de um número
    for ((i=1; i<=$1; i++)); do
        F=$(echo "$F*$i" | bc -l)
        # Loop que multiplica o fatorial atual por cada número até o número passado como argumento
    done
    echo $F
    # Retorna o fatorial calculado
}

soma2=0
# Inicializa a variável soma2 com zero

for ((n=0; n<=50; n++)); do
    # Loop que itera de 0 a 50
    num=$(fatorial $n)
    # Calcula o fatorial de n chamando a função fatorial

    # Verificar se o número é ímpar
    if [ $((n % 2)) -eq 1 ]; then
        soma=$(echo "$num/($n*2+1)" | bc -l)
        # Se n é ímpar, calcula a parcela da série alternada e subtrai de soma2
        soma2=$(echo "$soma2 - $soma" | bc -l)
    else
        soma=$(echo "$num/($n*2+1)" | bc -l)
        # Se n é par, calcula a parcela da série alternada e adiciona a soma2
        soma2=$(echo "$soma2 + $soma" | bc -l)
    fi
done

echo "O resultado da expressão é: $soma2"
# Imprime o resultado final da série alternada

