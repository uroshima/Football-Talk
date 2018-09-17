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
      <div>
        <div className="middle-bar">
          <a className="categories">HOME</a>
          <a className="categories">WORLD CUP</a>
          <a className="categories">CHAMPIONS LEAGUE</a>
          <a className="categories">PREMIER LEAGUE</a>
          <a className="categories">LA LIGA</a>
          <a className="categories">SERIE A</a>
          <a className="categories">BUNDESLIGA</a>
          <a className="categories">LEAGUE 1</a>
          <a className="categories">TRANSFER TALK</a>
          <a className="categories">WAGS</a>
        </div>
        <div className = "homepage">
          <MainIndex stories={this.props.stories}></MainIndex>
        </div>
        <a href="https://football-talk.herokuapp.com/#/homepage">Back to top</a> 
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
