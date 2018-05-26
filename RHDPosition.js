import React, { Component, createContext } from "react";
import {
  getPOV,
  stopDetectPositionChange,
  detectPositionChange,
  setPOVSensitivity
} from "./RHDSceneManager";
import PropTypes from "prop-types";
const { Provider, Consumer: RHDARPositionConsumer } = createContext({});
class RHDARPosition extends Component {
  state = { providerValue: null, sensitivity: 0.01 };
  componentDidMount() {
    detectPositionChange(this.onPositionChange.bind(this));
  }
  componentWillUnmount() {
    stopDetectPositionChange();
  }
  onPositionChange(data) {
    console.log("Updating provider value with ", data);
    this.setState({ providerValue: data });
    if (typeof this.props.didPositionChange == "function")
      this.props.didPositionChange(data);
  }
  render() {
    return (
      <Provider value={this.state.providerValue}>
        {typeof this.props.children == "function" ? (
          <RHDARPositionConsumer>{this.props.children}</RHDARPositionConsumer>
        ) : (
          this.props.children
        )}
      </Provider>
    );
  }
  static getDerivedStateFromProps(nextProps, prevState) {
    var ret = prevState;
    if (prevState.sensitivity != nextProps.sensitivity) {
      setPOVSensitivity(nextProps.sensitivity);
      ret.sensitivity = nextProps.sensitivity;
    }
    return ret;
  }
}

RHDARPosition.defaultProps = {
  sensitivity: 0.01
};
RHDARPosition.propTypes = {
  didPositionChange: PropTypes.func,
  sensitivity: PropTypes.number
};
export { RHDARPosition, RHDARPositionConsumer };
export default RHDARPosition;
