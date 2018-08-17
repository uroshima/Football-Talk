import * as APIUtil from '../utils/user';

export const RECEIVE_USER = 'RECEIVE_USER';

export const receiveUser = user => {
  return {
    type: RECEIVE_USER,
    user
  };
};


export const fetchUser = id => dispatch => {
  return APIUtil.fetchUser(id).then(
    user => dispatch(receiveUser(user))
  );
};
