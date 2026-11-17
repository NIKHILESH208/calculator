RISKLOT PRO — MT5 CONNECTED WINDOWS CALCULATOR

WHAT THIS IS
A native Tkinter Windows GUI, not a browser. Read-only, never sends orders.
Works with multiple installed MT5 terminals, one connected at a time.
Uses MT5 order_calc_profit for broker/account-currency risk calculation.

IMPORTANT
This download contains SOURCE CODE and installer BUILD FILES, not a compiled installer.
You must build on a Windows 64-bit PC. Python 3.11/3.12 64-bit recommended.
A terminal must be running, logged in, and provide quotes to calculate.
Without an MT5 connection the app does not calculate, even if internet is available.

INSTALL / BUILD ON WINDOWS (ONE-TIME)
1. Install 64-bit Python from python.org; enable Add Python to PATH.
2. Install Inno Setup 6 from jrsoftware.org/isinfo.php.
3. Extract this folder to a normal writable folder, e.g. Desktop.
4. Double-click BUILD_EXE.bat. It installs MetaTrader5 + PyInstaller and builds dist\RiskLotPro.exe.
5. Open installer.iss with Inno Setup Compiler and click Build > Compile.
6. Double-click installer_output\RiskLotPro_Setup.exe to install.
7. Select Create desktop shortcut in installer. Double-click RiskLot Pro on desktop.

USE
1. Open/log in to each FundedNext MT5 terminal before selecting it.
2. Click + Add terminal and choose its terminal64.exe.
3. Select a terminal and click Connect. Switching terminals disconnects the previous one.
4. Select the exact symbol (including any broker suffix) and BUY or SELL.
5. Enter account-currency risk amount, TradingView stop points, and conversion multiplier.
6. Click CALCULATE LOT SIZE and copy the result.

CRITICAL TRADINGVIEW UNITS
TradingView's stop 'points' may not equal MT5's symbol 'point' value.
Example: if TradingView displays 513.1 for an XAUUSD price move of 5.131,
enter price movement per TradingView point = 0.01.
Check the displayed price difference in your TradingView position tool.
Do not assume 0.01 is right for every chart or instrument.

LIMITATIONS / RISK
Uses latest MT5 bid/ask as entry reference, not your eventual entry or a pending order price.
Actual execution price, slippage, commission, and spreads can affect actual risk.
MT5 order_calc_profit does not include commission or slippage.
No guaranteed risk limit. No trade placement. No automatic connection to TradingView.
Broker/account-currency risk may differ between FundedNext account types and servers.
Requires local installed terminal, quotes, and broker symbol metadata; not standalone offline risk math.
Test on demo first and verify with MT5 order dialog.
