//
//  ViewController.swift
//  LikeMindsDemo
//
//  Created by Sanjeev Kumar on 19/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var listTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var homeViewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupSearchBar()
        setupTableView()
        fetchArtists()
    }

    private func setupSearchBar() {
        searchBar.delegate = self
    }
    private func setupTableView() {
        listTableView.delegate = self
        listTableView.dataSource = self
        listTableView.register(UINib.init(nibName: "ListTableViewCell", bundle: nil), forCellReuseIdentifier: "ListTableViewCell")
    }
    
    // MARK: - Table Helping methods
    private func getListTableViewCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = listTableView.dequeueReusableCell(withIdentifier: "ListTableViewCell", for: indexPath) as! ListTableViewCell
        cell.configureCell(artist: homeViewModel.artistList[indexPath.row])
        return cell
    }
    
    // MARK: - Network Calls
    private func fetchArtists(searchText: String = "adele") {
        homeViewModel.fetchArtistsData(searchText: searchText) { [weak self] result in
            switch result {
            case .success(let data):
                print("Api call success")
                self?.listTableView.reloadData()
            case .failure(let error):
                print("Api call failled")
            }
        }
    }
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeViewModel.artistList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return getListTableViewCell(tableView: tableView, indexPath: indexPath)
    }
}

// MARK: - UITableViewDelegate
extension UIViewController: UITableViewDelegate {
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.view.endEditing(true)
    }
}

// MARK: - UISearchBarDelegate
extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.fetchArtists(searchText: searchText)
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.view.endEditing(true)
    }
}
