import React from "react"
import PropTypes from "prop-types"
import { BrowserRouter, Routes, Route } from 'react-router-dom'
import Products from "./product/Products"
import Categories from "./category/Categories"
import Comments from "./comment/Comments"
import Menu from "./Menu"



class App extends React.Component {
  render () {
    return (
      <div>
        <BrowserRouter>
          <Routes>
            <Route exact path="/" element={<Menu/>}/>
            <Route exact path="/products" element={<Products/>} />
            <Route exact path="/categories" element={<Categories/>} />
            <Route exact path="/comments" element={<Comments/>} />

            <Route
              path="*"
              element={
                <main style={{ padding: "1rem" }}>
                  <p>There's nothing here!</p>
                </main>
                }
              />
          </Routes>
        </BrowserRouter>
      </div>
    );
  }
}



export default App
