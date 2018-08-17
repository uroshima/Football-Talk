import { connect } from 'react-redux';
import React from 'react';
import { openModal, closeModal } from '../../actions/modal_actions';
import { login } from '../../actions/session';
import SessionForm from './session_form';
import { Link } from 'react-router-dom';

const mapStateToProps = ({ errors }) => {
  return {
    errors: errors.session,
    formType: 'login',
    navLink: <Link to="/login">Sign in</Link>,

  };
};

const mapDispatchToProps = dispatch => {
  return {
    processForm: (user) => dispatch(login(user)),
    otherForm: (
     <Link to="/homepage" className="signin-button-modal" onClick={() => dispatch(openModal('signup'))}>Create account</Link>
   ),
    demos: (user) => dispatch(login(user)),
    closeModal: () => dispatch(closeModal())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);

// <Link to="/homepage" className="signin-button" onClick={() => openModal('login')}>Sign in</Link>
