<?
\frontend\components\SeoHelper::setTitle($this, [
    'type' => 'post'
], $post);
$templateContactForm = '[contact-form]';
?>
<!-- article -->
<article id="post-<?= $post->id ?>"
         class="post-<?= $post->id ?> page type-page status-publish hentry <?= $post->alias ?>">
    <?
    $content = $post->content;
    $form = $this->render('templates/contact-form', [
        'model' => $contactForm
    ]);
    $content = str_replace($templateContactForm, $form, $content);
    echo $content;
    ?>
</article>
<!-- /article -->
<script>
    var contactForm = true;
</script>
<script src="https://maps.googleapis.com/maps/api/js?callback=initMap" async defer></script>
<div id="map"></div>
<script>
    function initMap() {
        var mapDiv = document.getElementById('map');

        var myLatLng = new google.maps.LatLng(50.508466, 30.465394);
        var map = new google.maps.Map(mapDiv, {
            center: myLatLng,
            zoom: 17,
            disableDefaultUI: true
        });
        var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            icon: "http://www2.psd100.com/ppp/2013/10/0501/location-icon-1005022120.png"
        });
    }
</script>