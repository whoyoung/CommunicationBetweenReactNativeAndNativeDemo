import React,{Component} from 'react';
import {
  View,
  Text,
  InteractionManager,
} from 'react-native';
import YHNativeInvokeModule from '../Native/NativeInvokeModule';
class Page extends Component{
  _popCurrentPage() {
    InteractionManager.runAfterInteractions(() => {
            YHNativeInvokeModule.popCurrentPage()
        });
  }
  render(){
    let title = this.props.from ? this.props.from : 'RNPage';
    return(
      <View style ={{flex:1,alignItems:'center',justifyContent:'center'}}>
          <Text style ={{fontSize:18}}>{title}</Text>
          <Text style ={{fontSize:18,marginTop:10,backgroundColor:'#26b8f2'}} onPress ={()=>this._popCurrentPage()}>previousPage</Text>
      </View>
    )
  }
}

export default Page;
