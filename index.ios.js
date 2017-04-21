/**
 * Sample React Native App
 * https://github.com/whoyoung/CommunicationBetweenReactNativeAndNativeDemo.git
 * @flow
 */

import {
  AppRegistry,
} from 'react-native';
import AppEntrance from './reactNative/AppEntrance';
import SimpleComponent from './reactNative/RNPage';
import RNComponent from './reactNative/ReduxDemo/containers/app';
import NavigatorRNComponent from './reactNative/ReduxDemo/containers/navigatorApp';

AppRegistry.registerComponent('CommunicationBetweenReactNativeAndNativeDemo', () => AppEntrance);
AppRegistry.registerComponent('SimpleRNComponent', () => SimpleComponent);
AppRegistry.registerComponent('RNComponent', () => RNComponent);
AppRegistry.registerComponent('NavigatorRNComponent', () => NavigatorRNComponent);
