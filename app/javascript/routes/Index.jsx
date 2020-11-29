import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Home from "../components/Home";
import Diaries from "../components/Diaries";

export default (
  <Router>
    <Switch>
      <Route path="/" exact component={Home} />
      <Route path="/diaries" exact component={Diaries} />
    </Switch>
  </Router>
);