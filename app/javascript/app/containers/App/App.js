import React, { Component } from 'react';
import { Switch, Route, Redirect } from 'react-router-dom';
import { Container } from 'reactstrap';

// Components
import Header from '../../components/Header/';
import Sidebar from '../../components/Sidebar/';
import Footer from '../../components/Footer/';
import Breadcrumb from '../../components/Breadcrumb/';

// Pages
import Dashboard from '../Dashboard/';
import Properties from '../Properties/';
import PropertyForm from '../Properties/PropertyForm';
import Property from '../Properties/Property';
import Distributions from '../Distributions/';
import Sponsors from '../Sponsors/';
import Campaigns from '../Campaigns/';
import Profile from '../Profile/';

class App extends Component {
  render() {
    return (
      <div className="app">
        <Header />
        <div className="app-body">
          <Sidebar {...this.props} />
          <main className="main">
            <Breadcrumb />
            <Container fluid>
              <Switch>
                <Route path="/dashboard" name="Dashboard" component={Dashboard} />
                <Route exact strict path="/properties" name="Properties" component={Properties} />
                <Route path="/properties/new" name="Property Form" component={PropertyForm} />
                <Route path="/properties/:propertyId" name="Property" component={Property} />
                <Route path="/properties/:propertyId/edit" name="Edit Property" component={PropertyForm} />
                <Route path="/distributions" name="Distributions" component={Distributions} />
                <Route path="/sponsors" name="Sponsors" component={Sponsors} />
                <Route path="/campaigns" name="Campaigns" component={Campaigns} />
                <Route path="/profile" name="Profile" component={Profile} />
                <Redirect from="/" to="/dashboard" />
              </Switch>
            </Container>
          </main>
        </div>
        <Footer />
      </div>
    );
  }
}

export default App;
