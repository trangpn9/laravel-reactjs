import React, { Component } from 'react';
import ReactDOM from 'react-dom';

export default class Create extends Component {
    constructor() {
        super();
        this.state = {
            name: '',
            email: '',
            password: ''
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

    handleNameChange(e) {
        this.setState({name: e.target.value});
    }

    handleEmailChange(e) {
        this.setState({email: e.target.value});
    }

    handlePasswordChange(e) {
        this.setState({password: e.target.value});
    }

    submitChange(e) {
        e.preventDefault();
        console.log(this.state);

        axios.post('/api/user', this.state).then(response => {
            console.log(response);
        }).then(error => {
            console.log(error);
        });
    }

    render() {
        return (
            <div>
                <h2>Add new user</h2>
                <form className="frmCeratUser" onSubmit={this.submitChange.bind(this)}>
                    {/* <input type="hidden" name="_token" value="{{csrf_token()}}"/> */}
                    <input type="hidden" name="_token" id="csrf-token" value="{{ Session::token() }}" />
                    <div className="form-group">
                        <label htmlFor="exampleInputName1">Name</label>
                        <input type="text" className="form-control" id="exampleInputName1" placeholder="Enter your name" value={this.state.name} onChange={this.handleNameChange.bind(this)}/> 
                    </div>                    
                    <div className="form-group">
                        <label htmlFor="exampleInputEmail1">Email address</label>
                        <input type="email" className="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" value={this.state.email} onChange={this.handleEmailChange.bind(this)}/>                    
                    </div>
                    <div className="form-group">
                        <label htmlFor="exampleInputPassword1">Password</label>
                        <input type="password" className="form-control" id="exampleInputPassword1" placeholder="Password" value={this.state.password} onChange={this.handlePasswordChange.bind(this)}/>
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