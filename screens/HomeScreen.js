import * as WebBrowser from 'expo-web-browser';
import React, { Component } from 'react';
// import styled from 'styled-components';
import {
  Image,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
  List,
  ListItem,
  FlatList,
  TouchableWithoutFeedback
} from 'react-native';

import { MonoText } from '../components/StyledText';
import { AuthSession } from 'expo';
import { SearchBar } from 'react-native-elements';

export default class HomeScreen extends Component {
  
  render() {

    return (
      <ScrollView>
        <View style={styles.container}>
          <SearchBar placeholder='Search Here' lightTheme round />
          <QuestionnaireBlock/>
          <FlatList
            data={[
              {key: 'Travel Info'},
              {key: 'Get Help'},
              {key: 'Air Quality Info'},
              {key: 'Weather'},
              {key: 'General Health & Safety'},
              {key: 'Travel Exercises'}
            ]}
            renderItem = {({item}) => (
              <TouchableWithoutFeedback onPress={ () => {actionOnRow(item.key)}}>
                <Text style={styles.item}>{item.key}</Text>
              </TouchableWithoutFeedback>  
            )}
            ItemSeparatorComponent = {renderSeparator}
            // ListHeaderComponent = {renderHeader}
          />
        </View>
      </ScrollView>
      
    );
  }
}

// TODO: add text over the questionnaire image
QuestionnaireBlock = () => {
  return(
    <View
      style = {{
        alignSelf: 'center',
        paddingTop: 10
    }}>
      <Image
        source={
          __DEV__
            ? require('../assets/images/congo.jpg')
            : require('../assets/images/robot-prod.png')
        }
        style={styles.travelImage}
      />
    </View>
  );
}

renderHeader = () => {
  return <SearchBar placeholder='Search Here' lightTheme round />;
}

renderSeparator = () => {
  return(
    <View
      style = {{
        height: 1,
        width: '95%',
        backgroundColor: '#CED0CE',
        // marginLeft: '2%'
        alignSelf: 'center'
      }}
    />
  );
}

actionOnRow = (key) => {
  // TODO: bring to component based on key
}

function onPressTravelInfo() {

}

/* ------------------------------------- STYLE ----------------------------------------- */

const styles = StyleSheet.create({
  container: {
    flex: 1
   },
   item: {
     padding: 10,
     fontSize: 18,
     height: 44
   },
  developmentModeText: {
    marginBottom: 20,
    color: 'rgba(0,0,0,0.4)',
    fontSize: 14,
    lineHeight: 19,
    textAlign: 'center'
  },
  travelImageContainer: {
    alignItems: 'center'
  },
  travelImgAndText: {

  },
  travelImage: {
    width: 400,
    height: 200,
    borderRadius: 15,
    paddingTop: 50
  },
});