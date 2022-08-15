
// Cálculo do valor da passagem por semana
// recebe o valor de uma passagem e quantidade de passagens por semana
double valorSemana(double valorUmaPassagem, int quantidadePassagens) {
    return quantidadePassagens * valorUmaPassagem;
}

// Cálculo do valor de passagens por mês
double valorMes(double valorSemana) {
    return 5 * valorSemana;
}

// Cálculo final com a taxa de boletos
double taxaBoleto(double valorTotal, double taxa) {
    return valorTotal + taxa; 
}

void main() {
  var umaPassagem = 4.80;
  var taxa = 2.40;
  var numeroPassagensDia = [4,2,4,2,2];
  var quantidadePassagens = 0;
  
  for (final numeroPassagem in numeroPassagensDia) {
      quantidadePassagens = quantidadePassagens + numeroPassagem;
  }

  var resultado = taxaBoleto(valorMes(valorSemana(umaPassagem, quantidadePassagens)),taxa);

  print('\n\n O valor final de gasto no ônibus é: " + "R\$ ${resultado} \n\n');
}


