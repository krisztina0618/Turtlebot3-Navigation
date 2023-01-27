// Auto-generated. Do not edit!

// (in-package tb3_projet_LAKHAL_MEZOUAR.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LaserDirection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.FACE_GAUCHE = null;
      this.FACE_DROITE = null;
      this.GAUCHE_HAUT = null;
      this.GAUCHE_BAS = null;
      this.ARRIERE_DROITE = null;
      this.ARRIERE_GAUCHE = null;
      this.DROITE_HAUT = null;
      this.DROITE_BAS = null;
    }
    else {
      if (initObj.hasOwnProperty('FACE_GAUCHE')) {
        this.FACE_GAUCHE = initObj.FACE_GAUCHE
      }
      else {
        this.FACE_GAUCHE = 0.0;
      }
      if (initObj.hasOwnProperty('FACE_DROITE')) {
        this.FACE_DROITE = initObj.FACE_DROITE
      }
      else {
        this.FACE_DROITE = 0.0;
      }
      if (initObj.hasOwnProperty('GAUCHE_HAUT')) {
        this.GAUCHE_HAUT = initObj.GAUCHE_HAUT
      }
      else {
        this.GAUCHE_HAUT = 0.0;
      }
      if (initObj.hasOwnProperty('GAUCHE_BAS')) {
        this.GAUCHE_BAS = initObj.GAUCHE_BAS
      }
      else {
        this.GAUCHE_BAS = 0.0;
      }
      if (initObj.hasOwnProperty('ARRIERE_DROITE')) {
        this.ARRIERE_DROITE = initObj.ARRIERE_DROITE
      }
      else {
        this.ARRIERE_DROITE = 0.0;
      }
      if (initObj.hasOwnProperty('ARRIERE_GAUCHE')) {
        this.ARRIERE_GAUCHE = initObj.ARRIERE_GAUCHE
      }
      else {
        this.ARRIERE_GAUCHE = 0.0;
      }
      if (initObj.hasOwnProperty('DROITE_HAUT')) {
        this.DROITE_HAUT = initObj.DROITE_HAUT
      }
      else {
        this.DROITE_HAUT = 0.0;
      }
      if (initObj.hasOwnProperty('DROITE_BAS')) {
        this.DROITE_BAS = initObj.DROITE_BAS
      }
      else {
        this.DROITE_BAS = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaserDirection
    // Serialize message field [FACE_GAUCHE]
    bufferOffset = _serializer.float32(obj.FACE_GAUCHE, buffer, bufferOffset);
    // Serialize message field [FACE_DROITE]
    bufferOffset = _serializer.float32(obj.FACE_DROITE, buffer, bufferOffset);
    // Serialize message field [GAUCHE_HAUT]
    bufferOffset = _serializer.float32(obj.GAUCHE_HAUT, buffer, bufferOffset);
    // Serialize message field [GAUCHE_BAS]
    bufferOffset = _serializer.float32(obj.GAUCHE_BAS, buffer, bufferOffset);
    // Serialize message field [ARRIERE_DROITE]
    bufferOffset = _serializer.float32(obj.ARRIERE_DROITE, buffer, bufferOffset);
    // Serialize message field [ARRIERE_GAUCHE]
    bufferOffset = _serializer.float32(obj.ARRIERE_GAUCHE, buffer, bufferOffset);
    // Serialize message field [DROITE_HAUT]
    bufferOffset = _serializer.float32(obj.DROITE_HAUT, buffer, bufferOffset);
    // Serialize message field [DROITE_BAS]
    bufferOffset = _serializer.float32(obj.DROITE_BAS, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaserDirection
    let len;
    let data = new LaserDirection(null);
    // Deserialize message field [FACE_GAUCHE]
    data.FACE_GAUCHE = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [FACE_DROITE]
    data.FACE_DROITE = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [GAUCHE_HAUT]
    data.GAUCHE_HAUT = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [GAUCHE_BAS]
    data.GAUCHE_BAS = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ARRIERE_DROITE]
    data.ARRIERE_DROITE = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ARRIERE_GAUCHE]
    data.ARRIERE_GAUCHE = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [DROITE_HAUT]
    data.DROITE_HAUT = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [DROITE_BAS]
    data.DROITE_BAS = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tb3_projet_LAKHAL_MEZOUAR/LaserDirection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c704f8041ea4ae81e9cc21cd890fee83';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 FACE_GAUCHE
    float32 FACE_DROITE
    float32 GAUCHE_HAUT
    float32 GAUCHE_BAS
    float32 ARRIERE_DROITE
    float32 ARRIERE_GAUCHE
    float32 DROITE_HAUT
    float32 DROITE_BAS
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaserDirection(null);
    if (msg.FACE_GAUCHE !== undefined) {
      resolved.FACE_GAUCHE = msg.FACE_GAUCHE;
    }
    else {
      resolved.FACE_GAUCHE = 0.0
    }

    if (msg.FACE_DROITE !== undefined) {
      resolved.FACE_DROITE = msg.FACE_DROITE;
    }
    else {
      resolved.FACE_DROITE = 0.0
    }

    if (msg.GAUCHE_HAUT !== undefined) {
      resolved.GAUCHE_HAUT = msg.GAUCHE_HAUT;
    }
    else {
      resolved.GAUCHE_HAUT = 0.0
    }

    if (msg.GAUCHE_BAS !== undefined) {
      resolved.GAUCHE_BAS = msg.GAUCHE_BAS;
    }
    else {
      resolved.GAUCHE_BAS = 0.0
    }

    if (msg.ARRIERE_DROITE !== undefined) {
      resolved.ARRIERE_DROITE = msg.ARRIERE_DROITE;
    }
    else {
      resolved.ARRIERE_DROITE = 0.0
    }

    if (msg.ARRIERE_GAUCHE !== undefined) {
      resolved.ARRIERE_GAUCHE = msg.ARRIERE_GAUCHE;
    }
    else {
      resolved.ARRIERE_GAUCHE = 0.0
    }

    if (msg.DROITE_HAUT !== undefined) {
      resolved.DROITE_HAUT = msg.DROITE_HAUT;
    }
    else {
      resolved.DROITE_HAUT = 0.0
    }

    if (msg.DROITE_BAS !== undefined) {
      resolved.DROITE_BAS = msg.DROITE_BAS;
    }
    else {
      resolved.DROITE_BAS = 0.0
    }

    return resolved;
    }
};

module.exports = LaserDirection;
