import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import {
  Row,
  Col,
  Button,
  ButtonDropdown,
  DropdownToggle,
  DropdownMenu,
  DropdownItem,
  Card,
  CardHeader,
  CardFooter,
  CardBody,
  Collapse,
  Form,
  FormGroup,
  FormText,
  Label,
  Input,
  InputGroup,
  InputGroupAddon,
  InputGroupButton
} from 'reactstrap';

class Property extends Component {
  render() {
    return (
      <Card>
        <CardBody>
          <Link className="btn btn-outline-primary btn-sm pull-right" to="/properties/jsbin/edit">Edit Property</Link>
          <h3>Property</h3>
        </CardBody>
      </Card>
    );
  }
}

export default Property;
