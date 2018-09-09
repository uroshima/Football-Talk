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
      <a className="categories">HOME</a>
      <a className="categories">WORLD CUP</a>
      <a className="categories">CHAMPIONS LEAGUE</a>
      <a className="categories">PREMIER LEAGUE</a>
      <a className="categories">LA LIGA</a>
      <a className="categories">SERIE A</a>
      <a className="categories">BUNDESLIGA</a>
      <a className="categories">LEAGUE 1</a>
      <a className="categories">TRANSFER TALK</a>
      <a className="categories">WAGS</a>
    </div>
  </div>
)

export default Header;
