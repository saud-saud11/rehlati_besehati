// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Trip {

 String get id; String get userId; String? get title; DateTime get startDate; DateTime get endDate; String get status; int get readinessScore; List<TripDestination> get destinations; List<TravelerProfile> get travelers; List<String> get activities;
/// Create a copy of Trip
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripCopyWith<Trip> get copyWith => _$TripCopyWithImpl<Trip>(this as Trip, _$identity);

  /// Serializes this Trip to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Trip&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.readinessScore, readinessScore) || other.readinessScore == readinessScore)&&const DeepCollectionEquality().equals(other.destinations, destinations)&&const DeepCollectionEquality().equals(other.travelers, travelers)&&const DeepCollectionEquality().equals(other.activities, activities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,title,startDate,endDate,status,readinessScore,const DeepCollectionEquality().hash(destinations),const DeepCollectionEquality().hash(travelers),const DeepCollectionEquality().hash(activities));

@override
String toString() {
  return 'Trip(id: $id, userId: $userId, title: $title, startDate: $startDate, endDate: $endDate, status: $status, readinessScore: $readinessScore, destinations: $destinations, travelers: $travelers, activities: $activities)';
}


}

/// @nodoc
abstract mixin class $TripCopyWith<$Res>  {
  factory $TripCopyWith(Trip value, $Res Function(Trip) _then) = _$TripCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String? title, DateTime startDate, DateTime endDate, String status, int readinessScore, List<TripDestination> destinations, List<TravelerProfile> travelers, List<String> activities
});




}
/// @nodoc
class _$TripCopyWithImpl<$Res>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._self, this._then);

  final Trip _self;
  final $Res Function(Trip) _then;

/// Create a copy of Trip
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? title = freezed,Object? startDate = null,Object? endDate = null,Object? status = null,Object? readinessScore = null,Object? destinations = null,Object? travelers = null,Object? activities = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,readinessScore: null == readinessScore ? _self.readinessScore : readinessScore // ignore: cast_nullable_to_non_nullable
as int,destinations: null == destinations ? _self.destinations : destinations // ignore: cast_nullable_to_non_nullable
as List<TripDestination>,travelers: null == travelers ? _self.travelers : travelers // ignore: cast_nullable_to_non_nullable
as List<TravelerProfile>,activities: null == activities ? _self.activities : activities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [Trip].
extension TripPatterns on Trip {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Trip value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Trip() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Trip value)  $default,){
final _that = this;
switch (_that) {
case _Trip():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Trip value)?  $default,){
final _that = this;
switch (_that) {
case _Trip() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String? title,  DateTime startDate,  DateTime endDate,  String status,  int readinessScore,  List<TripDestination> destinations,  List<TravelerProfile> travelers,  List<String> activities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Trip() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.startDate,_that.endDate,_that.status,_that.readinessScore,_that.destinations,_that.travelers,_that.activities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String? title,  DateTime startDate,  DateTime endDate,  String status,  int readinessScore,  List<TripDestination> destinations,  List<TravelerProfile> travelers,  List<String> activities)  $default,) {final _that = this;
switch (_that) {
case _Trip():
return $default(_that.id,_that.userId,_that.title,_that.startDate,_that.endDate,_that.status,_that.readinessScore,_that.destinations,_that.travelers,_that.activities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String? title,  DateTime startDate,  DateTime endDate,  String status,  int readinessScore,  List<TripDestination> destinations,  List<TravelerProfile> travelers,  List<String> activities)?  $default,) {final _that = this;
switch (_that) {
case _Trip() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.startDate,_that.endDate,_that.status,_that.readinessScore,_that.destinations,_that.travelers,_that.activities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Trip implements Trip {
  const _Trip({required this.id, required this.userId, this.title, required this.startDate, required this.endDate, this.status = 'planning', this.readinessScore = 0, final  List<TripDestination> destinations = const [], final  List<TravelerProfile> travelers = const [], final  List<String> activities = const []}): _destinations = destinations,_travelers = travelers,_activities = activities;
  factory _Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String? title;
@override final  DateTime startDate;
@override final  DateTime endDate;
@override@JsonKey() final  String status;
@override@JsonKey() final  int readinessScore;
 final  List<TripDestination> _destinations;
@override@JsonKey() List<TripDestination> get destinations {
  if (_destinations is EqualUnmodifiableListView) return _destinations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_destinations);
}

 final  List<TravelerProfile> _travelers;
@override@JsonKey() List<TravelerProfile> get travelers {
  if (_travelers is EqualUnmodifiableListView) return _travelers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_travelers);
}

 final  List<String> _activities;
@override@JsonKey() List<String> get activities {
  if (_activities is EqualUnmodifiableListView) return _activities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activities);
}


/// Create a copy of Trip
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripCopyWith<_Trip> get copyWith => __$TripCopyWithImpl<_Trip>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TripToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Trip&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.readinessScore, readinessScore) || other.readinessScore == readinessScore)&&const DeepCollectionEquality().equals(other._destinations, _destinations)&&const DeepCollectionEquality().equals(other._travelers, _travelers)&&const DeepCollectionEquality().equals(other._activities, _activities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,title,startDate,endDate,status,readinessScore,const DeepCollectionEquality().hash(_destinations),const DeepCollectionEquality().hash(_travelers),const DeepCollectionEquality().hash(_activities));

@override
String toString() {
  return 'Trip(id: $id, userId: $userId, title: $title, startDate: $startDate, endDate: $endDate, status: $status, readinessScore: $readinessScore, destinations: $destinations, travelers: $travelers, activities: $activities)';
}


}

/// @nodoc
abstract mixin class _$TripCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$TripCopyWith(_Trip value, $Res Function(_Trip) _then) = __$TripCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String? title, DateTime startDate, DateTime endDate, String status, int readinessScore, List<TripDestination> destinations, List<TravelerProfile> travelers, List<String> activities
});




}
/// @nodoc
class __$TripCopyWithImpl<$Res>
    implements _$TripCopyWith<$Res> {
  __$TripCopyWithImpl(this._self, this._then);

  final _Trip _self;
  final $Res Function(_Trip) _then;

/// Create a copy of Trip
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? title = freezed,Object? startDate = null,Object? endDate = null,Object? status = null,Object? readinessScore = null,Object? destinations = null,Object? travelers = null,Object? activities = null,}) {
  return _then(_Trip(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,readinessScore: null == readinessScore ? _self.readinessScore : readinessScore // ignore: cast_nullable_to_non_nullable
as int,destinations: null == destinations ? _self._destinations : destinations // ignore: cast_nullable_to_non_nullable
as List<TripDestination>,travelers: null == travelers ? _self._travelers : travelers // ignore: cast_nullable_to_non_nullable
as List<TravelerProfile>,activities: null == activities ? _self._activities : activities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
