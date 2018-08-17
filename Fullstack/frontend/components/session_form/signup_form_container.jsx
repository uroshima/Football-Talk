import { connect } from 'react-redux';
import React from 'react';
import { openModal, closeModal } from '../../actions/modal_actions';
import { Link } from 'react-router-dom';
import { signup, login } from '../../actions/session';
import SessionForm from './session_form';

const mapStateToProps = ({ errors }) => {
  return {
    errors: errors.session,
    formType: 'signup',
    navLink: <Link to="/signup">Sign up</Link>,
  };
};

const mapDispatchToProps = dispatch => {
  return {
    processForm: (user) => dispatch(signup(user)),
    otherForm: (
     <Link to='/homepage' className="signin-button-modal" onClick={() => dispatch(openModal('login'))}>Sign in</Link>
   ),
    closeModal: () => dispatch(closeModal()),
    demos: (user) => dispatch(login(user)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);
