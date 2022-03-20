import React from "react"
import PropTypes from "prop-types"
import {axios} from "axios"
import {Link} from "react-router-dom"


class Categories extends React.Component {

  constructor() {
    super();
    this.state = { categories: [] };
  }

  componentDidMount() {
    fetch('api/v1/categories')
      .then(response => response.json())
      .then(data => {
        this.setState({categories: data});
      })
      .catch(error => console.log('error', error));
  }

 
  render () {
    return (
      <React.Fragment>
         {this.state.categories.map((category) => {
          return(
            <div key={category.id}>
              <h2><Link to={`/category/${category.id}`}>{category.name}</Link></h2>
              {category.products.map((product) => {
                return(
                  <div key={product.id}>
                    <h3>Nom du produit: {product.name}</h3>
                    <span>Note: {product.note}</span>
                    <p>Stock: {product.stock}</p>
                  </div>
                )
              })}
            </div>
          )
        })}
      </React.Fragment>
    );
  }
}

export default Categories
