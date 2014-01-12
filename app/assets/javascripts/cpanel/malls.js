$(function () {
  $('#mall_logo').bootstrapFileInput();
  $('#mall_logo').fileupload({
    dataType: 'json',
    url: '/cpanel/things/attachment',
    formData: function(form) {
      return [{'attachment': $('#mall_logo').val()}];
      //return form.serializeArray();
    },
    done: function (e, data) {
      //data.context.text('Upload finished.');
      $('#cpanel_mall_logo_url').val(data.result.file.normal.url);
      //alert('done');
    }
  });
});
