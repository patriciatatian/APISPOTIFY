import UIKit

class ArtistaCell: UITableViewCell { //Criação dos componentes da primeira tela e configuramos da forma que a gente queria
    private let horizontalStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 16
        return stack
    }()
    
    private let imageArtistaView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 18
        imageView.layer.masksToBounds = true
        imageView.backgroundColor = .blue
        return imageView
        
        
    }()
    private let verticalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 8
        stack.distribution = .equalCentering
        return stack
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .black
        label.numberOfLines = 0
        return label
        
    }()
    private let popularidadeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .darkGray
        label.numberOfLines = 0
        return label
        
    }()
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) { //utilizado quando a interface é criada via código
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
        addViewsInHierarchy()
        setupeConstraints()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        nil
    }
    
    
    public func setup(Artista: Artista){
        titleLabel.text = Artista.title
        popularidadeLabel.text = "Popularidade: \(Artista.popularidade)"
    }
    
    private func setupView() {
        selectionStyle = .none

    }
    
    private func addViewsInHierarchy() { //adcionamos as viewa na hierarquia
        contentView.addSubview(horizontalStack)
        horizontalStack.addArrangedSubview(imageArtistaView) //foto do artista na primeira tela
        horizontalStack.addArrangedSubview(verticalStack)
        verticalStack.addArrangedSubview(UIView())
        verticalStack.addArrangedSubview(titleLabel)
        verticalStack.addArrangedSubview(popularidadeLabel)
        verticalStack.addArrangedSubview(UIView())
    }
    
    private func setupeConstraints() { //fizemos o setup das constraints
        NSLayoutConstraint.activate([
            horizontalStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            horizontalStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            horizontalStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            horizontalStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            imageArtistaView.widthAnchor.constraint(equalToConstant: 90),
            imageArtistaView.heightAnchor.constraint(equalToConstant: 120)
        ])
        
    }
    
    
}
