import Apollo
import Foundation

final class GraphQLClient {
    static let shared = GraphQLClient()

    let apollo = {
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let client = URLSessionClient()
        let provider = DefaultInterceptorProvider(client: client, store: store)
        let url = URL(string: "https://swapi-graphql.netlify.app/.netlify/functions/index")!
        let transport = RequestChainNetworkTransport(
            interceptorProvider: provider,
            endpointURL: url
        )
        return ApolloClient(networkTransport: transport, store: store)
    }()

    private init() {}
}
