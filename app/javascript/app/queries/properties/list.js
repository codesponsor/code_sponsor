import gql from 'graphql-tag';

export default gql`
  query {
    allProperties {
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