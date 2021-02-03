//
//  ViewController.swift
//  Strater3
//
//  Created by kyaw htet aung on 2021/01/28.
//

import UIKit

class MovieViewController: UIViewController {

    @IBOutlet weak var tableViewMovies: UITableView!
    @IBOutlet weak var viewForToolbar: UIView!
    @IBOutlet weak var ivMenu: UIImageView!
    @IBOutlet weak var ivSearch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        registerTableViewCell()
        
    }
    
    private func registerTableViewCell(){
        tableViewMovies.dataSource = self
        
//        tableViewMovies.register(UINib(nibName: String(describing: MovieSliderTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: MovieSliderTableViewCell.self))
        
        tableViewMovies.registerForCell(identifier: MovieSliderTableViewCell.identifier)
        tableViewMovies.registerForCell(identifier: PopularFilmTableViewCell.identifier)
        tableViewMovies.registerForCell(identifier: MovieShowTImeTableViewCell.identifier)
        tableViewMovies.registerForCell(identifier: GenreTableViewCell.identifier)
        tableViewMovies.registerForCell(identifier: ShowCaseTableViewCell.identifier)
        tableViewMovies.registerForCell(identifier: BestActorTableViewCell.identifier)
    }
    
}
    
extension MovieViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        
//        case 0 :
//            guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: MovieSliderTableViewCell.self, for: indexPath) as? MovieSliderTableViewCell else {
//                return UITableViewCell()
//            }
//            return cell
        
        
        case MovieType.MOVIE_SLIDER.rawValue:
            let cell = tableView.dequeCell(identifier: MovieSliderTableViewCell.identifier, indexPath: indexPath)
            return cell
            
        case MovieType.MOVIE_POPULAR.rawValue:
            let cell = tableView.dequeCell(identifier: PopularFilmTableViewCell.identifier, indexPath: indexPath)
            return cell
        case MovieType.MOVIE_SHOWTIME.rawValue:
            let cell = tableView.dequeCell(identifier: MovieShowTImeTableViewCell.identifier, indexPath: indexPath)
            return cell
        case MovieType.MOVIE_GENRE.rawValue:
            let cell = tableView.dequeCell(identifier: GenreTableViewCell.identifier, indexPath: indexPath)
            return cell
        case MovieType.MOVIE_SHOWCASE.rawValue:
            let cell = tableView.dequeCell(identifier: ShowCaseTableViewCell.identifier, indexPath: indexPath)
            return cell
        case MovieType.MOVIE_BESTACTOR.rawValue:
            let cell = tableView.dequeCell(identifier: BestActorTableViewCell.identifier, indexPath: indexPath)
            return cell
        default:
            return UITableViewCell()
        }
        
        
    }
    
    
}
