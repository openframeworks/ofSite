var currentHidding=null;
var coreFunctionsHidden=false;
var addonsFunctionsHidden=false;
$(function(){
    $('.documentation_index_group').masonry({
        itemSelector: '.box',
        columnWidth: function( containerWidth ) {
            return containerWidth / 3;
          }
    });
});

$(document).ready(
    function(){
        $('div.documentation_group_head').click(function () {
        if(currentHidding!=null) return;
        currentHidding = $(this);
            if($(this).hasClass('show')){
                $(this).next('div.documentation_index_group').hide("blind", { direction: "vertical" }, 500, function(){
                    currentHidding.children('h2').first().text("+"+currentHidding.children('h2').first().text().substring(1));
                    currentHidding.removeClass('show');
                    currentHidding.addClass('hide');
                    currentHidding = null;
                    });
            }else{
                $(this).next('div.documentation_index_group').show("blind", { direction: "vertical" }, 500, function(){
                    currentHidding.children('h2').first().text("-"+currentHidding.children('h2').first().text().substring(1));
                    currentHidding.removeClass('hide');
                    currentHidding.addClass('show');
                    currentHidding = null;
                    });
            }
        });
        
        $('a.hide_core_functions').click(function(){
            if(coreFunctionsHidden){
                $('.core ul.documentation_class li.method').show();
                $('.core .documentation_index_group').masonry( 'reload' );
                coreFunctionsHidden = false;
                $(this).text('hide functions');
            }else{
                $('.core ul.documentation_class li.method').hide();
                $('.core .documentation_index_group').masonry( 'reload' );
                coreFunctionsHidden = true;
                $(this).text('show functions');
            }
        });
        $('a.hide_addons_functions').click(function(){
            if(addonsFunctionsHidden){
                $('.addons ul.documentation_class li.method').show();
                $('.addons .documentation_index_group').masonry( 'reload' );
                addonsFunctionsHidden = false;
                $(this).text('hide functions');
            }else{
                $('.addons ul.documentation_class li.method').hide();
                $('.addons .documentation_index_group').masonry( 'reload' );
                addonsFunctionsHidden = true;
                $(this).text('show functions');
            }
        });
});
