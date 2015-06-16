package com.axis.util {
  import mx.graphics.codec.IImageEncoder;
  import mx.graphics.codec.JPEGEncoder;
  import flash.display.BitmapData;
  import flash.utils.ByteArray
  import mx.utils.Base64Encoder
  public class ImageUtil {
    public static function bitmapToJpegBase64(bitmapData:BitmapData):String {
      
      //encode BitmapData to JPG 
      var jpegEncoder:JPEGEncoder = new JPEGEncoder(100);
      var rawBytesJpeg:ByteArray = jpegEncoder.encode(bitmapData);
      var encoder:Base64Encoder = new Base64Encoder();
      encoder.encodeBytes(rawBytesJpeg, 0, rawBytesJpeg.length);
      return encoder.flush();
    }
  }
}
