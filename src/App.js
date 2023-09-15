import Header from "./layouts/Header";
// Custom CSS

//Bootstrap
import "../src/assets/css/bootstrap.css";

// Custom JS

import "../src/assets/css/ui.css";
import "../src/assets/css/responsive.css";
import Footer from "./layouts/Footer";
import Subscribe from "./pages/home/Subscribe"
import Main from "./layouts/Main";
function App() {
  return (
    <div className="App">
      <Header />
      <Main/>
      <Subscribe/>
      <Footer />
    </div>
  );
}

export default App;
