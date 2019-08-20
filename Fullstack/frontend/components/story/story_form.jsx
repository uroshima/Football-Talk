import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class StoryForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.story;
    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this);
  }

  update(field) {
    return e => {
      this.setState({
      [field]: e.currentTarget.value
    });
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    const formData = new FormData();
    formData.append("story[title]", this.state.title);
    formData.append("story[subtitle]", this.state.subtitle);
    formData.append("story[content]", this.state.content);
    if (this.state.photo !== null) {
      formData.append("story[photo]", this.state.photo);
    }

    this.props.submitAction(formData).then(
      success => this.props.history.push('/'),
      failure => console.log(failure)
    );
  }

  handleFile(e) {
    const file = e.currentTarget.files[0];
    const fileReader = new FileReader();
    fileReader.onloadend = () => {
      this.setState({photo: file, photoUrl: fileReader.result});
    };
    if (file) {
      fileReader.readAsDataURL(file);
    }
  }


  render() {
    const currentUser = this.props.currentUser;
    const preview = this.state.photoUrl ? <img src={this.state.photoUrl}></img> : null;

    return (
      <div className="story-form-container">
        {/* <div className="story-form-author-container">
          <Link to={`/users/${currentUser.id}`}>
          </Link>
          <div className="story-form-author-info">
            <Link to={`/users/${currentUser.id}`} className="proba">
            <p className="story-form-author-name">{currentUser.email}</p>
            </Link>
          </div>
        </div> */}
        <form className="story-form" onSubmit={this.handleSubmit}>
          <input className="story-form-titles"
            type="text"
            value={this.state.title}
            onChange={this.update('title')}
            placeholder="Title">
          </input>
          <input className="story-form-titles"
              type="text"
              value={this.state.subtitle}
              onChange={this.update('subtitle')}
              placeholder="Subtitle">
          </input>
          <textarea className="story-form-content"
              type="text"
              value={this.state.content}
              onChange={this.update('content')}
              placeholder="Content">
          </textarea>
          <input type="file"
            className="modal-add-avatar"
            onChange={this.handleFile.bind(this)}>
          </input>
          {preview}
          <input className="story-form-button"
            type="submit"
            value={this.props.type}>
          </input>
        </form>
      </div>
    );
  }
}


export default StoryForm;
