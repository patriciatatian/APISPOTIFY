import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var artistaGenero: UILabel!
    @IBOutlet weak var artistaSeguidores: UILabel!
    @IBOutlet weak var artistaNome: UILabel!
    @IBOutlet weak var artistaPopularidade: UILabel!
    @IBOutlet weak var artistaImageView: UIImageView!
    @IBOutlet weak var artistaTitulo: UILabel!
    
    var artista: Artista!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        artistaImageView.layer.cornerRadius = 8
        artistaImageView.layer.masksToBounds = true
        artistaImageView.contentMode = .scaleAspectFill
        artistaImageView.backgroundColor = .blue
        
        artistaTitulo.text = artista.title
    
    }
}
