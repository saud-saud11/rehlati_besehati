// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TripDestination {

 String get id; String get countryCode; String? get regionId; String? get cityName; int get sequenceOrder; DateTime get arrivalDate; DateTime get departureDate;
/// Create a copy of TripDestination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripDestinationCopyWith<TripDestination> get copyWith => _$TripDestinationCopyWithImpl<TripDestination>(this as TripDestination, _$identity);

  /// Serializes this TripDestination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripDestination&&(identical(other.id, id) || other.id == id)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.sequenceOrder, sequenceOrder) || other.sequenceOrder == sequenceOrder)&&(identical(other.arrivalDate, arrivalDate) || other.arrivalDate == arrivalDate)&&(identical(other.departureDate, departureDate) || other.departureDate == departureDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,countryCode,regionId,cityName,sequenceOrder,arrivalDate,departureDate);

@override
String toString() {
  return 'TripDestination(id: $id, countryCode: $countryCode, regionId: $regionId, cityName: $cityName, sequenceOrder: $sequenceOrder, arrivalDate: $arrivalDate, departureDate: $departureDate)';
}


}

/// @nodoc
abstract mixin class $TripDestinationCopyWith<$Res>  {
  factory $TripDestinationCopyWith(TripDestination value, $Res Function(TripDestination) _then) = _$TripDestinationCopyWithImpl;
@useResult
$Res call({
 String id, String countryCode, String? regionId, String? cityName, int sequenceOrder, DateTime arrivalDate, DateTime departureDate
});




}
/// @nodoc
class _$TripDestinationCopyWithImpl<$Res>
    implements $TripDestinationCopyWith<$Res> {
  _$TripDestinationCopyWithImpl(this._self, this._then);

  final TripDestination _self;
  final $Res Function(TripDestination) _then;

/// Create a copy of TripDestination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? countryCode = null,Object? regionId = freezed,Object? cityName = freezed,Object? sequenceOrder = null,Object? arrivalDate = null,Object? departureDate = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,regionId: freezed == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,sequenceOrder: null == sequenceOrder ? _self.sequenceOrder : sequenceOrder // ignore: cast_nullable_to_non_nullable
as int,arrivalDate: null == arrivalDate ? _self.arrivalDate : arrivalDate // ignore: cast_nullable_to_non_nullable
as DateTime,departureDate: null == departureDate ? _self.departureDate : departureDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TripDestination].
extension TripDestinationPatterns on TripDestination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TripDestination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TripDestination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TripDestination value)  $default,){
final _that = this;
switch (_that) {
case _TripDestination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TripDestination value)?  $default,){
final _that = this;
switch (_that) {
case _TripDestination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String countryCode,  String? regionId,  String? cityName,  int sequenceOrder,  DateTime arrivalDate,  DateTime departureDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TripDestination() when $default != null:
return $default(_that.id,_that.countryCode,_that.regionId,_that.cityName,_that.sequenceOrder,_that.arrivalDate,_that.departureDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String countryCode,  String? regionId,  String? cityName,  int sequenceOrder,  DateTime arrivalDate,  DateTime departureDate)  $default,) {final _that = this;
switch (_that) {
case _TripDestination():
return $default(_that.id,_that.countryCode,_that.regionId,_that.cityName,_that.sequenceOrder,_that.arrivalDate,_that.departureDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String countryCode,  String? regionId,  String? cityName,  int sequenceOrder,  DateTime arrivalDate,  DateTime departureDate)?  $default,) {final _that = this;
switch (_that) {
case _TripDestination() when $default != null:
return $default(_that.id,_that.countryCode,_that.regionId,_that.cityName,_that.sequenceOrder,_that.arrivalDate,_that.departureDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TripDestination implements TripDestination {
  const _TripDestination({required this.id, required this.countryCode, this.regionId, this.cityName, required this.sequenceOrder, required this.arrivalDate, required this.departureDate});
  factory _TripDestination.fromJson(Map<String, dynamic> json) => _$TripDestinationFromJson(json);

@override final  String id;
@override final  String countryCode;
@override final  String? regionId;
@override final  String? cityName;
@override final  int sequenceOrder;
@override final  DateTime arrivalDate;
@override final  DateTime departureDate;

/// Create a copy of TripDestination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripDestinationCopyWith<_TripDestination> get copyWith => __$TripDestinationCopyWithImpl<_TripDestination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TripDestinationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripDestination&&(identical(other.id, id) || other.id == id)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.sequenceOrder, sequenceOrder) || other.sequenceOrder == sequenceOrder)&&(identical(other.arrivalDate, arrivalDate) || other.arrivalDate == arrivalDate)&&(identical(other.departureDate, departureDate) || other.departureDate == departureDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,countryCode,regionId,cityName,sequenceOrder,arrivalDate,departureDate);

@override
String toString() {
  return 'TripDestination(id: $id, countryCode: $countryCode, regionId: $regionId, cityName: $cityName, sequenceOrder: $sequenceOrder, arrivalDate: $arrivalDate, departureDate: $departureDate)';
}


}

/// @nodoc
abstract mixin class _$TripDestinationCopyWith<$Res> implements $TripDestinationCopyWith<$Res> {
  factory _$TripDestinationCopyWith(_TripDestination value, $Res Function(_TripDestination) _then) = __$TripDestinationCopyWithImpl;
@override @useResult
$Res call({
 String id, String countryCode, String? regionId, String? cityName, int sequenceOrder, DateTime arrivalDate, DateTime departureDate
});




}
/// @nodoc
class __$TripDestinationCopyWithImpl<$Res>
    implements _$TripDestinationCopyWith<$Res> {
  __$TripDestinationCopyWithImpl(this._self, this._then);

  final _TripDestination _self;
  final $Res Function(_TripDestination) _then;

/// Create a copy of TripDestination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? countryCode = null,Object? regionId = freezed,Object? cityName = freezed,Object? sequenceOrder = null,Object? arrivalDate = null,Object? departureDate = null,}) {
  return _then(_TripDestination(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,regionId: freezed == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,sequenceOrder: null == sequenceOrder ? _self.sequenceOrder : sequenceOrder // ignore: cast_nullable_to_non_nullable
as int,arrivalDate: null == arrivalDate ? _self.arrivalDate : arrivalDate // ignore: cast_nullable_to_non_nullable
as DateTime,departureDate: null == departureDate ? _self.departureDate : departureDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
