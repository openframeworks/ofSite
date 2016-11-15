var currentHidding=null;
var coreFunctionsHidden=false;
var addonsFunctionsHidden=false;
var coreCollapsed=true;
var addonsCollapsed = true;
var goingToIntro=false;

$(function(){
    $('.documentation_index_group').masonry({
        itemSelector: '.box',
        columnWidth: function( containerWidth ) {
            return containerWidth / 3;
          }
    });
});

function collapse_core(collapse){
    if(collapse){
        $('.core div.documentation_index_group').hide();
        $('.core .documentation_group_head').addClass('hide');
        $('.core .documentation_group_head').removeClass('show');
        $('a.collapse_core').text('expand all');
        coreCollapsed = true;
    }else{
        $('.core .documentation_index_group').show();
        $('.core .documentation_index_group').masonry( 'reload' );
        $('.core .documentation_group_head').addClass('show');
        $('.core .documentation_group_head').removeClass('hide');
        $('a.collapse_core').text('collapse all');
        coreCollapsed = false;
    }
    if(typeof(Storage) !== "undefined") {
        localStorage.setItem("coreCollapsed", coreCollapsed);
    }
}

function collapse_addons(collapse){
    if(collapse){
        $('.addons .documentation_index_group').hide();
        $('.addons .documentation_group_head').addClass('hide');
        $('.addons .documentation_group_head').removeClass('show');
        addonsCollapsed = true;
        $('a.collapse_addons').text('expand all');
    }else{
        $('.addons .documentation_index_group').show();
        $('.addons .documentation_index_group').masonry( 'reload' );
        $('.addons .documentation_group_head').addClass('show');
        $('.addons .documentation_group_head').removeClass('hide');
        addonsCollapsed = false;
        $('a.collapse_addons').text('collapse all');
    }
    if(typeof(Storage) !== "undefined") {
        localStorage.setItem("addonsCollapsed", addonsCollapsed);
    }
}

$(document).ready(
    function(){
        // collapse one
        $('div.documentation_group_head a').click(function () {
            goingToIntro = true;
        });
        $('div.documentation_group_head').next('.documentation_index_group').hide();
        $('div.documentation_group_head').click(function () {
            if(currentHidding!=null) return;
            if(goingToIntro){
                goingToIntro = false;
                return;
            }
            currentHidding = $(this);
            if($(this).hasClass('show')){
                $(this).next('.documentation_index_group').hide("blind", { direction: "vertical" }, 500, function(){
                    currentHidding.removeClass('show');
                    currentHidding.addClass('hide');
                    currentHidding = null;
                });
            }else{
                currentHidding.removeClass('hide');
                currentHidding.addClass('show');
                $(this).next('.documentation_index_group').show("blind", { direction: "vertical" }, 500, function(){
                    currentHidding = null;
                    //$(this).masonry( 'reload' );
                });
            }
        });
        
        
        // hide show functions
        $('a.hide_core_functions').click(function(){
            if(coreFunctionsHidden){
                $('.core ul.documentation_class li.method').show();
                $('.core .documentation_index_group').masonry( 'reload' );
                coreFunctionsHidden = false;
                $(this).text('hide functions');
            }else{
                $('.core ul.documentation_class li.method').hide();
                coreFunctionsHidden = true;
                $(this).text('show functions');
                $('.core .documentation_index_group').masonry( 'reload' );
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
                addonsFunctionsHidden = true;
                $(this).text('show functions');
                $('.addons .documentation_index_group').masonry( 'reload' );
            }
        });
        
        // collapse all
        $('a.collapse_core').click(function(){
            collapse_core(!coreCollapsed);
        });
        $('a.collapse_addons').click(function(){
            collapse_addons(!addonsCollapsed);
        });
        
        
        if(typeof(Storage) !== "undefined") {
            collapsed = localStorage.getItem("coreCollapsed");
            if(collapsed!==null){
                if(collapsed==="true"){
                    collapse_core(true);
                }else{
                    collapse_core(false);
                }
            }
            collapsed = localStorage.getItem("addonsCollapsed");
            if(collapsed!==null){
                if(collapsed==="true"){
                    collapse_addons(true);
                }else{
                    collapse_addons(false);
                }
            }
        }
});
