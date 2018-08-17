import { RECEIVE_ALL_STORIES, RECEIVE_STORY } from '../actions/story_actions';
import { merge } from 'lodash';

const storiesReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ALL_STORIES:
      return action.payload.stories;
    case RECEIVE_STORY:
      return merge({}, state, {[action.payload.story.id]: action.payload.story});
    default:
      return state;
  }
}

export default storiesReducer;
