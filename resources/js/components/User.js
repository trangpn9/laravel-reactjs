import React, { Component } from 'react';
import ReactDOM from 'react-dom';

export default class User extends Component {
    constructor() {
        super();
        this.state = {
            data: []
        }
    }

    componentWillMount() {
        let $this = this;
        axios.get('/api/user').then(response => {
            this.setState ({data: response.data});
        }).catch(error => {
            console.log (error)
        });
    }

    render() {
        return (
            <div>
                <h2>User Table</h2>          
                <table className="table table-bordered">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>User</th>
                        <th>Email</th>
                        <th>Action</th>        
                    </tr>
                    </thead>
                    <tbody>
                        {this.state.data.map((user, i) => (
                            <tr key={i}>
                                <td>{user.id}</td>
                                <td>{user.name}</td>
                                <td>{user.email}</td>
                                <td><button type="button" className="btn btn-primary">Edit</button> || <button type="button" className="btn btn-danger">Delete</button></td>
                            </tr>
                            )
                        )}                          
                    </tbody>
                </table>                
            </div>
        );
    }
}
if (document.getElementById('app')) {
    ReactDOM.render(<User/>, document.getElementById('app'));
}

// ReactDOM.render(<User/>, document.getElementById('app'));