import UIKit

// Classe representando um filme
class Movie {
    var id: UUID
    var title: String
    var director: String
    var releaseYear: Int
    var gender: Genre
    var avaliableSeats: Int
    
    init(id: UUID, title: String, director: String, releaseYear: Int, gender: Genre, avaliableSeats: Int) {
        self.id = id
        self.title = title
        self.director = director
        self.releaseYear = releaseYear
        self.gender = gender
        self.avaliableSeats = avaliableSeats
    }
    
    // Método que atualiza a quantidade de acentos disponíveis, sempre diminuindo o número de reservas solicitadas da quantidade disponível
    func updateAvaliableSeats(numberTickets: Int) {
        self.avaliableSeats -= numberTickets
    }
}

// Enum representando os gêneros dos filmes
enum Genre {
    case action
    case comedy
    case drama
}

// Struct que representa a reserva de um filme
struct Reservation {
    var movie: Movie
    var numberTickets: Int
    var clientName: String
}

// Classe que representa o cinema
class MovieTheater {
    var listMovie: [Movie]
    var listReservation: [Reservation]
    
    init(listMovie: [Movie], listReservation: [Reservation]) {
        self.listMovie = listMovie
        self.listReservation = listReservation
    }
    
    // Método que permite adicionar filmes em uma lista de filmes
    func addMovie(listMovie: Movie) {
        self.listMovie.append(listMovie)
    }
    
    // Método que permite a reserva de ingresso para um determinado filme se o mesmo existir e se tiver acento disponível
    func reservationTickets(movie: Movie, clientName: String, numberTickets: Int) {
        if !listMovie.contains(where: { $0.id == movie.id }) {
            print("O filme \(movie.title) não está mais em cartaz")
            return
        }
        if movie.avaliableSeats >= numberTickets {
            listReservation.append(Reservation(movie: movie, numberTickets: numberTickets, clientName: clientName))
            movie.updateAvaliableSeats(numberTickets: numberTickets)
            print("Sua reserva para o filme \(movie.title) foi realizada com sucesso")
        } else {
            print("Infelizmente sua reserva exede o número de ingressos disponíveis")
        }
    }
    
    // Método que lista todas as reservas feitas por um cliente específico
    func reservationByClient(clientName: String) -> [Reservation] {
        return listReservation.filter { $0.clientName == clientName }
    }
    
    // Método que lista todos os filmes disponíveis de um determinado gênero
    func getMoviesByGenre(genre: Genre) -> [Movie] {
        return listMovie.filter { movie in
            movie.gender == genre
        }
    }
}

// Criação da instância de 4 filmes
let movie1 = Movie(id: UUID(), title: "Homem aranha 1", director: "Sam Raimi", releaseYear: 2002, gender: .action, avaliableSeats: 20)
let movie2 = Movie(id: UUID(), title: "Homem aranha 2", director: "Sam Raimi", releaseYear: 2004, gender: .action, avaliableSeats: 20)
let movie3 = Movie(id: UUID(), title: "As branquelas", director: "Keenen Ivory Wayans", releaseYear: 2004, gender: .comedy, avaliableSeats: 18)
let movie4 = Movie(id: UUID(), title: "Uma Lição de Amor", director: "Jessie Nelson", releaseYear: 2002, gender: .drama, avaliableSeats: 18)

// Criando a instância do cinema já com alguns filmes disponíveis
let movieTheater = MovieTheater(listMovie: [movie1, movie2], listReservation: [])

// Adicionando um filme no cinema
movieTheater.addMovie(listMovie: movie3)

// Fazendo a reserva de um filme e acentos por cliente
movieTheater.reservationTickets(movie: movie1, clientName: "Tatiane", numberTickets: 19)
movieTheater.reservationTickets(movie: movie2, clientName: "Tatiane", numberTickets: 9)
movieTheater.reservationTickets(movie: movie3, clientName: "Maira", numberTickets: 5)
movieTheater.reservationTickets(movie: movie4, clientName: "Mabel", numberTickets: 1)

// Conferindo atráves do print quantos acentos ainda tenho disponível para o movie1 e movie3
print(movie1.avaliableSeats)
print(movie3.avaliableSeats)

// Listando os filmes com seu determinado gênero
let actionMovies = movieTheater.getMoviesByGenre(genre: .action)

// Listando as reservas de um cliente
let reservationTati = movieTheater.reservationByClient(clientName: "Tatiane")

