import React from 'react';
import { Provider } from 'react-redux';
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import CreateStoryContainer from './story/create_story_container';
import Homepage from './homepage/homepage';
import ShowStory from './story/show';
import EditStory from './story/edit_story_container';
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../utils/route_util';
import Modal from './modal'
import Header from './header';


const App = () => (
  <div>
    <Header />
    <Switch>
      <ProtectedRoute path='/stories/new' component={CreateStoryContainer} />
      <ProtectedRoute path='/stories/:id' component={ShowStory} />
      //i dont need  /edit for now but maybe in the future
      <ProtectedRoute path='/stories/:id/edit' component={EditStory} />
      <Route exact path="/homepage" component={Homepage} />
      <Route exact path="/login" component={Modal} />
      <Route exact path="/signup" component={Modal} />
      // <Route exact path="/" component={Homepage} />
      <Redirect to="/homepage" />
    </Switch>
  </div>
);

export default App;
