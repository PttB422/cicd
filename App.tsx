/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * Generated with the TypeScript template
 * https://github.com/react-native-community/react-native-template-typescript
 *
 * @format
 */

import React from 'react';
import {SafeAreaView, Text, View} from 'react-native';
import Config from 'react-native-config';

const App = () => (
  <SafeAreaView style={{flex: 1}}>
    <View
      style={{
        justifyContent: 'center',
        alignItems: 'center',
        flex: 1,
      }}>
      <Text>{Config.APP_ENV}</Text>
    </View>
  </SafeAreaView>
);

export default App;
