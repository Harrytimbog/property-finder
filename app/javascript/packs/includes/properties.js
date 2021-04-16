const showDetails = () => {
  $(function(){
    $("#toggleDetails").on("click", function(){
      var details = $("#prop-details");
      details.toggleClass("open");
    })
  });
};

export { showDetails };


