$(document).ready(
    function(){
      $('#top_list').columnize({ columns: 3 });
      $("pre").each(function(){
        children = $(this).children("code");
        if(children.length>0){
            $(this).text($(children[0]).text());
            this.className="brush: " + children[0].className;
        }    
      });
      
      SyntaxHighlighter.defaults['toolbar'] = false;
      SyntaxHighlighter.all()
    });
