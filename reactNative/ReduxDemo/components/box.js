import React,{Component} from 'react';
import {
  View,
  Text,
  TouchableOpacity
} from 'react-native';
import {Actions} from 'react-native-router-flux';
import YHNativeInvokeModule from '../../Native/NativeInvokeModule';
class Box extends Component{
  constructor(props){//这个也会只调用一次
    super(props);
  }

  componentWillMount(){
    }

  componentDidMount(){
  }

  componentWillUpdate(){
  }

  componentDidUpdate(){
  }

  componentWillUnmount(){
    this.props.actions.clearState();
  }

  click() {
    this.props.actions.click();
  }
  render(){
    let {name} = this.props.state;
    return(
      <View style ={{flex:1,alignItems:'center',justifyContent:'center'}}>
          {this.props.from ? <Text style ={{fontSize:18}}>{this.props.from}</Text> : null}
          <Text style ={{fontSize:18,marginTop:10}} onPress ={()=>Actions.pop()}>Actions.pop</Text>
          <Text style ={{fontSize:18,marginTop:10}} onPress ={()=>this.click()}>{name}</Text>
          <Text style ={{fontSize:18,marginTop:10}} onPress ={()=>YHNativeInvokeModule.jumpNativePage('fromReactNative')}>go to native page</Text>
      </View>
    )
  }
}

export default Box;
