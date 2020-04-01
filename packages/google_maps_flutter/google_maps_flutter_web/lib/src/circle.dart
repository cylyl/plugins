part of google_maps_flutter_web;

CircleUpdates _circleFromParams(value) {
  if (value != null) {
    List<Map<String, dynamic>> list = value;
    Set<Circle> current = Set<Circle>();
    list.forEach((circle) {
      current.add(
          Circle(
              circleId: CircleId(circle['circleId']),
              consumeTapEvents: circle['consumeTapEvents'],
              fillColor: Color(circle['fillColor']),
              center: LatLng.fromJson(circle['center']),
              radius: circle['radius'],
              strokeColor: Color(circle['strokeColor']),
              strokeWidth: circle['strokeWidth'],
              visible: circle['visible'],
              zIndex: circle['zIndex']
          )
      );
    });
    return CircleUpdates.from(null, current);
  }
  return null;
}