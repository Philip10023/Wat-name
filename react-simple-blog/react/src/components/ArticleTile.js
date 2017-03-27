import React from 'react';
import { Link } from 'react-router';

const ArticleTile = (props) => {
  return(
    <div className="article-tile">
    <h1><Link to={`/article/${props.id}`}> <p>{props.title}</p> </Link></h1>
      <hr/>
    </div>
  )
}

export default ArticleTile;
