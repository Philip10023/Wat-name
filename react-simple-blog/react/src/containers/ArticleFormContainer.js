import React, { Component } from 'react';
import TitleField from '../components/TitleField';
import BodyField from '../components/BodyField';

class ArticleFormContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      articleTitle: '',
      articleBody: ''
    }
    this.articleTitle = this.articleTitle.bind(this)
    this.articleBody = this.articleBody.bind(this)
    this.handleFormSubmit = this.handleFormSubmit.bind(this)
    this.handleClearForm = this.handleClearForm.bind(this)
  }


  articleTitle(event){
    this.setState({articleTitle: event.target.value})
  }
  articleBody(event){
    this.setState({articleBody: event.target.value})
  }
//  handleTextFieldChange(event) {
  //  this.setState({ [event.target.id]: event.target.value });
  handleClearForm(event) {
    event.preventDefault();
    this.setState({
    articleTitle: '',
    articleBody: ''
    });
  }

  handleFormSubmit(event) {
      event.preventDefault();
      let formPayload = {
             title: this.state.articleTitle,
             body: this.state.articleBody
           };
           this.props.addNewArticle(formPayload);

         }

        render() {
    return(
      <form onSubmit={this.handleFormSubmit} className="new-article-form callout">
        <TitleField
          content={this.state.articleTitle}
          label="Article Title"
          name="articleTitle"
          handlerFunction={this.articleTitle}

        />
        <BodyField
          content={this.state.articleBody}
          id="articleBody"
          handlerFunction={this.articleBody}
          label="Article Body"
          name="articleBody"
        />

        <div className="button-group">
          <button className="button clear" type="clear" value="Clear" onClear={this.handleClearForm}>Clear</button>
          <input className="button submit" type="submit" value="Submit"/>
        </div>
      </form>
    )
  }
}

export default ArticleFormContainer;
