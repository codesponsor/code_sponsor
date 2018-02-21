import gql from 'graphql-tag';

export default gql`
  query getProperty($id: ID!) {
    property(id: $id) {
      id
      name
      url
      user {
        id
        first_name
        last_name
        email
      }
    }
  }
`;