* Author:  CHENG XIE <chengxie@me.com>
* Licence: GPL v3.0

# My vimrc
Just my vimrc

1. 需要终端支持Nerd字体, 例如:SauceCodeProNerd, 请自行安装
2. 需要python3环境
3. vim需要8.2以上，带python3支持, Mac下建议使用macvim, linux下使用 vim --version 查看，若不带python3，则需要自行源码编译
4. YouCompleteMe 在安装时需要编译，gcc环境必须有

#### Installation:
```
curl -#SfL https://raw.githubusercontent.com/chengxie/my-vimrc/master/install.sh | bash
```
#### Usage:	
```vim
---------------------------------------------------------------------------------------
<F1>            显示快捷键说明窗口
<F2>            开关TagList函数列表窗口
<F3>            全文搜索光标所在的单词, 并将结果显示在左侧
<F4>            针对光标所在行设置或删除书签
<F5>            跳到上一个书签
<F6>            跳到下一个书签
<F8>            将winows换行符替换为unix换行符
<F9>            开关QuickFix窗口
<F12>           开关显示缩进线，只在python文件有效
,,              清除gd搜索结果的高亮
<Tab>           向右切换窗口
<Backspace>     向左切换窗口
<Ctrl>j         向下切换窗口
<Ctrl>k         向上切换窗口
;               开关树状文件列表
<Space>z        放大、还原当前窗口
<Space>f        全文即时搜索
<Space><Tab>    查找已经打开的文件, 支持模糊匹配
<Space><Space>  在当前目录下递归查找文件, 支持模糊匹配
f               开关CtrlSF全文搜索结果窗口
F               全文搜索光标所在的单词, 并将结果显示在左侧
:CtrlSF xxx     全文搜索xxx
<Space>q        关闭当前buffer
<Space>pp       在c或cpp文件中，根据.h文件的声明，生成定义框架代码
<Space>g		跳转至声明
<Space>aa		cpp与h文件来回切换
<Space>al		切换cpp与h文件到右侧窗口
<Space>asl      纵向分割窗口，切换cpp或h文件, 新窗口分割在右侧
<Space>ah		切换cpp与h文件到左侧窗口
<Space>ash      纵向分割窗口，切换cpp或h文件, 新窗口分割在左侧
<Space>ak		切换cpp与h文件到上方窗口
<Space>ask      横向分割窗口，切换cpp或h文件, 新窗口分割在上方
<Space>aj		切换cpp与h文件到下方窗口
<Space>asj      横向分割窗口，切换cpp或h文件, 新窗口分割在下方
---------------------------------------------------------------------------------------
```
