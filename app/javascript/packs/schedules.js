document.addEventListener('turbolinks:load', () => {
  $('.datetimepicker').bootstrapMaterialDatePicker({
    format: 'YYYY/MM/DD HH:mm',
    lang: 'ja',
    weekStart: 1,
    cancelText: 'キャンセル',
    okText: '決定',
    clearText: 'クリア'
  });
});