rem ============================================================================================================================
rem 書き込むURL（最新50ページのURL） <= IEで書き込んでから（末尾にl50のやつ）

set url="https://hebi.5ch.net/test/read.cgi/news4vip/1562747175/l50"

rem ============================================================================================================================
rem 書き込み内容　=> イベント | 複数入力=>カンマ「,」区切り => 例)"eve1,eve2,eve3"

set event="大規模アップデート「アドベンチャー」7/10～,新職業パスファインダー事前作成,新職パスファインダー7/24～プレイ可能,テラバーニング,ﾐﾆｹﾞｰﾑいっぱい"

rem ============================================================================================================================
rem 書き込み内容　=>　好きなコメント | 複数入力=>カンマ「,」区切り => 例)"レス1,レス2,レス3"

set comment="新規ちゃんおいで,新規ちゃんでも美味しいレイドボスウルス21:10"

rem ============================================================================================================================
rem 書き込み間隔(秒) => 好きな時間に

set interval=1200

rem ============================================================================================================================
rem ～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
rem ====================================================================================
rem ～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
rem ====================================================================================
rem -------------以下無視--------------------------------------

set i=0

TIMEOUT /T 5 /NOBREAK
a.wsf //job:ierun %url% "test" %event% %i%

rem "-------------普通の保守-------------"

:top

TIMEOUT /T %interval% /NOBREAK
a.wsf //job:ierun %url% %comment% %event% %i%

set /a i+=1

goto top