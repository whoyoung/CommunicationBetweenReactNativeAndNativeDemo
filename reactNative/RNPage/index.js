import React,{Component} from 'react';
import {
  View,
  Text,
} from 'react-native';

class Page extends Component{
    
  render(){
    let title = this.props.from ? this.props.from : 'RNPage';
    return(
      <View style ={{flex:1,alignItems:'center',justifyContent:'center'}}>
          <Text style ={{fontSize:18}}>{title}</Text>
      </View>
    )
  }
}

export default Page;
