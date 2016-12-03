// Auto-generated. Do not edit!

// (in-package serial.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class GPS_raw {
  constructor() {
    this.gps1 = '';
    this.gps2 = '';
    this.gps3 = '';
    this.gps4 = '';
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type GPS_raw
    // Serialize message field [gps1]
    bufferInfo = _serializer.string(obj.gps1, bufferInfo);
    // Serialize message field [gps2]
    bufferInfo = _serializer.string(obj.gps2, bufferInfo);
    // Serialize message field [gps3]
    bufferInfo = _serializer.string(obj.gps3, bufferInfo);
    // Serialize message field [gps4]
    bufferInfo = _serializer.string(obj.gps4, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type GPS_raw
    let tmp;
    let len;
    let data = new GPS_raw();
    // Deserialize message field [gps1]
    tmp = _deserializer.string(buffer);
    data.gps1 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [gps2]
    tmp = _deserializer.string(buffer);
    data.gps2 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [gps3]
    tmp = _deserializer.string(buffer);
    data.gps3 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [gps4]
    tmp = _deserializer.string(buffer);
    data.gps4 = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'serial/GPS_raw';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1a03139f538dcea96e4b207ccd55dd5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string gps1
    string gps2
    string gps3
    string gps4
    
    `;
  }

};

module.exports = GPS_raw;
