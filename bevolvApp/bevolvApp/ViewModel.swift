
import Foundation

class FetchData {
    func getPublicationDetails(completion: @escaping (Publication) -> ()) {
        guard let url = URL(string: "https://chroniclingamerica.loc.gov/search/titles/results/?terms=oakland&format=json&page=1") else { return }

        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            do {
                let publications = try JSONDecoder().decode(Publication.self, from: data)
                print(publications)
                DispatchQueue.main.async {
                    completion(publications)
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }
        .resume()
    }
}
