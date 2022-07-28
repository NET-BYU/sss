# Game Display

Many of the following functions have parameters called combine and push. Push is inherently set to False. If it is set to True then all of the recent game display function calls will be written to the screen. Combine is inherently set to True. Each of the the individual seven segment digits are broken up into two separate digits. When writing to one of the pixels of a digit, combine states that you want to keep what is in the other pixel of the digit. When set to false it will erase whatever is on the other side of the digit. This is a quirk of making pixels out of seven segment digits.

Many of the below functions also take an x and y parameters. These are self explanatory. They are the x, y coordinates of where you want to start to draw. The origin is on the top left of the screen. A game_display object has a x_width and y_height class member that can be accessed and encouraged to be used.

---

### **init**

The init function has three parameters: board_objects, x_width, and y_height. The later two are easier to explain. The x_width and y_height are for how many pixels the display is across. A seven segment display digit is broken up into 1 pixel across and 2 pixels down, where the two pixels down share the middle line. Lets say you have 8 seven segment digits across you would put 8 for x_width and 2 for y_height. The last parameter is the board_objects. This parameter needs to be a 2d list of panel objects in the order they are on the sign. The hardware is broken up into 3 panels across and 4 panels down. Each panel has 16 columns and 6 rows of digits. An example of what would be passed into this is [[panel0, panel1, panel2],[panel3, panel4, panel5],[panel6, panel7, panel8],[panel9, panel10, panel11]]. For the physical hardware, the panel class is called SevenSegnment, which can be found under display/seven_seg.py. The simulator panel class is called Panel and is found under simulator/simulator.py. 

### draw_pixel

This function call is the simplest out of all of them. It will draw an individual pixel to the screen. A pixel is defined by the four sides of either the top or bottom of the individual digit.. The value parameters of this function determines which of those four sides is turned on. It is controlled by a nibble of data (4 bits). Pass a 1 for the bottom, 2 for the left, 4 for the top, 8 for the right, and any combination thereof.

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script>
    var a = false;
    var b = false;
    var c = false;
    var d = false;
    var canvas;
    var context;
    $(document).ready(function () {
        canvas = $("#canvas")[0];
        context = canvas.getContext("2d");
        regularpolygon(context, 0, false);
        regularpolygon(context, 2, false);
        regularpolygon(context, 1, false);
        regularpolygon(context, 3, false);
    });
    function regularpolygon(ctx, pos, fill) {
        ctx.font = "30px Arial";

        switch (pos) {
            case 0:
                c = fill;
                ctx.beginPath();
                ctx.moveTo(75, 50);
                ctx.lineTo(175, 50);
                ctx.lineTo(200, 75);
                ctx.lineTo(175, 100);
                ctx.lineTo(75, 100);
                ctx.lineTo(50, 75);
                ctx.lineTo(75, 50);
                ctx.closePath();
                if (fill == true) {
                    ctx.fillStyle = '#f00';
                    ctx.fill();
                    ctx.fillStyle = '#fff';

                }
                else {
                    ctx.fillStyle = '#fff';
                    ctx.fill();
                    ctx.fillStyle = '#f00';
                }
                context.fillText("c", 115, 83);
                ctx.stroke();
                break;
            case 1:
                b = fill;
                ctx.beginPath();
                ctx.moveTo(45, 80);
                ctx.lineTo(70, 105);
                ctx.lineTo(60, 205);
                ctx.lineTo(35, 230);
                ctx.lineTo(10, 205);
                ctx.lineTo(20, 105);
                ctx.lineTo(45, 80);
                ctx.closePath();
                if (fill == true) {
                    ctx.fillStyle = '#f00';
                    ctx.fill();
                    ctx.fillStyle = '#fff';

                }
                else {
                    ctx.fillStyle = '#fff';
                    ctx.fill();
                    ctx.fillStyle = '#f00';
                }
                context.fillText("b", 30, 160);
                ctx.stroke();
                break;
            case 2:
                a = fill;
                ctx.beginPath();
                ctx.moveTo(65, 210);
                ctx.lineTo(165, 210);
                ctx.lineTo(190, 235);
                ctx.lineTo(165, 260);
                ctx.lineTo(65, 260);
                ctx.lineTo(40, 235);
                ctx.lineTo(65, 210);
                ctx.closePath();
                if (fill == true) {
                    ctx.fillStyle = '#f00';
                    ctx.fill();
                    ctx.fillStyle = '#fff';

                }
                else {
                    ctx.fillStyle = '#fff';
                    ctx.fill();
                    ctx.fillStyle = '#f00';
                }
                context.fillText("a", 105, 243);
                ctx.stroke();
                break;
            case 3:
                d = fill;
                ctx.beginPath();
                ctx.moveTo(205, 80);
                ctx.lineTo(230, 105);
                ctx.lineTo(220, 205);
                ctx.lineTo(195, 230);
                ctx.lineTo(170, 205);
                ctx.lineTo(180, 105);
                ctx.lineTo(205, 80);
                ctx.closePath();
                if (fill == true) {
                    ctx.fillStyle = '#f00';
                    ctx.fill();
                    ctx.fillStyle = '#fff';

                }
                else {
                    ctx.fillStyle = '#fff';
                    ctx.fill();
                    ctx.fillStyle = '#f00';
                }
                context.fillText("d", 190, 160);
                ctx.stroke();
                break;
        }

        let val = 0;
        if (a) {
            val = val + 1
        }
        if (b) {
            val = val + 2
        }
        if (c) {
            val = val + 4
        }
        if (d) {
            val = val + 8
        }
        document.getElementById('hexval').textContent = "0x" + val.toString(16);
    }

    // function updatepixel(texval)
    // {
    //     if(texval)
    // }

