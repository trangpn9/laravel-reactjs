import React, { Component } from 'react';
import ReactDOM from 'react-dom';

export default class User extends Component {
    constructor() {
        super();
        this.state = {
            data: []
        }
        this.deleteUser = this.deleteUser.bind(this);
    }

    componentWillMount() {
        let $this = this;
        axios.get('/api/user').then(response => {
            this.setState ({data: response.data});
        }).catch(error => {
            console.log (error);
        });
    }

    deleteUser(e) {
        console.log(e);

        var $this = this;

        axios.delete('/api/user/'+e.id).then(response => {
            console.log(response);

            const newState = $this.state.data.slice();
            newState.splice(newState.indexOf(e), 1);
            $this.setState ({
                data: newState
            });

        }).catch(error => {
            console.log(error);
        });
    }

    render() {
        return (
            <div>
                <h2>User Table</h2>          
                <a className="btn btn-success" href="user/create">Add new</a>
                <hr/>
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
                                <td>
                                    {/* <form className="frmCeratUser">                    
                                        <input type="hidden" name="_token" id="csrf-token" value="{{ Session::token() }}" /> */}
                                        <button type="button" className="btn btn-primary">Edit</button> ||&nbsp;
                                        <button onClick={(e) => this.deleteUser(user, e)} type="button" className="btn btn-danger">Delete</button>
                                    {/* </form>          */}
                                </td>
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