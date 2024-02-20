//
//  ContentView.swift
//  HelloApollo
//
//  Created by 菅原元気 on 2024/02/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("fetch") {
            let apollo = GraphQLClient.shared.apollo
            let query = SW.Query()

            Task {
                let result = try! await withCheckedThrowingContinuation { continuation in
                    apollo.fetch(query: query) { result in
                        switch result {
                        case .success(let value):
                            continuation.resume(returning: value)
                        case .failure(let error):
                            continuation.resume(throwing: error)
                        }
                    }
                }

                result.data?.allFilms?.films?.forEach { film in
                    guard let title = film?.title else { return }
                    print(title)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
