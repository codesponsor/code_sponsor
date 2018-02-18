import React, { Component } from 'react';

class Footer extends Component {
  render() {
    return (
      <footer className="app-footer">
        <span><a href="https://codesponsor.io">Code Sponsor</a> &copy; 2018 ConsenSys.</span>
        <span className="ml-auto">Powered by <a href="https://genesisui.com">GenesisUI</a></span>
      </footer>
    )
  }
}

export default Footer;
