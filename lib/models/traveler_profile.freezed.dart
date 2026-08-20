// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'traveler_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TravelerProfile {

 String get id; String get userId; String get name; DateTime get dateOfBirth; String get sex; bool get isPregnant; bool get isBreastfeeding;
/// Create a copy of TravelerProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelerProfileCopyWith<TravelerProfile> get copyWith => _$TravelerProfileCopyWithImpl<TravelerProfile>(this as TravelerProfile, _$identity);

  /// Serializes this TravelerProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelerProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.isPregnant, isPregnant) || other.isPregnant == isPregnant)&&(identical(other.isBreastfeeding, isBreastfeeding) || other.isBreastfeeding == isBreastfeeding));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,name,dateOfBirth,sex,isPregnant,isBreastfeeding);

@override
String toString() {
  return 'TravelerProfile(id: $id, userId: $userId, name: $name, dateOfBirth: $dateOfBirth, sex: $sex, isPregnant: $isPregnant, isBreastfeeding: $isBreastfeeding)';
}


}

/// @nodoc
abstract mixin class $TravelerProfileCopyWith<$Res>  {
  factory $TravelerProfileCopyWith(TravelerProfile value, $Res Function(TravelerProfile) _then) = _$TravelerProfileCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String name, DateTime dateOfBirth, String sex, bool isPregnant, bool isBreastfeeding
});




}
/// @nodoc
class _$TravelerProfileCopyWithImpl<$Res>
    implements $TravelerProfileCopyWith<$Res> {
  _$TravelerProfileCopyWithImpl(this._self, this._then);

  final TravelerProfile _self;
  final $Res Function(TravelerProfile) _then;

/// Create a copy of TravelerProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? dateOfBirth = null,Object? sex = null,Object? isPregnant = null,Object? isBreastfeeding = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime,sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as String,isPregnant: null == isPregnant ? _self.isPregnant : isPregnant // ignore: cast_nullable_to_non_nullable
as bool,isBreastfeeding: null == isBreastfeeding ? _self.isBreastfeeding : isBreastfeeding // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TravelerProfile].
extension TravelerProfilePatterns on TravelerProfile {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelerProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelerProfile() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelerProfile value)  $default,){
final _that = this;
switch (_that) {
case _TravelerProfile():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelerProfile value)?  $default,){
final _that = this;
switch (_that) {
case _TravelerProfile() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String name,  DateTime dateOfBirth,  String sex,  bool isPregnant,  bool isBreastfeeding)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelerProfile() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.dateOfBirth,_that.sex,_that.isPregnant,_that.isBreastfeeding);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String name,  DateTime dateOfBirth,  String sex,  bool isPregnant,  bool isBreastfeeding)  $default,) {final _that = this;
switch (_that) {
case _TravelerProfile():
return $default(_that.id,_that.userId,_that.name,_that.dateOfBirth,_that.sex,_that.isPregnant,_that.isBreastfeeding);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String name,  DateTime dateOfBirth,  String sex,  bool isPregnant,  bool isBreastfeeding)?  $default,) {final _that = this;
switch (_that) {
case _TravelerProfile() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.dateOfBirth,_that.sex,_that.isPregnant,_that.isBreastfeeding);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TravelerProfile implements TravelerProfile {
  const _TravelerProfile({required this.id, required this.userId, required this.name, required this.dateOfBirth, required this.sex, this.isPregnant = false, this.isBreastfeeding = false});
  factory _TravelerProfile.fromJson(Map<String, dynamic> json) => _$TravelerProfileFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String name;
@override final  DateTime dateOfBirth;
@override final  String sex;
@override@JsonKey() final  bool isPregnant;
@override@JsonKey() final  bool isBreastfeeding;

/// Create a copy of TravelerProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelerProfileCopyWith<_TravelerProfile> get copyWith => __$TravelerProfileCopyWithImpl<_TravelerProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TravelerProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelerProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.isPregnant, isPregnant) || other.isPregnant == isPregnant)&&(identical(other.isBreastfeeding, isBreastfeeding) || other.isBreastfeeding == isBreastfeeding));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,name,dateOfBirth,sex,isPregnant,isBreastfeeding);

@override
String toString() {
  return 'TravelerProfile(id: $id, userId: $userId, name: $name, dateOfBirth: $dateOfBirth, sex: $sex, isPregnant: $isPregnant, isBreastfeeding: $isBreastfeeding)';
}


}

/// @nodoc
abstract mixin class _$TravelerProfileCopyWith<$Res> implements $TravelerProfileCopyWith<$Res> {
  factory _$TravelerProfileCopyWith(_TravelerProfile value, $Res Function(_TravelerProfile) _then) = __$TravelerProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String name, DateTime dateOfBirth, String sex, bool isPregnant, bool isBreastfeeding
});




}
/// @nodoc
class __$TravelerProfileCopyWithImpl<$Res>
    implements _$TravelerProfileCopyWith<$Res> {
  __$TravelerProfileCopyWithImpl(this._self, this._then);

  final _TravelerProfile _self;
  final $Res Function(_TravelerProfile) _then;

/// Create a copy of TravelerProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? dateOfBirth = null,Object? sex = null,Object? isPregnant = null,Object? isBreastfeeding = null,}) {
  return _then(_TravelerProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime,sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as String,isPregnant: null == isPregnant ? _self.isPregnant : isPregnant // ignore: cast_nullable_to_non_nullable
as bool,isBreastfeeding: null == isBreastfeeding ? _self.isBreastfeeding : isBreastfeeding // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
