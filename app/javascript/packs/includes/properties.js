const showDetails = () => {
  $(function(){
    $("#toggleDetails").on("click", function(){
      var details = $("#prop-details");
      details.toggleClass("open");
      if(details.hasClass("open")){
        $(this).text("Show less");
      } else {
        $(this).text("Show more");
      }
    })
  });
};

const showTelephone = () => {
  $(function(){
    $("#show-tel").on("click", function(){
      var $this = $(this);
      $this.text( $this.data("telephone"));
    });
  });
};

export { showDetails, showTelephone };


