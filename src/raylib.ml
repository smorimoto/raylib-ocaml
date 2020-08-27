include Raylib_functions.Description (Raylib_c.Raylib_c_generated_functions)
include Raylib_generated_constants
module Types = Raylib_functions.Types
module Constants = Raylib_generated_constants

module Vector2 = struct
  let t = Types.Vector2.t

  let create x y =
    let open Ctypes in
    let vec = make t in
    setf vec Types.Vector2.x x;
    setf vec Types.Vector2.y y;
    vec

  let x vec = Ctypes.getf vec Types.Vector2.x

  let y vec = Ctypes.getf vec Types.Vector2.y
end

module Vector3 = struct
  let t = Types.Vector3.t

  let create x y z =
    let open Ctypes in
    let vec = make t in
    setf vec Types.Vector3.x x;
    setf vec Types.Vector3.y y;
    setf vec Types.Vector3.z z;
    vec

  let x vec = Ctypes.getf vec Types.Vector3.x

  let y vec = Ctypes.getf vec Types.Vector3.y

  let z vec = Ctypes.getf vec Types.Vector3.z
end

module Vector4 = struct
  let t = Types.Vector4.t

  let create x y z w =
    let open Ctypes in
    let vec = make t in
    setf vec Types.Vector4.x x;
    setf vec Types.Vector4.y y;
    setf vec Types.Vector4.z z;
    setf vec Types.Vector4.w w;
    vec

  let x vec = Ctypes.getf vec Types.Vector4.x

  let y vec = Ctypes.getf vec Types.Vector4.y

  let z vec = Ctypes.getf vec Types.Vector4.z

  let w vec = Ctypes.getf vec Types.Vector4.w
end

module Matrix = struct
  let t = Types.Matrix.t

  let create m0 m4 m8 m12 m1 m5 m9 m13 m2 m6 m10 m14 m3 m7 m11 m15 =
    let open Ctypes in
    let vec = make t in
    setf vec Types.Matrix.m0 m0;
    setf vec Types.Matrix.m1 m1;
    setf vec Types.Matrix.m2 m2;
    setf vec Types.Matrix.m3 m3;
    setf vec Types.Matrix.m4 m4;
    setf vec Types.Matrix.m5 m5;
    setf vec Types.Matrix.m6 m6;
    setf vec Types.Matrix.m7 m7;
    setf vec Types.Matrix.m8 m8;
    setf vec Types.Matrix.m9 m9;
    setf vec Types.Matrix.m10 m10;
    setf vec Types.Matrix.m11 m11;
    setf vec Types.Matrix.m12 m12;
    setf vec Types.Matrix.m13 m13;
    setf vec Types.Matrix.m14 m14;
    setf vec Types.Matrix.m15 m15;
    vec
end

module Color = struct
  let t = Types.Color.t

  let create r g b a =
    let open Ctypes in
    let color = make t in
    setf color Types.Color.r (Unsigned.UInt8.of_int r);
    setf color Types.Color.g (Unsigned.UInt8.of_int g);
    setf color Types.Color.b (Unsigned.UInt8.of_int b);
    setf color Types.Color.a (Unsigned.UInt8.of_int a);
    color

  (* Some Basic Colors *)
  let lightgray = create 200 200 200 255

  let gray = create 130 130 130 255

  let darkgray = create 80 80 80 255

  let yellow = create 253 249 0 255

  let gold = create 255 203 0 255

  let orange = create 255 161 0 255

  let pink = create 255 109 194 255

  let red = create 230 41 55 255

  let maroon = create 190 33 55 255

  let green = create 0 228 48 255

  let lime = create 0 158 47 255

  let darkgreen = create 0 117 44 255

  let skyblue = create 102 191 255 255

  let blue = create 0 121 241 255

  let darkblue = create 0 82 172 255

  let purple = create 200 122 255 255

  let violet = create 135 60 190 255

  let darkpurple = create 112 31 126 255

  let beige = create 211 176 131 255

  let brown = create 127 106 79 255

  let darkbrown = create 76 63 47 255

  let white = create 255 255 255 255

  let black = create 0 0 0 255

  let blank = create 0 0 0 0

  let magenta = create 255 0 255 255

  let raywhite = create 245 245 245 255
end

module Rectangle = struct
  let t = Types.Rectangle.t

  let create x y width height =
    let open Ctypes in
    let rc = make t in
    setf rc Types.Rectangle.x x;
    setf rc Types.Rectangle.y y;
    setf rc Types.Rectangle.width width;
    setf rc Types.Rectangle.height height;
    rc

  let x rc = Ctypes.getf rc Types.Rectangle.x

  let y rc = Ctypes.getf rc Types.Rectangle.y

  let width rc = Ctypes.getf rc Types.Rectangle.width

  let height rc = Ctypes.getf rc Types.Rectangle.height
end

module Image = struct
  let t = Types.Image.t

  let width tex = Ctypes.getf tex Types.Texture2D.width

  let height tex = Ctypes.getf tex Types.Texture2D.height

  let mipmaps tex = Ctypes.getf tex Types.Texture2D.mipmaps

  let format tex = Ctypes.getf tex Types.Texture2D.format
