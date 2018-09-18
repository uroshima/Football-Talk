import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import Modal from './modal';
import { Link } from 'react-router-dom';

const Header = () => (

  <div className='nav-bar'>
    <div className='top-bar'>
      <div className="div-become">Become a member</div>
      <Link to="/homepage">
        <h1 className="main-title">Football Talk</h1>
      </Link>
      <GreetingContainer />
      <div>
        <Modal />
      </div>
    </div>
  </div>
)

export default Header;
