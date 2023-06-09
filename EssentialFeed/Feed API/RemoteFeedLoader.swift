//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Ignacio Esau Nevarez Zuniga on 02/07/23.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL)
}

public class RemoteFeedLoader {
    
    private let url: URL
    private let client: HTTPClient
    
    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load() {
        client.get(from: url)
    }
}
