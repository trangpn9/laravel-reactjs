import React, { Component } from 'react';
import ReactDOM from 'react-dom';

export default class User extends Component {
    constructor(props) {
        super(props);
        this.state = {
            data: []
        }
    }

    componentWillMount() {
        let $this = this;
        axios.get('/api/user').then(response => {
            this.setState ({data: response.data});
        }).catch(error => {
            console.log (error);
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
                            <UserRow key={i} i={i} user={user} object={this}/>        
                            )
                        )}                                             
                    </tbody>
                </table>                                 
            </div>
        );
    }
}

class UserRow extends React.Component {
    
    deleteUser(e, object) {
        console.log(e);

        var $this = object;

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
            <tr key={this.props.i}>
                <td>{this.props.user.id}</td>
                <td>{this.props.user.name}</td>
                <td>{this.props.user.email}</td>
                <td>                                
                    <a className="btn btn-primary" href={"/user/"+this.props.user.id+"/edit"}>Edit</a> ||&nbsp;
                    <button onClick={this.deleteUser.bind(this, this.props.user, this.props.object)} type="button" className="btn btn-danger">Delete</button>                                    
                </td>
            </tr>
        );
    }
  }


if (document.getElementById('app')) {
    ReactDOM.render(<User/>, document.getElementById('app'));
}
