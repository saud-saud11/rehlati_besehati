// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommendation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TripRecommendation {

 String get id; String get tripId; String get travelerId; String get ruleId; String get category; String get status; String get titleAr; String get reasonAr; String get sourceName; DateTime get generatedAt;
/// Create a copy of TripRecommendation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripRecommendationCopyWith<TripRecommendation> get copyWith => _$TripRecommendationCopyWithImpl<TripRecommendation>(this as TripRecommendation, _$identity);

  /// Serializes this TripRecommendation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripRecommendation&&(identical(other.id, id) || other.id == id)&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.travelerId, travelerId) || other.travelerId == travelerId)&&(identical(other.ruleId, ruleId) || other.ruleId == ruleId)&&(identical(other.category, category) || other.category == category)&&(identical(other.status, status) || other.status == status)&&(identical(other.titleAr, titleAr) || other.titleAr == titleAr)&&(identical(other.reasonAr, reasonAr) || other.reasonAr == reasonAr)&&(identical(other.sourceName, sourceName) || other.sourceName == sourceName)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tripId,travelerId,ruleId,category,status,titleAr,reasonAr,sourceName,generatedAt);

@override
String toString() {
  return 'TripRecommendation(id: $id, tripId: $tripId, travelerId: $travelerId, ruleId: $ruleId, category: $category, status: $status, titleAr: $titleAr, reasonAr: $reasonAr, sourceName: $sourceName, generatedAt: $generatedAt)';
}


}

