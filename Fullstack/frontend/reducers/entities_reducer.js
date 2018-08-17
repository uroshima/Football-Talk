import { combineReducers } from 'redux';
import storiesReducer from './stories_reducer';
import usersReducer from './users_reducer';

const entitiesReducer = combineReducers({
  users: usersReducer,
  stories: storiesReducer
});

export default entitiesReducer;