</script>


<div>
    <canvas id="canvas" width="500" height="300">OOPS.. Upgrade your Browser</canvas>
</div>
<h2>Use the buttons to configure the pixel!</h2>
<p id="hexval" style="font-size: 20px;"></p>

<button onclick="regularpolygon(context, 2, !a)">a</button>
<button onclick="regularpolygon(context, 1, !b)">b</button>
<button onclick="regularpolygon(context, 0, !c)">c</button>
<button onclick="regularpolygon(context, 3, !d)">d</button>


### draw_hline

This function simply draws a horizontal line on the screen. It starts at the given x and y value and goes the provided length. The top parameter is set to True by default meaning the horizontal line will be drawn on the top of the pixel. When set to false it will drawn on the bottom of the pixel. This function draws from the left to the right on the screen.

### draw_vline

This function simply draws a vertical line on the screen. It starts at the given x and y value and goes the provide length. The left parameter is set to True by default meaning the vertical line will be drawn on the left side of the pixel. When set to false it will be drawn on the right of the pixel. This function draws from the top to the bottom on the screen.

### draw_shape_line

This function is a can draw an arbitrary pixel design in a line. This line can be diagonal even. It has the additional end_x and end_y parameters.

### draw_text

This function can draw a text string to the display. It can even split between two vertically aligned digits. It is hard to see what the text is at that point but it is a possibility. The display/symbols.py file provides a list of almost 90 different ASCII characters that can be drawn on the screen. Many of the characters are an approximation and may not look the way you are expecting it to look. Since this function can draw on split functions this function can not be called lower than the screen pixel height  - 2.

### get_pixel

This is a specialty function call that can return what is supposed to be displayed at a given x and y value

### push

When you call many of the above functions it will not immediately write the graphic to the screen. It is put into a buffer to be processed all at once. The push function is the function that actually pushes the changes to the screen. It is more efficient to write to the screen in this manner.

### clear

This function will clear the display buffer and the graphics on the screen. It is slow and many artifacts can be seen if it is called over and over. It generally should only be called when a game is starting or ending and the entire screen needs to be cleared off.

---

These are the base functions that we felt were needed to do almost everything we needed for the demos. Feel free to add more functions. Make sure to thoroughly test it on many edge cases.