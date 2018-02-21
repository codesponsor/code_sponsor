import React, { Component } from 'react';
import PropTypes from 'prop-types';
import _ from 'lodash';

const propTypes = {
  url: PropTypes.string.isRequired,
  width: PropTypes.number,
  height: PropTypes.number
};

const defaultProps = {
  width: 16,
  height: 16
};

class FaviconImage extends Component {
  static displayName = 'FaviconImage';
  
  render() {
    const { url, width, height, ...attributes } = this.props;

    const domain = _.replace(url, /^https?:\/\//, '');
    if (domain === '') { return };
    
    const imageUrl = `//www.google.com/s2/favicons?domain=${domain}`;
    return <img src={imageUrl} width={width} height={height} />;
  }
}

FaviconImage.propTypes = propTypes;
FaviconImage.defaultProps = defaultProps;

export default FaviconImage;