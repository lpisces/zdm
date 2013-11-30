$(function () {
    $('#master_pic').bootstrapFileInput();
    $('#master_pic').fileupload({
        dataType: 'json',
        url: '/cpanel/things/attachment',
        formData: function(form) {
          return [{'attachment': $('#master_pic').val()}];
          //return form.serializeArray();
        },
        done: function (e, data) {
            //data.context.text('Upload finished.');
            $('#cpanel_thing_master_pic_url').val(data.result.file.normal.url);
            //alert('done');
        }
    });

    $('#sub_pic').bootstrapFileInput();
    $('#sub_pic').fileupload({
        dataType: 'json',
        url: '/cpanel/things/attachment',
        formData: function(form) {
          return [{'attachment': $('#sub_pic').val()}];
          //return form.serializeArray();
        },
        done: function (e, data) {
            //data.context.text('Upload finished.');
            var text = $('#cpanel_thing_sub_pic_url');
            text.val(text.val() + data.result.file.normal.url + "\n");
            //alert('done');
        }
    });
});
