
import React,{Component} from 'react';
import {createStore,applyMiddleware,combineReducers} from 'redux';
import {Provider,connect} from 'react-redux';
import thunk from 'redux-thunk';

import reduxDemoReducer from '../reducers/reducers';
const Reducer = combineReducers({
    reduxDemoReducer
});
const createStoreWithMiddleware = applyMiddleware(thunk)(createStore);
const store = createStoreWithMiddleware(Reducer);
import Container from './container';

class App extends Component{
    constructor(props){
        super(props);
    }

     render() {
        return (
            <Provider store={store}> 
                <Container {...this.props}/>
            </Provider>
        )
    }
}

export default App;

