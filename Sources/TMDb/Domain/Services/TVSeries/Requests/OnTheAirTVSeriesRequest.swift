import Foundation

final class OnTheAirTVSeriesRequest: DecodableAPIRequest<TVSeriesPageableList> {

    init(page: Int? = nil, language: String? = nil) {
        let path = "/tv/on_the_air"
        let queryItems = APIRequestQueryItems(page: page, language: language)

        super.init(path: path, queryItems: queryItems)
    }

}

extension APIRequestQueryItems {

    fileprivate init(page: Int?, language: String? = nil) {
        self.init()

        if let page {
            self[.page] = page
        }

        if let language {
            self[.language] = language
        }
    }

}
