#Lab2

#A. Introduction

In this lab we learned how to implement a counter that uses a 7 segment display

#B. System architecture
Here is our qsys design which uses a pio with 12 bit width to implement a 3 digit 7 segment display 
![image](https://user-images.githubusercontent.com/114091388/213644590-17aef844-bef2-426c-b370-ecb0e177d899.png)

In addition, a timer could be added to generate an interrupt. However, due to the lack of time. This step and subsequent steps were not done.

#C. Progress Results
Here is a video showing how the counter works.

https://user-images.githubusercontent.com/114091388/213650267-9d189570-15ee-45a5-a6b6-62610175f15f.mp4

However, this counter needs further VHDL code optimization and is not working 100% as intended. This is because the VHDL code is taking the 0xA to 0XF iterations in the VHDL.

#D. Conclusion
In this lab we implemented a binary to 7 segment display VHDL code. We also wrote a counter in C. Through our qsys design, we able to implement a working concept. 
