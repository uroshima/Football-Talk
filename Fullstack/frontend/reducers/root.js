import { combineReducers } from 'redux';
import session from './session';
import errors from './errors_reducer';
import entities from './entities_reducer';
import ui from './ui_reducer';

const rootReducer = combineReducers({
  errors,
  session,
  entities,
  ui
});

export default rootReducer;
