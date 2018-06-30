# Rapid_script of ABB for teach 

 - Rapid版本：RobotWare_6.03.2009
 - Labview版本：LabVIEW2013
 - 编辑器：RobotStudio 6.03
 - Robot：IRB120_3_58_G_01
 - 相机：basler

## What
这是一个典型的rapid编程以及robot&cv教学项目  

1. MainMoudle文件记录了程序主体部分
 - 搬运
 - 码垛（3种垛形可根据参数自行选择）
 - 视觉分拣
 - 模拟焊接
 - 装配任务
2. visiontask_C++&opencv 是视觉部分的C++实现
3. Visual_sorting_ABB_ByLabview 是视觉的labview实现

*因为basler官方未提供python接口，这个项目没有引入py实现*

## How
rapid程序包含所有位置点坐标，原始机型是120的数值。  
如果在其他机型上应用，现场更改就好  
大部分位置点声明时用的变量，需要更改的点集中在PROC rModPos()  

### 与视觉的配合：
主机要支持pc-interface  
使用socket通信方式，默认编码utf-8  

### 视觉端
相机采用的是basler
#### 实现方式①：
使用的是Labview2013+Vision Assistant  
Labview可以使用更高版本，实测兼容  
相机只要NI-MAX驱动支持，就可以使用，不局限于balser  

#### 实现方式②：
必须使用basler相机，相关驱动见[官网](https://www.baslerweb.com/cn/products/software/)  
C++工程是当时同事创建的，原始文件已丢失，只留存了逻辑部分的代码  
因没有图形界面的支持，此方式仅用于原理探究  

*番外：*
按照cpp文件的实现思路，完全可以用python+opencv实现此功能  
只不过需要接口支持，当然也可以使用一些互联网相机的api接口实现  

## When

2016年初完成，历次教学培训均使用或引用本项目内容

## Why

GitHub上极少关于rapid以及robot+cv项目，也许是行业太封闭，也许是rapid编程太小众  
Rapid_script of ABB for teach 本身就是一个教学项目，初版完成时间在2016年初  

rapid程序脚本全部由本人完成，《工业机器人程序设计与实践》一书里，引用的也是代码片段  
labview程序原型源自北航博士论文  
c++实现依靠嵌入式部门的支持  

```
代码经过几次调整，由最初的3000多行压缩到700行左右 
并且实现了多个程序脚本的解耦，去掉了画蛇添足的注释 
重新命名变量和程序，所见即所得 
```

#### 后记：

>最近在整理文件，回忆起了刚入职做的这个项目   
以后大概率不会接触到rapid基础编程和labview了   
如果有人看到，希望能抛砖引玉对你提供一些思路   
培训使用的PPT和pdf教材，涉及公司版权，故不能上传




