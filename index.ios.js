/**
 * Sample React Native App
 * https://github.com/whoyoung/CommunicationBetweenReactNativeAndNativeDemo.git
 * @flow
 */

import {
  AppRegistry,
} from 'react-native';
import AppEntrance from './reactNative/AppEntrance';
import ReactNativeComponent from './reactNative/RNPage';
import ReduxDemoComponent from './reactNative/ReduxDemo/containers/app';

AppRegistry.registerComponent('CommunicationBetweenReactNativeAndNativeDemo', () => AppEntrance);
// AppRegistry.registerComponent('ReactNativeComponent', () => ReactNativeComponent);
AppRegistry.registerComponent('ReactNativeComponent', () => ReduxDemoComponent);
