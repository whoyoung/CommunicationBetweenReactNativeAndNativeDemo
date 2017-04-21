
import React,{Component} from 'react';
import {
    Navigator
} from 'react-native'
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
            <Navigator 
                style={[{ flex: 1 }]}
                initialRoute = {{component:Container}}
                renderScene = {(route,navigator) => {
                        let Component = route.component;
                        return (
                            <Provider store={store}>
                                <Component {...this.props} navigator={navigator} {...route.params} title='Navigator'/>
                            </Provider>
                        )
                    }
                }
            />            
        )
    }
}

export default App;

