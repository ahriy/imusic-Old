<script>
$(document).ready(function(){
  $("#button1").click(function(){
    $("#options").load("./dynamic/mysinger.php");
  });
   $(".slist").click(function(){
   	// alert($(this).attr("id"));
    $("#options").load("./dynamic/song_list.php?list="+$(this).attr("id"));
  });
});
</script>