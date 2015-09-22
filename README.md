FSCodeLayout
=============

## Demo

Build the project and run, you will find this is a good code layout.

## Usage
#### FSCodeLayout 
    [_introduceLabel setWidthToAutoresizeScreenWidth];
    [_introduceLabel setAutoresizeWithLimitWidth:_introduceLabel.width];
    _buttonView.y = [_introduceLabel getFrame_Bottom]+20;
    [_buttonView setWidthToAutoresizeScreenWidth];

    UIButton *btn1 = (UIButton *)[_buttonView viewWithTag:1000];
    UIButton *btn2 = (UIButton *)[_buttonView viewWithTag:1001];
    UIButton *btn3 = (UIButton *)[_buttonView viewWithTag:1002];
    btn1.width = _buttonView.width/3;
    btn2.width = _buttonView.width/3;
    btn3.width = _buttonView.width/3;
    btn2.x = [btn1 getFrame_right];
    btn3.x = [btn2 getFrame_right];
    _thisIsEnd.y = [_buttonView getFrame_Bottom]+20;
    [_thisIsEnd setWidthToAutoresizeScreenWidth];   

## Example
It is very easy to use FSCodeLayout while layout, you can take a look at the following demo
<img src = "http://7x2w39.com1.z0.glb.clouddn.com/FSCodeLayout_example.png" />


## License
Copyright © 2015 王方帅.
