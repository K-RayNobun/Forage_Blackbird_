import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <h5>
          The logo you proviedd wasn't available an dreturned to a 404 balnk screen so we used this instead.
        </h5>
        <a
          className="App-link"
          href="https://www.propelleraero.com/dirtmate/"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn Propeller
        </a>
      </header>
    </div>
  );
}

export default App;
