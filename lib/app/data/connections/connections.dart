class Connections {
  String getAllAlbums() {
    return """
      query (\$options: PageQueryOptions) {
        posts(options: \$options) {
          data {
            id
            title
          }
          meta {
            totalCount
          }
        }
      }
    """;
  }
}
