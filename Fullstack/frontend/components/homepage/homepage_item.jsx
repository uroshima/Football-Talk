import React from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';

const HomepageItem = ({story, author}) => {
  return (
    <div className="main-index-item">

       <div className="story-img">
         <Link to={`/stories/${story.id}`}>
           <img className="story-img" src={story.photo} alt="storyImageurl"></img>
         </Link>
       </div>

       <div className="story-description">
         <Link to={`/stories/${story.id}`}>
           <h1 className="story-title">{story.title}</h1>
         </Link>
           <h1 className="story-subtitle">{story.subtitle}</h1>
       </div>

    </div>
    );
};

const mapStateToProps = ( state, ownProps ) => {
  return ({
    author: state.entities.users[ownProps.story.author_id]
  });
};


export default connect(mapStateToProps, null)(HomepageItem);
