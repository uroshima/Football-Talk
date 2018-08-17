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
    <div className="middle-bar">
      <a>HOME</a>
      <a>WORLD CUP</a>
      <a>CHAMPIONS LEAGUE</a>
      <a>PREMIER LEAGUE</a>
      <a>LA LIGA</a>
      <a>SERIE A</a>
      <a>BUNDESLIGA</a>
      <a>LEAGUE 1</a>
      <a>TRANSFER TALK</a>
      <a>WAGS</a>
    </div>
  </div>
)

export default Header;
