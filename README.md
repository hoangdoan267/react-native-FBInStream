# Facebook InStream Ads

1. Copy 4 file vào project
2. Import module

```javascript
import { InStreamView } from 'react-native-FBInStream'
```

3. Cách sử dụng

```javascript
import React, { Component } from 'react';
import {
  View,
  TouchableOpacity
} from 'react-native';

import { InStreamView } from 'FBInStreamAds'

export default class FBInStreamAds extends Component {

  handleSuccess = () => {
 	//Xử lý khi Ads đã load xong
  }

  handleError = () => {
  	//Xử lý khi Ads load lỗi
  }

  render() {
    return (
      <View style={styles.container}>
        <InStreamView
          placementId={"1097860336911021_1412040112159707"}
          onAdDone={this.handleSuccess}
          onAdError={this.handleError}
        />
      </View>
    );
  }
}
```
