//
//  NetworkResource+TMDB.swift
//  MovieNote
//
//  Created by PX Chen on 2021/8/22.
//

import Foundation

extension NetworkResource {

    static func movies(query: String) -> NetworkResource<Movies> {
        let url = ApiConstants.baseUrl.appendingPathComponent("/search/movie")
        let parameters: [String : CustomStringConvertible] = [
            "api_key": ApiConstants.apiKey,
            "query": query,
            "language": Locale.preferredLanguages[0]
            ]
        return NetworkResource<Movies>(url: url, parameters: parameters)
    }

    static func details(movieId: Int) -> NetworkResource<Movie> {
        let url = ApiConstants.baseUrl.appendingPathComponent("/movie/\(movieId)")
        let parameters: [String : CustomStringConvertible] = [
            "api_key": ApiConstants.apiKey,
            "language": Locale.preferredLanguages[0]
            ]
        return NetworkResource<Movie>(url: url, parameters: parameters)
    }
    
    static func trending() -> NetworkResource<TrendingResponse> {
        let url = ApiConstants.baseUrl.appendingPathComponent("/trending/all/day")
        let parameters: [String : CustomStringConvertible] = [
            "api_key": ApiConstants.apiKey,
            "language": Locale.preferredLanguages[0]
            ]
        return NetworkResource<TrendingResponse>(url: url, parameters: parameters)
    }
}
