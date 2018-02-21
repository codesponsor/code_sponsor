import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import { gql } from 'apollo-boost';
import { Query } from 'react-apollo';
import {
  Badge,
  Row,
  Col,
  Card,
  CardHeader,
  CardBody,
  Table,
  Pagination,
  PaginationItem,
  PaginationLink
} from 'reactstrap';
import PropertyCard from './PropertyCard';
import { default as LIST_PROPERTIES } from '../../queries/properties/list';

const renderProperties = (properties) => {
  return properties.map((property) =>
    <Col xs="12" sm="6" lg="3" key={`property-${property.id}`}>
      <PropertyCard property={property}>
        <Row className="mt-3">
          <Col>
            <Link className="btn btn-sm btn-outline-primary btn-block" to={`/properties/${property.id}`}>Details</Link>
          </Col>
          <Col>
            <Link className="btn btn-sm btn-outline-secondary btn-block" to={property.url} target="_blank">Visit</Link>
          </Col>
        </Row>
      </PropertyCard>
    </Col>
  );
}

const Properties = () => (
  <Query query={LIST_PROPERTIES}>
    {({ loading, error, data }) => {
      if (loading) return <div>Loading...</div>;
      if (error) {
        console.log(error);
        return <div>Error :(</div>;
      }

      return (
        <div className="animated fadeIn">
          <Row>
            {renderProperties(data.allProperties)}
            <Col xs="12" sm="6" lg="3" key={`property-new`}>
              <Card>
                <CardBody style={{ height: 200 }}>
                  <Link to="/properties/new" className="align-middle mt-5 btn btn-lg btn-link btn-block">
                    <i className="fal fa-plus mr-2" />
                    Add New Property
                  </Link>
                </CardBody>
              </Card>
            </Col>
          </Row>
        </div>
      );
    }}
  </Query>
);

export default Properties;
