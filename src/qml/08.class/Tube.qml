import QtQuick 2.13

Canvas {
        width: 120
        height: 220

        property color background : "white"  // 背景色
        property color color : "black"       // 前景色
        property int number : 9              // 显示的数字

        onPaint: {
            /* 获取Canvas的Context2D，参数只支持"2d" */
            var ctx = getContext("2d") 

            /* 填满背景色 */
            ctx.fillStyle = background
            ctx.fillRect(0, 0, width, height);

            switch(number)
            {
                case 0 :
                    paintA(ctx)
                    paintB(ctx)
                    paintC(ctx)
                    paintD(ctx)
                    paintE(ctx)
                    paintF(ctx)
                    break

                case 1 :
                    paintB(ctx)
                    paintC(ctx)
                    break

                case 2 :
                    paintA(ctx)
                    paintB(ctx)
                    paintG(ctx)
                    paintE(ctx)
                    paintD(ctx)
                    break

                case 3 :
                    paintA(ctx)
                    paintB(ctx)
                    paintG(ctx)
                    paintC(ctx)
                    paintD(ctx)
                    break

                case 4 :
                    paintF(ctx)
                    paintG(ctx)
                    paintB(ctx)
                    paintC(ctx)
                    break

                case 5 :
                    paintF(ctx)
                    paintG(ctx)
                    paintC(ctx)
                    paintD(ctx)
                    paintA(ctx)
                    break

                case 6 :
                    paintA(ctx)
                    paintF(ctx)
                    paintE(ctx)
                    paintD(ctx)
                    paintC(ctx)
                    paintG(ctx)
                    break

                case 7 :
                    paintA(ctx)
                    paintB(ctx)
                    paintC(ctx)
                    break

                case 8 :
                    paintA(ctx)
                    paintB(ctx)
                    paintC(ctx)
                    paintD(ctx)
                    paintE(ctx)
                    paintF(ctx)
                    paintG(ctx)
                    break

                case 9 :
                    paintA(ctx)
                    paintF(ctx)
                    paintG(ctx)
                    paintB(ctx)
                    paintC(ctx)
                    paintD(ctx)
                    break
            }
        }

        function paintA(ctx)
        {
            var w = width / 6
            var h = height / 11
            ctx.fillStyle = color
            ctx.fillRect(w, 0, 4*w, h) // x, y, width, height
        }

        function paintB(ctx)
        {
            var w = width / 6
            var h = height / 11
            ctx.fillStyle = color
            ctx.fillRect(5*w, h, w, 4*h)
        }

        function paintC(ctx)
        {
            var w = width / 6
            var h = height / 11
            ctx.fillStyle = color
            ctx.fillRect(5*w, 6*h, w, 4*h)
        }

        function paintD(ctx)
        {
            var w = width / 6
            var h = height / 11
            ctx.fillStyle = color
            ctx.fillRect(w, 10*h, 4*w, h)
        }

        function paintE(ctx)
        {
            var w = width / 6
            var h = height / 11
            ctx.fillStyle = color
            ctx.fillRect(0, 6*h, w, 4*h)
        }

        function paintF(ctx)
        {
            var w = width / 6
            var h = height / 11
            ctx.fillStyle = color
            ctx.fillRect(0, h, w, 4*h)
        }

        function paintG(ctx)
        {
            var w = width / 6
            var h = height / 11
            ctx.fillStyle = color
            ctx.fillRect(w, 5*h, 4*w, h)
        }
    }