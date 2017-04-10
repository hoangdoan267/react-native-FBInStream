import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  TouchableOpacity,
  requireNativeComponent,
} from 'react-native';

const VideoAdsView = requireNativeComponent('VideoAds', null);
export default class FBInStreamAds extends Component {

  constructor(props) {
    super(props)
    this.state = {
      isLoadAds : false
    }
  }

  renderInstreamAds = () => {
    if (!this.state.isLoadAds) {
      return
    }
    return (
      <VideoAdsView
      style={{position:'absolute', left: 0, bottom: 0, right: 0, top: 0, width: "100%", height: "100%", backgroundColor:'black'}}
      placementId={"1097860336911021_1412040112159707"}
      onAdDone={this.handleSuccess}
      onAdError={this.handleError}
      />
    )
  }

  handleSuccess = () => {
    this.setState({
      isLoadAds: false
    })
  }

  handleError = () => {
    console.log("ads error")
    this.setState({
      isLoadAds: false
    })
  }

  loadAds = () => {
    this.setState({
      isLoadAds: true
    })
  }

  render() {
    return (
      <View style={styles.container}>
        <TouchableOpacity onPress={() => this.loadAds()}>
          <Text>
            Load Ads
          </Text>
        </TouchableOpacity>
        {this.renderInstreamAds()}
      </View>
    );
  }
}