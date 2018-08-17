import React from 'react';
import { connect } from 'react-redux';
import { fetchAllStories } from '../../actions/story_actions';
import HomepageItem from './homepage_item';
import MainIndex from './main_index';


class Homepage extends React.Component {
  componentDidMount() {
    this.props.fetchAllStories()
  }

  render() {
    return (
      <div className = "homepage">
        <MainIndex stories={this.props.stories}></MainIndex>
      </div>
    );
  }
}



const mapStateToProps = state => ({
  stories: Object.values(state.entities.stories)
})

const mapDispatchToProps = dispatch => ({
  fetchAllStories: () => dispatch(fetchAllStories())
})

export default connect(mapStateToProps, mapDispatchToProps)(Homepage);
