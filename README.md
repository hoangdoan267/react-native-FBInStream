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

import { InStreamView } from 'react-native-FBInStream'

export default class Example extends Component {

  handleSuccess = () => {
 	//Xử lý khi Ads đã load xong
  }

  handleError = () => {
  	//Xử lý khi Ads load lỗi
  }

  render() {
    return (
      <View>
        <InStreamView
          placementId={"your-placement-id"}
          onAdDone={this.handleSuccess}
          onAdError={this.handleError}
        />
      </View>
    );
  }
}
```
