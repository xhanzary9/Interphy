
/*
*Se crea el mapa con todos los markers de los puestos existentes
*/
    var handler = Gmaps.build('Google');
    handler.buildMap({ internal: {id: 'MapaPuestos'},provider: {
        mapTypeId: 'roadmap',
        styles:    mapStyle
    }}, function(){
        markers = handler.addMarkers(<%=raw @hash.to_json %>);
        handler.bounds.extendWith(markers);
        handler.fitMapToBounds();
    });
