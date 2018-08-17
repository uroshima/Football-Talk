import { connect } from 'react-redux';
import { createStory } from '../../actions/story_actions';
import StoryForm from './story_form';

const currentUser = state => {
  return state.entities.users[state.session.id];
};

const mapStateToProps = state => {
  return {
    type: 'Create',
    currentUser: state.entities.users[state.session.id],
    story: {
      title: '',
      subtitle: '',
      content: '',
      photo: null,
      photoUrl: null
    },
  };
};

const mapDispatchToProps = dispatch => {
  return {
    submitAction: story => dispatch(createStory(story))
  };
};

export default connect(
  mapStateToProps, mapDispatchToProps
)(StoryForm);
