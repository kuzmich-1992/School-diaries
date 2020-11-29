import React from "react";
import { Link } from "react-router-dom";


class Diaries extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      diaries: []
    };
  }

  componentDidMount() {
      const url = "/api/v1/diaries/index";
      fetch(url)
        .then(response => {
          if (response.ok) {
            return response.json();
          }
          throw new Error("Network response was not ok.");
        })
        .then(response => this.setState({ diaries: response }))
        .catch(() => this.props.history.push("/"));
  }
  render() {

    const { diaries } = this.state;
    const allDiaries = diaries.map((diary, index) => (
      <div key={index} class Name="col-md-6 col-lg-4">
        <div className="card mb-4 bg-warning">
          <div className="card-body">
            <h5 className="card-title">{diary.name} {diary.surname}</h5>
            <h5 className="card-title">high school class:{diary.high_school_class}</h5>
            <Link to={`/diary/${diary.id}`} className="btn custom-button">
              View diary
            </Link>
          </div>
        </div>
      </div>
    ));
    const noDiary = (
      <div className="vw-100 vh-50 d-flex align-items-center justify-content-center">
        <h4>
          No diaries yet. Why not <Link to="/new_diary">create one</Link>
        </h4>
      </div>
    );

    return (
      <>
        
        <section className="jumbotron jumbotron-fluid bg-info text-center">
          <div className="container py-5">
            <h1 className="display-4">Diaries for every day</h1>
          </div>
        </section>
        <div className="py-5">
          <main className="container">
            <div className="text-right mb-3">
              <Link to="/diary" className="btn custom-button">
                Create New Diary
              </Link>
            </div>
            <div className="row">
              {diaries.length > 0 ? allDiaries : noDiary}
            </div>
            <Link to="/" className="btn btn-link">
              Home
            </Link>
          </main>
        </div>
        
      </>
    );
  }

}
export default Diaries;