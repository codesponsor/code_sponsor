import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { Card, CardBody, Progress } from 'reactstrap';
import { Bar, Line } from 'react-chartjs-2';
import classNames from 'classnames';
import { mapToCssModules } from 'reactstrap/lib/utils';
import FaviconImage from '../../components/FaviconImage/';

const propTypes = {
  property: PropTypes.object.isRequired,
  color: PropTypes.string,
  children: PropTypes.node,
  className: PropTypes.string,
  cssModule: PropTypes.object
};

const card = { style: { height: 200 }, classes: "" };

const brandPrimary = '#20a8d8';
const brandSuccess = '#4dbd74';
const brandInfo = '#63c2de';
const brandWarning = '#f8cb00';
const brandDanger = '#f86c6b';

const cardChartData3 = {
  labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
  datasets: [
    {
      label: 'My First dataset',
      backgroundColor: 'rgba(255, 255, 255, .2)',
      borderColor: 'rgba(71, 9, 87, .35)',
      data: [78, 81, 80, 45, 34, 12, 40]
    }
  ],
};

const cardChartOpts3 = {
  maintainAspectRatio: false,
  legend: {
    display: false
  },
  scales: {
    xAxes: [{
      display: false
    }],
    yAxes: [{
      display: false
    }],
  },
  elements: {
    line: {
      borderWidth: 2
    },
    point: {
      radius: 0,
      hitRadius: 10,
      hoverRadius: 4,
    },
  }
}

class PropertyCard extends Component {
  render() {
    const { property, className, cssModule, color, children, variant, ...attributes } = this.props;
    const { name, url } = property;

    const classes = mapToCssModules(classNames(className, card.classes), cssModule);

    return (
      <Card style={card.style} className={classes} {...attributes}>
        <div className="chart-wrapper px-0" style={{ height: '70px' }}>
          <Line data={cardChartData3} options={cardChartOpts3} height={70} />
        </div>
        <CardBody>
          <div className="h5 m-0"><FaviconImage url={url} /> {name}</div>
          <a href={url} target="_blank"><small className="text-muted">{url}</small></a>
          <div>{children}</div>
        </CardBody>
      </Card>
    )
  }
}

PropertyCard.propTypes = propTypes;

export default PropertyCard;
