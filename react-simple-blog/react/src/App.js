import React, { Component } from 'react';
import { Route, IndexRoute, Router, browserHistory, Link } from 'react-router';
import ArticlesIndexContainer from './containers/ArticlesIndexContainer';
import ArticleShowContainer from './containers/ArticleShowContainer';


  class App extends Component {
    constructor(props){
      super(props);
      this.state={

      }
    }
    render(){
      let routes= (
      <div className="body">
        <Route path="/" >
          <IndexRoute component={ArticlesIndexContainer} />
          <Route path="article/:id" component={ArticleShowContainer}/>
          {this.props.children}
        </Route>
      </div>
    )
    return(
      <div>
        <Router history={browserHistory} routes={routes} />
        </div>
    )
    }
  }

export default App;
