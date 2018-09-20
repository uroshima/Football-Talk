import React from 'react';
import { withRouter } from 'react-router-dom';
import { Link } from 'react-router-dom';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.demoLogin = this.demoLogin.bind(this);
    this.renderErrors = this.renderErrors.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user).then(() => this.props.closeModal());
  }

  demoLogin(e) {
    e.preventDefault();
    let user = {email: "email", password: 'password'};
    this.props.demos(user).then(this.props.closeModal());
  }

  renderErrors() {
    return(
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    return (
      <div className="modal-content">
        <form className="modal-form" onSubmit={this.handleSubmit} >
          <div onClick={this.props.closeModal} className="modal-close">&times;</div>
          <h1 className="modal-header" >Welcome to Football Talk</h1>

          {this.renderErrors()}
          <div className="login-form">
            <br/>

            <label>
              <input type="text" placeholder="email"
                value={this.state.email}
                onChange={this.update('email')}
                className="login-input"
              />
            </label>
            <br/>

            <label>
              <input type="password" placeholder="password"
                value={this.state.password}
                onChange={this.update('password')}
                className="login-input"
              />
            </label>
            <br/>
            
            <input className="modal-buttons" type="submit" value={this.props.formType} />
          </div>
        </form>
        <div className="modal-bottom-buttons">
          {this.props.otherForm}
        </div>
        <div className="modal-bottom-buttons">
          <Link to='/homepage' className="signin-button-modal" onClick={this.demoLogin}>Guest Tour</Link>
        </div>
      </div>
    );
  }
}

export default withRouter(SessionForm);
