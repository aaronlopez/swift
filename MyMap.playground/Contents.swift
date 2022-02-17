//: A MapKit based Playground

import MapKit
import PlaygroundSupport

let appleParkWayCoordinates = CLLocationCoordinate2DMake(37.334922, -122.009033)

// Now let's create a MKMapView
let mapView = MKMapView(frame: CGRect(x:0, y:0, width:800, height:800))
mapView.mapType = .hybrid
// Define a region for our map view
var mapRegion = MKCoordinateRegion()

let mapRegionSpan = 0.12
mapRegion.center = appleParkWayCoordinates
mapRegion.span.latitudeDelta = mapRegionSpan
mapRegion.span.longitudeDelta = mapRegionSpan

mapView.setRegion(mapRegion, animated: true)

// Create a map annotation
let annotation = MKPointAnnotation()
annotation.coordinate = appleParkWayCoordinates
annotation.title = "ASDFASD Inc."
annotation.subtitle = "One Apple Park Way, Cupertino, California."

mapView.addAnnotation(annotation)

// Add the created mapView to our Playground Live View
PlaygroundPage.current.liveView = mapView

/*mapView.setCenter(CLLocationCoordinate2D(latitude: 28.09973, longitude:  -15.41343), animated: true)*/

class MyMapDelegate: NSObject, MKMapViewDelegate{
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
          print("Seleccionado")
        mapView.mapType = .hybrid
    
       
        }
    func mapView(_ mapView: MKMapView, didDeselect: MKAnnotationView){
        print("Deseleccionado")
        mapView.mapType = .satellite
        mapView.setCenter(CLLocationCoordinate2D(latitude: 28.09973, longitude:  -15.41343), animated: false)
        
    }
    func mapViewWillStartLoadingMap(_ mapView: MKMapView){
        print("CargandoMapa")
    }
}

let myMap = MyMapDelegate()
mapView.delegate = myMap