/// @nodoc
abstract mixin class $TripRecommendationCopyWith<$Res>  {
  factory $TripRecommendationCopyWith(TripRecommendation value, $Res Function(TripRecommendation) _then) = _$TripRecommendationCopyWithImpl;
@useResult
$Res call({
 String id, String tripId, String travelerId, String ruleId, String category, String status, String titleAr, String reasonAr, String sourceName, DateTime generatedAt
});




}
/// @nodoc
class _$TripRecommendationCopyWithImpl<$Res>
    implements $TripRecommendationCopyWith<$Res> {
  _$TripRecommendationCopyWithImpl(this._self, this._then);

  final TripRecommendation _self;
  final $Res Function(TripRecommendation) _then;

/// Create a copy of TripRecommendation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? tripId = null,Object? travelerId = null,Object? ruleId = null,Object? category = null,Object? status = null,Object? titleAr = null,Object? reasonAr = null,Object? sourceName = null,Object? generatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as String,travelerId: null == travelerId ? _self.travelerId : travelerId // ignore: cast_nullable_to_non_nullable
as String,ruleId: null == ruleId ? _self.ruleId : ruleId // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,titleAr: null == titleAr ? _self.titleAr : titleAr // ignore: cast_nullable_to_non_nullable
as String,reasonAr: null == reasonAr ? _self.reasonAr : reasonAr // ignore: cast_nullable_to_non_nullable
as String,sourceName: null == sourceName ? _self.sourceName : sourceName // ignore: cast_nullable_to_non_nullable
as String,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TripRecommendation].
extension TripRecommendationPatterns on TripRecommendation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TripRecommendation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TripRecommendation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TripRecommendation value)  $default,){
final _that = this;
switch (_that) {
case _TripRecommendation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TripRecommendation value)?  $default,){
final _that = this;
switch (_that) {
case _TripRecommendation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String tripId,  String travelerId,  String ruleId,  String category,  String status,  String titleAr,  String reasonAr,  String sourceName,  DateTime generatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TripRecommendation() when $default != null:
return $default(_that.id,_that.tripId,_that.travelerId,_that.ruleId,_that.category,_that.status,_that.titleAr,_that.reasonAr,_that.sourceName,_that.generatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String tripId,  String travelerId,  String ruleId,  String category,  String status,  String titleAr,  String reasonAr,  String sourceName,  DateTime generatedAt)  $default,) {final _that = this;
switch (_that) {
case _TripRecommendation():
return $default(_that.id,_that.tripId,_that.travelerId,_that.ruleId,_that.category,_that.status,_that.titleAr,_that.reasonAr,_that.sourceName,_that.generatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String tripId,  String travelerId,  String ruleId,  String category,  String status,  String titleAr,  String reasonAr,  String sourceName,  DateTime generatedAt)?  $default,) {final _that = this;
switch (_that) {
case _TripRecommendation() when $default != null:
return $default(_that.id,_that.tripId,_that.travelerId,_that.ruleId,_that.category,_that.status,_that.titleAr,_that.reasonAr,_that.sourceName,_that.generatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TripRecommendation implements TripRecommendation {
  const _TripRecommendation({required this.id, required this.tripId, required this.travelerId, required this.ruleId, required this.category, required this.status, required this.titleAr, required this.reasonAr, required this.sourceName, required this.generatedAt});
  factory _TripRecommendation.fromJson(Map<String, dynamic> json) => _$TripRecommendationFromJson(json);

@override final  String id;
@override final  String tripId;
@override final  String travelerId;
@override final  String ruleId;
@override final  String category;
@override final  String status;
@override final  String titleAr;
@override final  String reasonAr;
@override final  String sourceName;
@override final  DateTime generatedAt;

/// Create a copy of TripRecommendation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripRecommendationCopyWith<_TripRecommendation> get copyWith => __$TripRecommendationCopyWithImpl<_TripRecommendation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TripRecommendationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripRecommendation&&(identical(other.id, id) || other.id == id)&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.travelerId, travelerId) || other.travelerId == travelerId)&&(identical(other.ruleId, ruleId) || other.ruleId == ruleId)&&(identical(other.category, category) || other.category == category)&&(identical(other.status, status) || other.status == status)&&(identical(other.titleAr, titleAr) || other.titleAr == titleAr)&&(identical(other.reasonAr, reasonAr) || other.reasonAr == reasonAr)&&(identical(other.sourceName, sourceName) || other.sourceName == sourceName)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tripId,travelerId,ruleId,category,status,titleAr,reasonAr,sourceName,generatedAt);

@override
String toString() {
  return 'TripRecommendation(id: $id, tripId: $tripId, travelerId: $travelerId, ruleId: $ruleId, category: $category, status: $status, titleAr: $titleAr, reasonAr: $reasonAr, sourceName: $sourceName, generatedAt: $generatedAt)';
}


}

/// @nodoc
abstract mixin class _$TripRecommendationCopyWith<$Res> implements $TripRecommendationCopyWith<$Res> {
  factory _$TripRecommendationCopyWith(_TripRecommendation value, $Res Function(_TripRecommendation) _then) = __$TripRecommendationCopyWithImpl;
@override @useResult
$Res call({
 String id, String tripId, String travelerId, String ruleId, String category, String status, String titleAr, String reasonAr, String sourceName, DateTime generatedAt
});




}
/// @nodoc
class __$TripRecommendationCopyWithImpl<$Res>
    implements _$TripRecommendationCopyWith<$Res> {
  __$TripRecommendationCopyWithImpl(this._self, this._then);

  final _TripRecommendation _self;
  final $Res Function(_TripRecommendation) _then;

/// Create a copy of TripRecommendation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? tripId = null,Object? travelerId = null,Object? ruleId = null,Object? category = null,Object? status = null,Object? titleAr = null,Object? reasonAr = null,Object? sourceName = null,Object? generatedAt = null,}) {
  return _then(_TripRecommendation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as String,travelerId: null == travelerId ? _self.travelerId : travelerId // ignore: cast_nullable_to_non_nullable
as String,ruleId: null == ruleId ? _self.ruleId : ruleId // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,titleAr: null == titleAr ? _self.titleAr : titleAr // ignore: cast_nullable_to_non_nullable
as String,reasonAr: null == reasonAr ? _self.reasonAr : reasonAr // ignore: cast_nullable_to_non_nullable
as String,sourceName: null == sourceName ? _self.sourceName : sourceName // ignore: cast_nullable_to_non_nullable
as String,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
