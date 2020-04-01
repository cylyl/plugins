part of google_maps_flutter_web;

///
class CirclesController{
  GoogleMap.GMap googleMap;

  void addCircles(Set<Circle>  circlesToAdd) {

    if(circlesToAdd != null) {
      circlesToAdd.forEach((circle) {
        addCircle(circle);
      });
    }
  }

  void setGoogleMap(GoogleMap.GMap googleMap) {
    this.googleMap = googleMap;
  }

  void addCircle(Circle circle) {
    /**
     * if (circle == null) {
        return;
        }
        CircleBuilder circleBuilder = new CircleBuilder(density);
        String circleId = Convert.interpretCircleOptions(circle, circleBuilder);
        CircleOptions options = circleBuilder.build();
        addCircle(circleId, options, circleBuilder.consumeTapEvents());
     */
    final populationOptions = GoogleMap.CircleOptions()
      ..strokeColor = circle.strokeColor.toString()
      ..strokeOpacity = 0.4
      ..strokeWeight = circle.strokeWidth
      ..fillColor = circle.fillColor.toString()
      ..fillOpacity = 0.2
      ..map = googleMap
      ..center = GoogleMap.LatLng(circle.center.latitude,circle.center.longitude)
      ..radius = circle.radius
    ;
    GoogleMap.Circle cc = GoogleMap.Circle(populationOptions);
  }

}