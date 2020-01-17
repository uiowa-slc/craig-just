
$(document).ready(function() {

   var $carousel = $('.main-carousel').flickity({
        // options
          cellSelector: 'img',
          imagesLoaded: true,
          percentPosition: false,
        autoPlay: true,
        wrapAround: true
    });

    var $caption = $('.carousel-caption');
     $caption.text( 'loading');
    // Flickity instance
    var flkty = $carousel.data('flickity');

    $carousel.on( 'select.flickity', function() {

      // set image caption using img's alt
      $caption.text( flkty.selectedElement.alt )
    });

});
