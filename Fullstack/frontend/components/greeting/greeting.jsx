import React from 'react';
import { Link } from 'react-router-dom';
import { openModal }  from '../../actions/modal_actions';
import { login }  from '../../actions/session';
import { createStory }  from '../../actions/story_actions';


const Greeting = ({ currentUser, logout, openModal, createStory }) => {
  const sessionLinks = () => (
    <div className="greeting">
      <Link to="/homepage" className="signin-button" onClick={() => openModal('login')}>Sign in</Link>
      <button className="top-bar-buttons" onClick={() => openModal('signup')}>Get started</button>
      <button className="top-bar-buttons" onClick={() => dispatch(login({email: 'email', password: 'password'}))}>Guest Tour</button>
    </div>
  );
  const personalGreeting = () => (
    <div className="logout-currentUser">
      <button className="top-bar-buttons" onClick={logout}>Log Out</button>
      <button  className="top-bar-buttons"><Link to='/stories/new'>Write a story</Link></button>
    </div>
  );
  return currentUser ? personalGreeting() : sessionLinks();
};


export default Greeting;
