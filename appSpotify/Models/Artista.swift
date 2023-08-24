
struct SpotifyResponse: Decodable {
    struct Image: Decodable {
        let url: String
    }
    
    struct Followers: Decodable {
        let total: Int
    }
    
    struct ExternalUrls: Decodable {
        let spotify: String
    }
    
    struct Artista: Decodable {
        let externalUrls: ExternalUrls
        let followers: Followers
        let genres: [String]
        let images: [Image]
        let name: String
        let popularity: Int
    }
    
    let artistas: [Artista]
}
