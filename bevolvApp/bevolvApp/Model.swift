import Foundation


struct Publication: Codable{
    let totalItems: Int
    let endIndex: Int
    let startIndex: Int
    let itemsPerPage: Int
    let items: [PublicationItem]
}

struct PublicationItem: Codable,  Equatable, Identifiable  {
    let essay: [String]
    let placeOfPublication: String
    let startYear: Int
    let publisher: String?
    let county: [String]
    let edition: String?
    let frequency: String?
    let url: String
    let id: String
    let subject: [String]
    let city: [String]
    let language: [String]
    let title: String
    let holdingType: [String]
    let endYear: Int
    let altTitle: [String]
    let note: [String]
    let lccn: String
    let state: [String]
    let place: [String]
    let country: String
    let type: String
    let titleNormal: String
    let oclc: String

    enum CodingKeys: String, CodingKey {
        case essay
        case placeOfPublication = "place_of_publication"
        case startYear = "start_year"
        case publisher
        case county
        case edition
        case frequency
        case url
        case id
        case subject
        case city
        case language
        case title
        case holdingType = "holding_type"
        case endYear = "end_year"
        case altTitle = "alt_title"
        case note
        case lccn
        case state
        case place
        case country
        case type
        case titleNormal = "title_normal"
        case oclc
    }
}

