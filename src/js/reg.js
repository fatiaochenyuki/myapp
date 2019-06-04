$.extend($.validator.messages, {
    required: "这是必填字段",
    remote: "请修正此字段",
    email: "请输入有效的电子邮件地址",
    url: "请输入有效的网址",
    date: "请输入有效的日期",
    dateISO: "请输入有效的日期 (YYYY-MM-DD)",
    number: "请输入有效的数字",
    digits: "只能输入数字",
    creditcard: "请输入有效的信用卡号码",
    equalTo: "你的输入不相同",
    extension: "请输入有效的后缀",
    maxlength: $.validator.format("最多可以输入 {0} 个字符"),
    minlength: $.validator.format("最少要输入 {0} 个字符"),
    rangelength: $.validator.format("请输入11位手机号"),
    range: $.validator.format("请输入范围在 {0} 到 {1} 之间的数值"),
    max: $.validator.format("请输入不大于 {0} 的数值"),
    min: $.validator.format("请输入不小于 {0} 的数值")
});

$(function() {
    $('#myform').validate({
        rules: {
            loginname: {
                required: true,
                maxlength:[15],
                minlength:[2]
            },
            password: {
                required: true,
                maxlength:[15],
                minlength:[2]
            },
            repassword: {
                required: true,
                maxlength:[15],
                minlength:[2]
            },
            phone: {
                required: true,
                rangelength: [11,11]
            },
            addr:{
                required: true,
            }
        },
    });
});

