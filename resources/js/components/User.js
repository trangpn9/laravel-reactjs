import React, { Component } from 'react';
import ReactDOM from 'react-dom';

export default class User extends Component {
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
                    <tr>
                        <td>John</td>
                        <td>Doe</td>
                        <td>john@example.com</td>
                        <td><button type="button" className="btn btn-primary">Edit</button> || <button type="button" className="btn btn-danger">Delete</button></td>
                    </tr>      
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