import React from 'react';
import { browserHistory, Link } from 'react-router';

const ArticleShow = (props) => {
  return(
    <div className="article-show">
      <h2>{props.title}</h2>
      <p>{props.body}</p>
      <div className="button">
      <button onClick={browserHistory.goBack}>Back</button>

      </div>
    </div>
  )
}

export default ArticleShow;
