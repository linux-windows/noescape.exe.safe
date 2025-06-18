#include <windows.h>
#include <iostream>

int main() {
    int escCount = 0;
    SHORT prevState = 0;

    while (escCount < 5) {
        SHORT state = GetAsyncKeyState(VK_ESCAPE);
        if ((state & 0x8000) && !(prevState & 0x8000)) {
            escCount++;
            Sleep(500);
        }
        prevState = state;
        Sleep(50);
    }

    WinExec("wscript recover.vbs", SW_HIDE);
    return 0;
}
