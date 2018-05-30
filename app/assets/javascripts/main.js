$(document).ready(reloadPage);
function reloadPage(){
  setTimeout(() => {

    $('#refresh').reloadPage(300, function (){
      this.reload();
    });
  }, 4000);
}