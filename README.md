# Facebook InStream Ads
## Installation
### 1. Install Javascript packages

```bash
$ yarn add react-native-facebook-instream-ads
```

Link to your project

```bash
$ react-native link react-native-facebook-instream-ads
```

### 2. Downloading and linking the native Facebook SDK for iOS
Follow all the steps in the [Getting Started Guide for Facebook SDK](https://developers.facebook.com/docs/ios/getting-started) and [Getting Started Guide for Facebook Audience](https://developers.facebook.com/docs/audience-network/getting-started) for iOS.


## Usage
```javascript
import { InStreamView } from 'react-native-facebook-instream-ads'
export default class Example extends Component {

  handleSuccess = () => {
    //Handle when Ads loaded
  }

  handleError = () => {
    //Handle when Ads had err
  }

  render() {
    return (
      <View style={styles.container}>
        <InStreamView
          style={//Optional.}
          placementId={"your-placement-id"}
          onAdDone={() => this.handleSuccess()}
          onAdError={() => this.handleError()}
        />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});
```

## TODO

- [x] iOS
- [] Android