end

module Texture2D = struct
  let t = Types.Texture2D.t

  let id tex = Ctypes.getf tex Types.Texture2D.id

  let width tex = Ctypes.getf tex Types.Texture2D.width

  let height tex = Ctypes.getf tex Types.Texture2D.height

  let mipmaps tex = Ctypes.getf tex Types.Texture2D.mipmaps

  let format tex = Ctypes.getf tex Types.Texture2D.format
end

module RenderTexture2D = struct
  let t = Types.RenderTexture2D.t

  let texture tex = Ctypes.getf tex Types.RenderTexture2D.texture

  let depth tex = Ctypes.getf tex Types.RenderTexture2D.depth

  let depth_texture tex = Ctypes.getf tex Types.RenderTexture2D.depth_texture
end

module NPatchInfo = struct
  let t = Types.NPatchInfo.t

  let create rc left top right bottom typ =
    let open Ctypes in
    let np = make t in
    setf np Types.NPatchInfo.source_rec rc;
    setf np Types.NPatchInfo.left left;
    setf np Types.NPatchInfo.top top;
    setf np Types.NPatchInfo.right right;
    setf np Types.NPatchInfo.bottom bottom;
    setf np Types.NPatchInfo.typ typ;
    np

  let source_rec np = Ctypes.getf np Types.NPatchInfo.source_rec

  let left np = Ctypes.getf np Types.NPatchInfo.left

  let top np = Ctypes.getf np Types.NPatchInfo.top

  let right np = Ctypes.getf np Types.NPatchInfo.right

  let bottom np = Ctypes.getf np Types.NPatchInfo.bottom

  let typ np = Ctypes.getf np Types.NPatchInfo.typ
end

module CharInfo = struct
  let t = Types.CharInfo.t

  let value char_info = Ctypes.getf char_info Types.CharInfo.value

  let offset_x char_info = Ctypes.getf char_info Types.CharInfo.offset_x

  let offset_y char_info = Ctypes.getf char_info Types.CharInfo.offset_y

  let advance_x char_info = Ctypes.getf char_info Types.CharInfo.advance_x

  let image char_info = Ctypes.getf char_info Types.CharInfo.image
end

module Font = struct
  let t = Types.Font.t

  let base_size font = Ctypes.getf font Types.Font.base_size

  let chars_count font = Ctypes.getf font Types.Font.chars_count

  let texture font = Ctypes.getf font Types.Font.texture

  let recs font = Ctypes.getf font Types.Font.recs

  let chars font = Ctypes.getf font Types.Font.base_size
end

module Camera3D = struct
  let t = Types.Camera3D.t

  let create position target up fovy typ =
    let open Ctypes in
    let cam = make t in
    setf cam Types.Camera3D.position position;
    setf cam Types.Camera3D.target target;
    setf cam Types.Camera3D.up up;
    setf cam Types.Camera3D.fovy fovy;
    setf cam Types.Camera3D.typ typ;
    cam

  let position cam = Ctypes.getf cam Types.Camera3D.position

  let target cam = Ctypes.getf cam Types.Camera3D.target

  let up cam = Ctypes.getf cam Types.Camera3D.up

  let fovy cam = Ctypes.getf cam Types.Camera3D.fovy

  let typ cam = Ctypes.getf cam Types.Camera3D.typ
end

module Camera2D = struct
  let t = Types.Camera2D.t

  let create offset target rotation zoom =
    let open Ctypes in
    let cam = make t in
    setf cam Types.Camera2D.offset offset;
    setf cam Types.Camera2D.target target;
    setf cam Types.Camera2D.rotation rotation;
    setf cam Types.Camera2D.zoom zoom;
    cam

  let offset cam = Ctypes.getf cam Types.Camera2D.offset

  let target cam = Ctypes.getf cam Types.Camera2D.target

  let rotation cam = Ctypes.getf cam Types.Camera2D.rotation

  let zoom cam = Ctypes.getf cam Types.Camera2D.zoom
end

module Mesh = Types.Mesh
module Shader = Types.Shader
module MaterialMap = Types.MaterialMap
module Material = Types.Material
module Transform = Types.Transform
module BoneInfo = Types.BoneInfo
module Model = Types.Model
module ModelAnimation = Types.ModelAnimation

module Ray = struct
  let t = Types.Ray.t

  let create position direction =
    let open Ctypes in
    let ray = make t in
    setf ray Types.Ray.position position;
    setf ray Types.Ray.direction direction;
    ray

  let position ray = Ctypes.getf ray Types.Ray.position

  let direction ray = Ctypes.getf ray Types.Ray.direction
end

module RayHitInfo = struct
  let t = Types.RayHitInfo.t

  let hit ray = Ctypes.getf ray Types.RayHitInfo.hit

  let distance ray = Ctypes.getf ray Types.RayHitInfo.distance

  let position ray = Ctypes.getf ray Types.RayHitInfo.position

  let normal ray = Ctypes.getf ray Types.RayHitInfo.normal
end

module Wave = Types.Wave
module AudioStream = Types.AudioStream
module Sound = Types.Sound
module Music = Types.Music
module ConfigFlag = Types.ConfigFlag