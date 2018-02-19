import React, { Component } from 'react';
import { Link } from 'react-router-dom';
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

class Properties extends Component {
  render() {
    return (
      <div className="animated fadeIn">
        <Card>
          <CardHeader>
            <i className="fa fa-align-justify"></i> Properties
            <Link className="btn btn-primary btn-sm pull-right" to="/properties/new">Add Property</Link>
          </CardHeader>
          <CardBody>
            <Table responsive>
              <thead>
                <tr>
                  <th>Name</th>
                  <th>URL</th>
                  <th className="text-center">Impressions</th>
                  <th className="text-center">Clicks</th>
                  <th />
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>jsbin</td>
                  <td><a href="https://jsbin.com" target="_blank">https://jsbin.com</a></td>
                  <td className="text-center">33,291</td>
                  <td className="text-center">2,095</td>
                  <td className="text-right">
                    <Link to="/properties/jsbin" className="btn btn-sm btn-outline-primary">View</Link>
                    &nbsp;
                    <Link to="/properties/jsbin/edit" className="btn btn-sm btn-outline-info">Edit</Link>
                  </td>
                </tr>
                <tr>
                  <td>jsbin</td>
                  <td><a href="https://jsbin.com" target="_blank">https://jsbin.com</a></td>
                  <td className="text-center">33,291</td>
                  <td className="text-center">2,095</td>
                  <td className="text-right">
                    <Link to="/properties/jsbin" className="btn btn-sm btn-outline-primary">View</Link>
                    &nbsp;
                    <Link to="/properties/jsbin/edit" className="btn btn-sm btn-outline-info">Edit</Link>
                  </td>
                </tr>
                <tr>
                  <td>jsbin</td>
                  <td><a href="https://jsbin.com" target="_blank">https://jsbin.com</a></td>
                  <td className="text-center">33,291</td>
                  <td className="text-center">2,095</td>
                  <td className="text-right">
                    <Link to="/properties/jsbin" className="btn btn-sm btn-outline-primary">View</Link>
                    &nbsp;
                    <Link to="/properties/jsbin/edit" className="btn btn-sm btn-outline-info">Edit</Link>
                  </td>
                </tr>
              </tbody>
            </Table>
          </CardBody>
        </Card>
      </div>
    );
  }
}

export default Properties;
