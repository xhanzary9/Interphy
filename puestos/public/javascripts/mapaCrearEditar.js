
/*
*Se crea el mapa con todos los markers de los puestos existentes y uno para editar o
*crear el maker del puesto que se creara o editara
*/
    handler = Gmaps.build('Google');
    handler.buildMap({ provider: {styles: mapStyle}, internal: {id: 'MapaEditar'}}, function(){
      marker = handler.addMarkers(
        [
          {
            <%if defined?(@puestoe) %>
              <% if @puestoe.lat != " " && @puestoe.lng != " " %>
                "lat": <%= @puestoe.lat %>,
                "lng": <%= @puestoe.lng %>,
                <% else %>
                "lat": 19.323657, 
                "lng": -99.179663,
              <% end %>
            <% else %>
              "lat": 19.323657, 
              "lng": -99.179663,
            <% end %>
          }
        ]
      ,{ draggable: true}
      );
      markers = handler.addMarkers(<%=raw @hash.to_json %>);
      handler.bounds.extendWith(markers);
      handler.fitMapToBounds();

      // Move existing marker
      google.maps.event.addListener(marker[0].serviceObject, 'dragend', function() {
        updateFormLocation(this.getPosition());
      });
    });

    // Update form attributes with given coordinates
    function updateFormLocation(latLng) {
      $('#puesto_lat').val(latLng.lat());
      $('#puesto_lng').val(latLng.lng());
      console.log("coordenadas:" + latLng.lat() + latLng.lng());
    }
    