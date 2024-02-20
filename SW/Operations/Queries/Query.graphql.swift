// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension SW {
  class Query: GraphQLQuery {
    static let operationName: String = "Query"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query Query { allFilms { __typename films { __typename title director releaseDate speciesConnection { __typename species { __typename name classification homeworld { __typename name } } } } } }"#
      ))

    public init() {}

    struct Data: SW.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { SW.Objects.Root }
      static var __selections: [ApolloAPI.Selection] { [
        .field("allFilms", AllFilms?.self),
      ] }

      var allFilms: AllFilms? { __data["allFilms"] }

      /// AllFilms
      ///
      /// Parent Type: `FilmsConnection`
      struct AllFilms: SW.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { SW.Objects.FilmsConnection }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("films", [Film?]?.self),
        ] }

        /// A list of all of the objects returned in the connection. This is a convenience
        /// field provided for quickly exploring the API; rather than querying for
        /// "{ edges { node } }" when no edge data is needed, this field can be be used
        /// instead. Note that when clients like Relay need to fetch the "cursor" field on
        /// the edge to enable efficient pagination, this shortcut cannot be used, and the
        /// full "{ edges { node } }" version should be used instead.
        var films: [Film?]? { __data["films"] }

        /// AllFilms.Film
        ///
        /// Parent Type: `Film`
        struct Film: SW.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { SW.Objects.Film }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("title", String?.self),
            .field("director", String?.self),
            .field("releaseDate", String?.self),
            .field("speciesConnection", SpeciesConnection?.self),
          ] }

          /// The title of this film.
          var title: String? { __data["title"] }
          /// The name of the director of this film.
          var director: String? { __data["director"] }
          /// The ISO 8601 date format of film release at original creator country.
          var releaseDate: String? { __data["releaseDate"] }
          var speciesConnection: SpeciesConnection? { __data["speciesConnection"] }

          /// AllFilms.Film.SpeciesConnection
          ///
          /// Parent Type: `FilmSpeciesConnection`
          struct SpeciesConnection: SW.SelectionSet {
            let __data: DataDict
            init(_dataDict: DataDict) { __data = _dataDict }

            static var __parentType: ApolloAPI.ParentType { SW.Objects.FilmSpeciesConnection }
            static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("species", [Specy?]?.self),
            ] }

            /// A list of all of the objects returned in the connection. This is a convenience
            /// field provided for quickly exploring the API; rather than querying for
            /// "{ edges { node } }" when no edge data is needed, this field can be be used
            /// instead. Note that when clients like Relay need to fetch the "cursor" field on
            /// the edge to enable efficient pagination, this shortcut cannot be used, and the
            /// full "{ edges { node } }" version should be used instead.
            var species: [Specy?]? { __data["species"] }

            /// AllFilms.Film.SpeciesConnection.Specy
            ///
            /// Parent Type: `Species`
            struct Specy: SW.SelectionSet {
              let __data: DataDict
              init(_dataDict: DataDict) { __data = _dataDict }

              static var __parentType: ApolloAPI.ParentType { SW.Objects.Species }
              static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("name", String?.self),
                .field("classification", String?.self),
                .field("homeworld", Homeworld?.self),
              ] }

              /// The name of this species.
              var name: String? { __data["name"] }
              /// The classification of this species, such as "mammal" or "reptile".
              var classification: String? { __data["classification"] }
              /// A planet that this species originates from.
              var homeworld: Homeworld? { __data["homeworld"] }

              /// AllFilms.Film.SpeciesConnection.Specy.Homeworld
              ///
              /// Parent Type: `Planet`
              struct Homeworld: SW.SelectionSet {
                let __data: DataDict
                init(_dataDict: DataDict) { __data = _dataDict }

                static var __parentType: ApolloAPI.ParentType { SW.Objects.Planet }
                static var __selections: [ApolloAPI.Selection] { [
                  .field("__typename", String.self),
                  .field("name", String?.self),
                ] }

                /// The name of this planet.
                var name: String? { __data["name"] }
              }
            }
          }
        }
      }
    }
  }

}