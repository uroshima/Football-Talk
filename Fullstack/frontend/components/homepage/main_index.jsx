import React from 'react';
import HomepageItem from './homepage_item';
import { Link } from 'react-router-dom';


const MainIndex = ({ currentUser, stories }) => {
  const mappedStories = stories.map((story, idx) => {
    return <HomepageItem key={idx} story={story}></HomepageItem>
  })

  return (
    <div className="main-index">
      <p className="main-index-title">Featured Stories</p>
      {mappedStories}
    </div>
  )
}

export default MainIndex;
