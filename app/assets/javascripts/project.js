/*$(document).ready(function(){
	var like_btn = $('#like_button');
	like_btn.on('click', function(event){
		event.preventDefault();
		alert(this);
		alert('hola');
		$.ajax({
  			url: this,
  			method: 'put'
		})
  		.done(function( data ) {
    		if ( console && console.log ) {
      			console.log( "Sample of data:", data );
    		}
    		alert(data.url);
    		like_btn.replaceWith(data.url);
  		});
	});
});*/