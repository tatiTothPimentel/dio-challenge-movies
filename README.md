
# Imagine que você está construindo um sistema de reservas de filmes para um cinema. 

O sistema deve permitir que os clientes escolham filmes e reservem ingressos para eles. Você precisa usar uma programação voltada para objetos e os conceitos que você conhece: Controles de Fluxos, Coleções, Funções e Fechamentos, Enuns e Estruturas, e Concorrências.

Aqui estão os requisitos para o sistema:

* Crie uma classe chamada Movie que representará um filme. Cada filme deve ter os seguintes atributos:
    - Título
    - Diretor
    - Ano de lançamento
    - Gênero
    
* Crie uma enumeração chamada Genre que representará os gêneros do filme. Ela deve conter pelo menos três casos, exemplo:
 - “Ação”, 
 - “Comédia”
 - “Drama”.
 
* Crie uma estrutura chamada Reservation que representará uma reserva de ingressos para um filme. Cada reserva deve ter os seguintes atributos:
    - Filme (um objeto de classe Movie)
    - Número de ingressos reservados (um número inteiro)
    - Nome do cliente que fez a reserva
    
* Crie uma classe chamada Cinema que representará o cinema em si. A classe deverá conter:
 - Uma lista de filmes disponíveis
 - Uma lista de reservas feita pelos clientes.
 
* Implemente um método na classe Cinema que permite adicionar filmes à lista de filmes disponíveis.

* Implemente um método na classe Cinema que permita que os clientes façam reservas de ingressos. E uma condição para saber se o número de ingressos reservados não excede a disponibilidade. 

* Implemente um método na classe Cinema que liste todas as reservas feitas por um cliente específico.

* Implemente um método na classe Cinema que lista todos os filmes disponíveis de um determinado gênero.

* Utilize controle de fluxo, certifique-se de lidar com casos como tentativa de reservar ingressos para filmes que não existem ou tentativa de reservar mais ingressos do que o disponível.

# Este desafio permitirá que você pratique uma programação orientada a objetos em Swift, bem como o uso de enumerações, estruturas e funções.
