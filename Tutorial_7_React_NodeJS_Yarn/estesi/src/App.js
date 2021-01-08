import React from 'react';
import './App.css' 

function App() {
  return(
    <div className={"main"}>
      

     {/* <ul className={"worlds"}>
        <li><span role="img">🌎</span></li>
        <li><span role="img">🌎</span></li>
        <li><span role="img">🌎</span></li>
        <li><span role="img">🌎</span></li>
        <li><span role="img">🌎</span></li>      
      </ul> */}
      <div className={"sky"}> 
        {/*<h1>hola mundo!!</h1>*/}
        <div class="tree"></div> 
        <div class="track"></div> 
        <div class="caar movingcar" >
          <div class="car"></div> 
          <div class=" wheel wheel1"></div> 
          <div class="wheel wheel2"></div>
        </div>     
      </div>
      <div className={"title"}>
        <div class = "texto3"><h1>Hola mundo!!</h1></div>
        <span role="img">🤙🏻</span>
      </div>
      <div className={"title2"}>
        <div class = "texto2"><h1>Tutorial 7 React + Node Js + Yarn</h1></div>
      </div>

    </div>
  );
}

export default App;
