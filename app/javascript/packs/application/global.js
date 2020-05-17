dHolder = function(id, texts, interval) {
    var change, index, slicer, timeq;
    index = 0;
    slicer = 0;
    return timeq = window.setTimeout(change = function() {
        var delay, timerId;
        delay = interval;
        document.getElementById(id).placeholder = texts[index].slice(0, slicer) + '|';
        if (slicer === texts[index].length) {
            slicer = 0;
            index += 1;
            delay = 1000;
            if (index === texts.length) {
                index = 0;
            }
        } else {
            slicer += 1;
        }
        return timerId = window.setTimeout(change, delay);
    }, interval);
};
$(document).ready(function(){
    dHolder("code_box",["Type Your Code Here",'#include<bits/stdc++.h>\n' +
    '\n' +
    'using namespace std;\n' +
    '\n' +
    'int main()\n' +
    '{\n' +
    '    cout << "Hello Worlds"<<endl;\n' +
    '\n' +
    '}\n' +
    '\n' +
    '\n'],70)
});
