import React from 'react';
import { connect } from 'react-redux';
import StoryForm from './story_form';
import { updateStory, fetchStory } from '../../actions/story_actions';


class EditStory extends React.Component {

  componentDidMount() {
    this.props.fetchStory(this.props.story.id);
  }

  componentWillReceiveProps (newProps) {
    if (newProps.story.id !== this.props.story.id) {
      this.props.fetchStory(newProps.story.id)
    }
  }

  render() {
    <StoryForm
      story={this.props.story}
      type={this.props.type}
      submitAction={this.props.submitAction}
    />
  }
}

const mapStateToProps = (state, ownProps) => ({
  // story: state.entities.stories[ownProps.match.params.id],
  story: state.entities.stories[id],
  type: 'Edit'
})

const mapDispatchToProps = dispatch => ({
  fetchStory: (id) => dispatch(fetchStory(id)),
  submitAction: (story) => dispatch(updateStory(story))
})

export default connect(mapStateToProps, mapDispatchToProps)(EditStory);
