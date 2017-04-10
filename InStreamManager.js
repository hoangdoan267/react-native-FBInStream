/* @flow */

import React, { Component } from 'react';
import {
  View,
  Text,
  StyleSheet,
  NativeAppEventEmitter,
  requireNativeComponent
} from 'react-native';
const VideoAdsView = requireNativeComponent('VideoAds', null);
export default class InStreamManager extends Component {
  render() {
    return (
      <VideoAdsView
        style={[{position:'absolute', left: 0, bottom: 0, right: 0, top: 0, width: "100%", height: "100%", backgroundColor:'black'}, this.props.style]}
        placementId={this.props.placementId}
        onAdDone={this.props.onAdDone}
        onAdError={this.props.onAdError}
      />
    );
  }
}
