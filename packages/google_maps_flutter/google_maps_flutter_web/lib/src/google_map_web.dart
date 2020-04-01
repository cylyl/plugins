part of google_maps_flutter_web;

///TODO
class GoogleMapController {
  ///TODO
  final int mapId;

  ///TODO
  HtmlElementView html;

  ///TODO
  GoogleMap.GMap googleMap;
  ///TODO
  DivElement div;
  ///TODO
  final GoogleMap.MapOptions options;

  CameraPosition position;


  CirclesController circlesController;

  Set<Circle> initialCircles;


  ///TODO
  GoogleMapController.build({
    @required this.mapId,
    @required this.options,
    @required this.position,
    @required this.initialCircles,
  }) {
    circlesController = CirclesController();
    div = DivElement()
      ..id = 'plugins.flutter.io/google_maps_$mapId'
    ;
    ui.platformViewRegistry.registerViewFactory(
      'plugins.flutter.io/google_maps_$mapId',
          (int viewId) => div,
    );
    html = HtmlElementView(viewType: 'plugins.flutter.io/google_maps_$mapId');
    googleMap = GoogleMap.GMap(div, options);

    onMapReady(googleMap);
    setInitialCircles(initialCircles);
    
  }

  void updateInitialCircles() {
    circlesController.addCircles(initialCircles);
  }

  void onMapReady(GoogleMap.GMap googleMap) {
    this.googleMap = googleMap;
    //set googlemap listener
    circlesController.setGoogleMap(googleMap);
    updateInitialCircles();
  }

  void setInitialCircles(Set<Circle> initialCircles) {
    this.initialCircles = initialCircles;
    if (googleMap != null) {
      updateInitialCircles();
    }
  }
}

