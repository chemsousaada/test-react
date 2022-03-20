import React from "react"
import PropTypes from "prop-types"
import { Link } from "react-router-dom";

class Menu extends React.Component {
  render () {
    return (
      <React.Fragment>
        <nav>
          <Link to="/comments">Commentaires</Link>
          <Link to="/categories">Catégories</Link>
          <Link to="/products">Produits</Link>
        </nav>
      </React.Fragment>
    );
  }
}

export default Menu
