import React from 'react';
import { connect } from 'react-redux';
import { Link, withRouter } from 'react-router-dom';
import { fetchStory } from '../../actions/story_actions';


class ShowStory extends React.Component {
  componentDidMount() {
    this.props.fetchStory(this.props.match.params.id);
  }

  render() {
    if (!this.props.story) {
    // if (!this.props.story || !this.props.author) {
      return (<div></div>);
    }
    const author = this.props.author;
    return (
      <div className="story">
        <div>

          <h1 className="show-story-title">
            {this.props.story.title}
          </h1>
          <h3 className="show-story-subtitle">
            {this.props.story.subtitle}
          </h3>
        </div>
        <div>
          <img className="story-photo" src={this.props.story.photo} alt="storyImageurl"></img>
        </div>
        <div className="content1">
          <h3 className="story-content">
            {this.props.story.content}
          </h3>
        </div>
      </div>
    );
  }
}

const mapStateToProps = (state, ownProps) => {
  let author;
  const paramsId = ownProps.match.params.id;
  const story = state.entities.stories[paramsId];
  if (story) {
    author = state.entities.users[story.author_id];
  }
  return {
    story: story,
    author: author
  };
};

const mapDispatchToProps = dispatch => ({
  fetchStory: id => dispatch(fetchStory(id))
});

export default connect(
  mapStateToProps, mapDispatchToProps
)(ShowStory);
