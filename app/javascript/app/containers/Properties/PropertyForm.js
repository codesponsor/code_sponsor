import React, { Component } from 'react';
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

class PropertyForm extends Component {
  render() {
    return (
      <Card>
        <CardHeader>
          <strong>Property</strong>
          <small> Form</small>
        </CardHeader>
        <CardBody>
          <FormGroup>
            <Label htmlFor="name">Name</Label>
            <Input type="text" id="name" placeholder="Enter the property name" />
          </FormGroup>
          <FormGroup>
            <Label htmlFor="url">URL</Label>
            <Input type="text" id="url" placeholder="https://" />
          </FormGroup>
          <div className="form-actions">
            <Button type="submit" color="primary" className="mr-2">Save Property</Button>
            <Button color="secondary">Cancel</Button>
          </div>
        </CardBody>
      </Card>
    );
  }
}

export default PropertyForm;
