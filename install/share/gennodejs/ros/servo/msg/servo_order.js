// Auto-generated. Do not edit!

// (in-package servo.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class servo_order {
  constructor() {
    this.numeroMoteur = 0;
    this.position = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type servo_order
    // Serialize message field [numeroMoteur]
    bufferInfo = _serializer.int32(obj.numeroMoteur, bufferInfo);
    // Serialize message field [position]
    bufferInfo = _serializer.float32(obj.position, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type servo_order
    let tmp;
    let len;
    let data = new servo_order();
    // Deserialize message field [numeroMoteur]
    tmp = _deserializer.int32(buffer);
    data.numeroMoteur = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [position]
    tmp = _deserializer.float32(buffer);
    data.position = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'servo/servo_order';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8d0c7e8a697e8acacd6bb6f954ac448';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 numeroMoteur
    float32 position
    
    `;
  }

};

module.exports = servo_order;
