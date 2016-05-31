$(function(){
  $('.js-trendy').on('click',function(){
    $('.js-list').attr('hidden','hidden');
    $('.js-trendy-list').removeAttr('hidden');
  });

  $('.js-popular').on('click',function(){
    $('.js-list').attr('hidden','hidden');
    $('.js-popular-list').removeAttr('hidden');
  });
  $('.js-most-wanted').on('click',function(){
    $('.js-list').attr('hidden','hidden');
    $('.js-most-wanted-list').removeAttr('hidden');
  });

  $('.js-dont-apply').on('click',function(){
    $('.js-apply').attr('hidden','hidden');
  });

  $('.js-apply-btn').on('click',function(){
    swal("Hodor", "This Hodor fucks.", "success");
  })

  $('.you-wish').on('click',function(){
    swal("Hodor", "RIP Hodor S06E05", "error");
    return false;
  })
})

function showSpinner(){
  $('.spinner').show();
}
