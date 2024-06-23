#Requires AutoHotkey v2.0-a
#SingleInstance Force

intervalDelay := 50
; 循环次数
n := 10000

; 快捷键重启脚本
F2:: Reload

; 快捷键开始脚本
F1:: {
    Loop (n) {
        ; 传送
        sendKey("G")
        Sleep(1000)
        sendKey("F")
        Sleep(400) ; default -> 200
        sendKey("E")
        Sleep(400) ; default -> 200
        sendKey("E")
        ; 界面加载读条时间
        Sleep(7500)
        ; 向前走
        sendKey("W", 5200)
        Sleep(intervalDelay)
        ; 向左走
        sendKey("A", 1900)
        Sleep(intervalDelay)
        ; 向左前45度调整位置
        Send("{W Down}")
        Send("{D Down}")
        Sleep(350)
        Send("{W Up}")
        Send("{D Up}")
        ; 释放战技
        Send("{Ctrl Down}")
        Sleep(intervalDelay)
        Send("{Ctrl Up}")
        Sleep(7500)
    }
}

sendKey(key, pressDuration := 50) {
    Send("{" key " Down}")
    Sleep(pressDuration)
    Send("{" key " Up}")
}
