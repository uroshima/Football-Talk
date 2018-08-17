import React from 'react';
import { connect } from 'react-redux';
import { Route, Redirect, withRouter } from 'react-router-dom';
import { openModal } from '../actions/modal_actions';


const Auth = ({component: Component, path, loggedIn, exact}) => (
  <Route path={path} exact={exact} render={(props) => (
    !loggedIn ? (
      <Component {...props} />
    ) : (
      <Redirect to="/" />
    )
  )}/>
);

const Protected = ({ component: Component, path, loggedIn, openModal, exact }) => (
  <Route path={path} exact={exact} render={props => {
    if (loggedIn) {
      return <Component {...props} />
    } else {
      openModal('login')
      return <Redirect to="/" />
    }
  }
} />
)

const mapStateToProps = state => {
  return {loggedIn: Boolean(state.session.id)};
};

const mapDispatchToProps = dispatch => {
  return {openModal: modal => dispatch(openModal(modal))}
}

export const AuthRoute = withRouter(connect(mapStateToProps, null)(Auth));
export const ProtectedRoute = withRouter(connect(mapStateToProps, mapDispatchToProps)(Protected));
