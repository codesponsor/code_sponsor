import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter, Route, Switch } from 'react-router-dom';

// Styles
import 'font-awesome/css/font-awesome.min.css';
import '../scss/style.scss';

// Containers
import App from './containers/App/';
import Page404 from './containers/Page404/';
import Page500 from './containers/Page500/';

ReactDOM.render((
  <BrowserRouter>
    <Switch>
      <Route exact path="/404" name="Page 404" component={Page404} />
      <Route exact path="/500" name="Page 500" component={Page500} />
      <Route path="/" name="Home" component={App} />
    </Switch>
  </BrowserRouter>
), document.getElementById('root'));
