import React, { Component } from 'react';
import ReactDOM from 'react-dom';

export default class Create extends Component {
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
                <h2>Add new user</h2>
                <form>
                <div className="form-group">
                    <label for="exampleInputName1">Name</label>
                    <input type="text" className="form-control" id="exampleInputName1" placeholder="Enter your name"/>                    
                </div>                    
                <div className="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" className="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email"/>                    
                </div>
                <div className="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" className="form-control" id="exampleInputPassword1" placeholder="Password"/>
                </div>
                <button type="submit" className="btn btn-primary">Submit</button>
                </form>              
            </div>
        );
    }
}
if (document.getElementById('create')) {
    ReactDOM.render(<Create/>, document.getElementById('create'));
}