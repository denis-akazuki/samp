; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.31101.0 

	TITLE	Z:\sampsrc\02Xu1\saco\netstats.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	?szDispBuf@@3PADA				; szDispBuf
PUBLIC	?szStatBuf@@3PADA				; szStatBuf
PUBLIC	?szDrawLine@@3PADA				; szDrawLine
_BSS	SEGMENT
?szDispBuf@@3PADA DB 04000H DUP (?)			; szDispBuf
?szStatBuf@@3PADA DB 04020H DUP (?)			; szStatBuf
?szDrawLine@@3PADA DB 0400H DUP (?)			; szDrawLine
_BSS	ENDS
PUBLIC	?GetScreenWidth@CGame@@QAEHXZ			; CGame::GetScreenWidth
PUBLIC	?GetPlayerPed@CLocalPlayer@@QAEPAVCPlayerPed@@XZ ; CLocalPlayer::GetPlayerPed
PUBLIC	?GetLocalPlayer@CPlayerPool@@QAEPAVCLocalPlayer@@XZ ; CPlayerPool::GetLocalPlayer
PUBLIC	?GetPlayerPool@CNetGame@@QAEPAVCPlayerPool@@XZ	; CNetGame::GetPlayerPool
PUBLIC	?GetRakClient@CNetGame@@QAEPAVRakClientInterface@@XZ ; CNetGame::GetRakClient
PUBLIC	??0CNetStats@@QAE@PAUIDirect3DDevice9@@@Z	; CNetStats::CNetStats
PUBLIC	?Draw@CNetStats@@QAEXXZ				; CNetStats::Draw
PUBLIC	??_C@_0DB@FBCEFPND@Download?5Rate?3?5?$CF?42f?5kbps?6Upload?5@ ; `string'
PUBLIC	??_C@_0BG@OLCIJGMA@OnFoot?5Send?5Rate?3?5?$CFu?6?$AA@ ; `string'
PUBLIC	??_C@_0BF@BFINDPOH@InCar?5Send?5Rate?3?5?$CFu?6?$AA@ ; `string'
PUBLIC	??_C@_0BF@ENINLJMP@Client?5Network?5Stats?$AA@	; `string'
PUBLIC	__real@00000000
PUBLIC	__real@44800000
PUBLIC	__xmm@41f00000000000000000000000000000
EXTRN	___report_rangecheckfailure:PROC
EXTRN	_sprintf:PROC
EXTRN	_strcat:PROC
EXTRN	__imp__GetTickCount@0:PROC
EXTRN	?IsInVehicle@CPlayerPed@@QAEHXZ:PROC		; CPlayerPed::IsInVehicle
EXTRN	?StatisticsToString@@YAXPAURakNetStatisticsStruct@@PADH@Z:PROC ; StatisticsToString
EXTRN	?GetOptimumInCarSendRate@CLocalPlayer@@QAEHH@Z:PROC ; CLocalPlayer::GetOptimumInCarSendRate
EXTRN	?GetOptimumOnFootSendRate@CLocalPlayer@@QAEHH@Z:PROC ; CLocalPlayer::GetOptimumOnFootSendRate
EXTRN	?DetermineNumberOfPlayersInLocalRange@CLocalPlayer@@QAEHXZ:PROC ; CLocalPlayer::DetermineNumberOfPlayersInLocalRange
EXTRN	?MeasureText@CFontRender@@QAE?AUtagSIZE@@PAD@Z:PROC ; CFontRender::MeasureText
EXTRN	?RenderText@CFontRender@@QAEXPADUtagRECT@@K@Z:PROC ; CFontRender::RenderText
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	?pGame@@3PAVCGame@@A:DWORD			; pGame
EXTRN	?pNetGame@@3PAVCNetGame@@A:DWORD		; pNetGame
EXTRN	?pDefaultFont@@3PAVCFontRender@@A:DWORD		; pDefaultFont
EXTRN	___security_cookie:DWORD
EXTRN	__fltused:DWORD
;	COMDAT __xmm@41f00000000000000000000000000000
CONST	SEGMENT
__xmm@41f00000000000000000000000000000 DB 00H, 00H, 00H, 00H, 00H, 00H, 00H
	DB	00H, 00H, 00H, 00H, 00H, 00H, 00H, 0f0H, 'A'
CONST	ENDS
;	COMDAT __real@44800000
CONST	SEGMENT
__real@44800000 DD 044800000r			; 1024
CONST	ENDS
;	COMDAT __real@00000000
CONST	SEGMENT
__real@00000000 DD 000000000r			; 0
CONST	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
;	COMDAT ??_C@_0BF@ENINLJMP@Client?5Network?5Stats?$AA@
CONST	SEGMENT
??_C@_0BF@ENINLJMP@Client?5Network?5Stats?$AA@ DB 'Client Network Stats', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BF@BFINDPOH@InCar?5Send?5Rate?3?5?$CFu?6?$AA@
CONST	SEGMENT
??_C@_0BF@BFINDPOH@InCar?5Send?5Rate?3?5?$CFu?6?$AA@ DB 'InCar Send Rate:'
	DB	' %u', 0aH, 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0BG@OLCIJGMA@OnFoot?5Send?5Rate?3?5?$CFu?6?$AA@
CONST	SEGMENT
??_C@_0BG@OLCIJGMA@OnFoot?5Send?5Rate?3?5?$CFu?6?$AA@ DB 'OnFoot Send Rat'
	DB	'e: %u', 0aH, 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0DB@FBCEFPND@Download?5Rate?3?5?$CF?42f?5kbps?6Upload?5@
CONST	SEGMENT
??_C@_0DB@FBCEFPND@Download?5Rate?3?5?$CF?42f?5kbps?6Upload?5@ DB 'Downlo'
	DB	'ad Rate: %.2f kbps', 0aH, 'Upload Rate: %.2f kbps', 0aH, 00H ; `string'
CONST	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\netstats.cpp
;	COMDAT ?Draw@CNetStats@@QAEXXZ
_TEXT	SEGMENT
tv251 = -368						; size = 8
tv239 = -368						; size = 8
tv247 = -360						; size = 4
tv235 = -360						; size = 4
tv67 = -360						; size = 4
$T1 = -352						; size = 4
_x$ = -148						; size = 4
_pBuf$ = -136						; size = 4
_rect$ = -124						; size = 16
_size$ = -100						; size = 8
_iPlayersInRange$ = -84					; size = 4
_pPlayerPed$ = -72					; size = 4
_pLocalPlayer$ = -60					; size = 4
_fUp$ = -48						; size = 4
_fDown$ = -36						; size = 4
_pRakStats$ = -24					; size = 4
_this$ = -12						; size = 4
__$ArrayPad$ = -4					; size = 4
?Draw@CNetStats@@QAEXXZ PROC				; CNetStats::Draw, COMDAT
; _this$ = ecx

; 29   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 368				; 00000170H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-368]
	mov	ecx, 92					; 0000005cH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	mov	DWORD PTR _this$[ebp], ecx

; 30   : 	RakNetStatisticsStruct *pRakStats = pNetGame->GetRakClient()->GetStatistics();

	mov	ecx, DWORD PTR ?pNetGame@@3PAVCNetGame@@A ; pNetGame
	call	?GetRakClient@CNetGame@@QAEPAVRakClientInterface@@XZ ; CNetGame::GetRakClient
	mov	DWORD PTR tv67[ebp], eax
	mov	eax, DWORD PTR tv67[ebp]
	mov	edx, DWORD PTR [eax]
	mov	esi, esp
	mov	ecx, DWORD PTR tv67[ebp]
	mov	eax, DWORD PTR [edx+204]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _pRakStats$[ebp], eax

; 31   : 	float fDown,fUp;
; 32   : 
; 33   : 	if((GetTickCount() - m_dwLastUpdateTick) > 1000) {

	mov	esi, esp
	call	DWORD PTR __imp__GetTickCount@0
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	ecx, DWORD PTR _this$[ebp]
	sub	eax, DWORD PTR [ecx+8]
	cmp	eax, 1000				; 000003e8H
	jbe	SHORT $LN13@Draw

; 34   : 		m_dwLastUpdateTick = GetTickCount();

	mov	esi, esp
	call	DWORD PTR __imp__GetTickCount@0
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+8], eax

; 35   : 		
; 36   : 		m_dwBPSDownload = ((UINT)(pRakStats->bitsReceived / 8)) - m_dwLastTotalBytesRecv;

	mov	eax, DWORD PTR _pRakStats$[ebp]
	mov	ecx, DWORD PTR [eax+148]
	shr	ecx, 3
	mov	edx, DWORD PTR _this$[ebp]
	sub	ecx, DWORD PTR [edx+4]
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+16], ecx

; 37   : 		m_dwLastTotalBytesRecv = (UINT)(pRakStats->bitsReceived / 8);

	mov	eax, DWORD PTR _pRakStats$[ebp]
	mov	ecx, DWORD PTR [eax+148]
	shr	ecx, 3
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+4], ecx

; 38   : 
; 39   : 		m_dwBPSUpload = ((UINT)(pRakStats->totalBitsSent / 8)) - m_dwLastTotalBytesSent;

	mov	eax, DWORD PTR _pRakStats$[ebp]
	mov	ecx, DWORD PTR [eax+120]
	shr	ecx, 3
	mov	edx, DWORD PTR _this$[ebp]
	sub	ecx, DWORD PTR [edx]
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+12], ecx

; 40   : 		m_dwLastTotalBytesSent = (UINT)(pRakStats->totalBitsSent / 8);

	mov	eax, DWORD PTR _pRakStats$[ebp]
	mov	ecx, DWORD PTR [eax+120]
	shr	ecx, 3
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx], ecx
$LN13@Draw:

; 41   : 	}
; 42   : 
; 43   : 	if(m_dwBPSDownload != 0) {

	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+16], 0
	je	SHORT $LN12@Draw

; 44   : 		fDown = (float)m_dwBPSDownload / 1024;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+16]
	mov	DWORD PTR tv235[ebp], ecx
	cvtsi2sd xmm0, DWORD PTR tv235[ebp]
	mov	edx, DWORD PTR tv235[ebp]
	shr	edx, 31					; 0000001fH
	addsd	xmm0, QWORD PTR __xmm@41f00000000000000000000000000000[edx*8]
	movsd	QWORD PTR tv239[ebp], xmm0
	cvtsd2ss xmm0, QWORD PTR tv239[ebp]
	divss	xmm0, DWORD PTR __real@44800000
	movss	DWORD PTR _fDown$[ebp], xmm0

; 45   : 	} else {

	jmp	SHORT $LN11@Draw
$LN12@Draw:

; 46   : 		fDown = 0.0f;

	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _fDown$[ebp], xmm0
$LN11@Draw:

; 47   : 	}
; 48   : 
; 49   : 	if(m_dwBPSUpload != 0) {

	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+12], 0
	je	SHORT $LN10@Draw

; 50   : 		fUp = (float)m_dwBPSUpload / 1024;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	mov	DWORD PTR tv247[ebp], ecx
	cvtsi2sd xmm0, DWORD PTR tv247[ebp]
	mov	edx, DWORD PTR tv247[ebp]
	shr	edx, 31					; 0000001fH
	addsd	xmm0, QWORD PTR __xmm@41f00000000000000000000000000000[edx*8]
	movsd	QWORD PTR tv251[ebp], xmm0
	cvtsd2ss xmm0, QWORD PTR tv251[ebp]
	divss	xmm0, DWORD PTR __real@44800000
	movss	DWORD PTR _fUp$[ebp], xmm0

; 51   : 	} else {

	jmp	SHORT $LN9@Draw
$LN10@Draw:

; 52   : 		fUp = 0.0f;

	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _fUp$[ebp], xmm0
$LN9@Draw:

; 53   : 	}
; 54   : 
; 55   : 	CLocalPlayer *pLocalPlayer = pNetGame->GetPlayerPool()->GetLocalPlayer();

	mov	ecx, DWORD PTR ?pNetGame@@3PAVCNetGame@@A ; pNetGame
	call	?GetPlayerPool@CNetGame@@QAEPAVCPlayerPool@@XZ ; CNetGame::GetPlayerPool
	mov	ecx, eax
	call	?GetLocalPlayer@CPlayerPool@@QAEPAVCLocalPlayer@@XZ ; CPlayerPool::GetLocalPlayer
	mov	DWORD PTR _pLocalPlayer$[ebp], eax

; 56   : 	CPlayerPed *pPlayerPed = pLocalPlayer->GetPlayerPed();

	mov	ecx, DWORD PTR _pLocalPlayer$[ebp]
	call	?GetPlayerPed@CLocalPlayer@@QAEPAVCPlayerPed@@XZ ; CLocalPlayer::GetPlayerPed
	mov	DWORD PTR _pPlayerPed$[ebp], eax

; 57   : 	int iPlayersInRange = pLocalPlayer->DetermineNumberOfPlayersInLocalRange();

	mov	ecx, DWORD PTR _pLocalPlayer$[ebp]
	call	?DetermineNumberOfPlayersInLocalRange@CLocalPlayer@@QAEHXZ ; CLocalPlayer::DetermineNumberOfPlayersInLocalRange
	mov	DWORD PTR _iPlayersInRange$[ebp], eax

; 58   : 	if(!iPlayersInRange) iPlayersInRange = 20;

	cmp	DWORD PTR _iPlayersInRange$[ebp], 0
	jne	SHORT $LN8@Draw
	mov	DWORD PTR _iPlayersInRange$[ebp], 20	; 00000014H
$LN8@Draw:

; 59   : 
; 60   : 	sprintf(szDispBuf,"Download Rate: %.2f kbps\nUpload Rate: %.2f kbps\n",
; 61   : 		fDown,fUp);

	cvtss2sd xmm0, DWORD PTR _fUp$[ebp]
	sub	esp, 8
	movsd	QWORD PTR [esp], xmm0
	cvtss2sd xmm0, DWORD PTR _fDown$[ebp]
	sub	esp, 8
	movsd	QWORD PTR [esp], xmm0
	push	OFFSET ??_C@_0DB@FBCEFPND@Download?5Rate?3?5?$CF?42f?5kbps?6Upload?5@
	push	OFFSET ?szDispBuf@@3PADA		; szDispBuf
	call	_sprintf
	add	esp, 24					; 00000018H

; 62   : 
; 63   : 	if(pPlayerPed) {

	cmp	DWORD PTR _pPlayerPed$[ebp], 0
	je	SHORT $LN7@Draw

; 64   : 		if(!pPlayerPed->IsInVehicle()) {

	mov	ecx, DWORD PTR _pPlayerPed$[ebp]
	call	?IsInVehicle@CPlayerPed@@QAEHXZ		; CPlayerPed::IsInVehicle
	test	eax, eax
	jne	SHORT $LN6@Draw

; 65   : 			sprintf(szStatBuf,"OnFoot Send Rate: %u\n",pLocalPlayer->GetOptimumOnFootSendRate(iPlayersInRange));

	mov	eax, DWORD PTR _iPlayersInRange$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pLocalPlayer$[ebp]
	call	?GetOptimumOnFootSendRate@CLocalPlayer@@QAEHH@Z ; CLocalPlayer::GetOptimumOnFootSendRate
	push	eax
	push	OFFSET ??_C@_0BG@OLCIJGMA@OnFoot?5Send?5Rate?3?5?$CFu?6?$AA@
	push	OFFSET ?szStatBuf@@3PADA		; szStatBuf
	call	_sprintf
	add	esp, 12					; 0000000cH

; 66   : 		} else {

	jmp	SHORT $LN5@Draw
$LN6@Draw:

; 67   : 			sprintf(szStatBuf,"InCar Send Rate: %u\n",pLocalPlayer->GetOptimumInCarSendRate(iPlayersInRange));

	mov	eax, DWORD PTR _iPlayersInRange$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pLocalPlayer$[ebp]
	call	?GetOptimumInCarSendRate@CLocalPlayer@@QAEHH@Z ; CLocalPlayer::GetOptimumInCarSendRate
	push	eax
	push	OFFSET ??_C@_0BF@BFINDPOH@InCar?5Send?5Rate?3?5?$CFu?6?$AA@
	push	OFFSET ?szStatBuf@@3PADA		; szStatBuf
	call	_sprintf
	add	esp, 12					; 0000000cH
$LN5@Draw:

; 68   : 		}
; 69   : 		strcat(szDispBuf,szStatBuf);

	push	OFFSET ?szStatBuf@@3PADA		; szStatBuf
	push	OFFSET ?szDispBuf@@3PADA		; szDispBuf
	call	_strcat
	add	esp, 8
$LN7@Draw:

; 70   : 	}
; 71   : 
; 72   : #ifdef _DEBUG
; 73   : 	StatisticsToString(pRakStats,szStatBuf,2);

	push	2
	push	OFFSET ?szStatBuf@@3PADA		; szStatBuf
	mov	eax, DWORD PTR _pRakStats$[ebp]
	push	eax
	call	?StatisticsToString@@YAXPAURakNetStatisticsStruct@@PADH@Z ; StatisticsToString
	add	esp, 12					; 0000000cH

; 74   : #else
; 75   : 	StatisticsToString(pRakStats,szStatBuf,1);
; 76   : #endif
; 77   : 	strcat(szDispBuf,szStatBuf);

	push	OFFSET ?szStatBuf@@3PADA		; szStatBuf
	push	OFFSET ?szDispBuf@@3PADA		; szDispBuf
	call	_strcat
	add	esp, 8

; 78   : 
; 79   : 	//m_pD3DDevice->GetDisplayMode(0,&dDisplayMode);
; 80   : 
; 81   : 	SIZE size = pDefaultFont->MeasureText(szDispBuf);

	push	OFFSET ?szDispBuf@@3PADA		; szDispBuf
	lea	eax, DWORD PTR _size$[ebp]
	push	eax
	mov	ecx, DWORD PTR ?pDefaultFont@@3PAVCFontRender@@A ; pDefaultFont
	call	?MeasureText@CFontRender@@QAE?AUtagSIZE@@PAD@Z ; CFontRender::MeasureText

; 82   : 
; 83   : 	RECT rect;
; 84   : 	rect.top		= 10;

	mov	DWORD PTR _rect$[ebp+4], 10		; 0000000aH

; 85   : 	rect.right		= pGame->GetScreenWidth() - 150;

	mov	ecx, DWORD PTR ?pGame@@3PAVCGame@@A	; pGame
	call	?GetScreenWidth@CGame@@QAEHXZ		; CGame::GetScreenWidth
	sub	eax, 150				; 00000096H
	mov	DWORD PTR _rect$[ebp+8], eax

; 86   : 	rect.left		= 10;

	mov	DWORD PTR _rect$[ebp], 10		; 0000000aH

; 87   : 	rect.bottom		= rect.top + 16;

	mov	eax, DWORD PTR _rect$[ebp+4]
	add	eax, 16					; 00000010H
	mov	DWORD PTR _rect$[ebp+12], eax

; 88   : 
; 89   : 	PCHAR pBuf = szDispBuf;

	mov	DWORD PTR _pBuf$[ebp], OFFSET ?szDispBuf@@3PADA ; szDispBuf

; 90   : 	
; 91   : 	int x=0;

	mov	DWORD PTR _x$[ebp], 0

; 92   : 
; 93   : 	pDefaultFont->RenderText("Client Network Stats",rect,0xFF0000AA);

	push	-16777046				; ff0000aaH
	sub	esp, 16					; 00000010H
	mov	eax, esp
	mov	ecx, DWORD PTR _rect$[ebp]
	mov	DWORD PTR [eax], ecx
	mov	edx, DWORD PTR _rect$[ebp+4]
	mov	DWORD PTR [eax+4], edx
	mov	ecx, DWORD PTR _rect$[ebp+8]
	mov	DWORD PTR [eax+8], ecx
	mov	edx, DWORD PTR _rect$[ebp+12]
	mov	DWORD PTR [eax+12], edx
	push	OFFSET ??_C@_0BF@ENINLJMP@Client?5Network?5Stats?$AA@
	mov	ecx, DWORD PTR ?pDefaultFont@@3PAVCFontRender@@A ; pDefaultFont
	call	?RenderText@CFontRender@@QAEXPADUtagRECT@@K@Z ; CFontRender::RenderText

; 94   : 	rect.top += 16;

	mov	eax, DWORD PTR _rect$[ebp+4]
	add	eax, 16					; 00000010H
	mov	DWORD PTR _rect$[ebp+4], eax

; 95   : 	rect.bottom += 16;

	mov	eax, DWORD PTR _rect$[ebp+12]
	add	eax, 16					; 00000010H
	mov	DWORD PTR _rect$[ebp+12], eax
$LN4@Draw:

; 96   : 
; 97   : 	while(*pBuf) {

	mov	eax, DWORD PTR _pBuf$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	$LN3@Draw

; 98   : 		szDrawLine[x] = *pBuf;

	mov	eax, DWORD PTR _x$[ebp]
	mov	ecx, DWORD PTR _pBuf$[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR ?szDrawLine@@3PADA[eax], dl

; 99   : 		if(szDrawLine[x] == '\n') {

	mov	eax, DWORD PTR _x$[ebp]
	movsx	ecx, BYTE PTR ?szDrawLine@@3PADA[eax]
	cmp	ecx, 10					; 0000000aH
	jne	SHORT $LN2@Draw

; 100  : 			szDrawLine[x] = '\0';

	mov	eax, DWORD PTR _x$[ebp]
	mov	DWORD PTR $T1[ebp], eax
	cmp	DWORD PTR $T1[ebp], 1024		; 00000400H
	jae	SHORT $LN16@Draw
	jmp	SHORT $LN17@Draw
$LN16@Draw:
	call	___report_rangecheckfailure
$LN17@Draw:
	mov	ecx, DWORD PTR $T1[ebp]
	mov	BYTE PTR ?szDrawLine@@3PADA[ecx], 0

; 101  : 			pDefaultFont->RenderText(szDrawLine,rect,0xFFFFFFFF);

	push	-1
	sub	esp, 16					; 00000010H
	mov	eax, esp
	mov	ecx, DWORD PTR _rect$[ebp]
	mov	DWORD PTR [eax], ecx
	mov	edx, DWORD PTR _rect$[ebp+4]
	mov	DWORD PTR [eax+4], edx
	mov	ecx, DWORD PTR _rect$[ebp+8]
	mov	DWORD PTR [eax+8], ecx
	mov	edx, DWORD PTR _rect$[ebp+12]
	mov	DWORD PTR [eax+12], edx
	push	OFFSET ?szDrawLine@@3PADA		; szDrawLine
	mov	ecx, DWORD PTR ?pDefaultFont@@3PAVCFontRender@@A ; pDefaultFont
	call	?RenderText@CFontRender@@QAEXPADUtagRECT@@K@Z ; CFontRender::RenderText

; 102  : 			rect.top += 16;

	mov	eax, DWORD PTR _rect$[ebp+4]
	add	eax, 16					; 00000010H
	mov	DWORD PTR _rect$[ebp+4], eax

; 103  : 			rect.bottom += 16;

	mov	eax, DWORD PTR _rect$[ebp+12]
	add	eax, 16					; 00000010H
	mov	DWORD PTR _rect$[ebp+12], eax

; 104  : 			x=0;

	mov	DWORD PTR _x$[ebp], 0

; 105  : 		} else {

	jmp	SHORT $LN1@Draw
$LN2@Draw:

; 106  : 			x++;

	mov	eax, DWORD PTR _x$[ebp]
	add	eax, 1
	mov	DWORD PTR _x$[ebp], eax
$LN1@Draw:

; 107  : 		}
; 108  : 		pBuf++;

	mov	eax, DWORD PTR _pBuf$[ebp]
	add	eax, 1
	mov	DWORD PTR _pBuf$[ebp], eax

; 109  : 	}

	jmp	$LN4@Draw
$LN3@Draw:
$LN14@Draw:

; 110  : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN21@Draw
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 368				; 00000170H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	2
$LN21@Draw:
	DD	2
	DD	$LN20@Draw
$LN20@Draw:
	DD	-100					; ffffff9cH
	DD	8
	DD	$LN18@Draw
	DD	-124					; ffffff84H
	DD	16					; 00000010H
	DD	$LN19@Draw
$LN19@Draw:
	DB	114					; 00000072H
	DB	101					; 00000065H
	DB	99					; 00000063H
	DB	116					; 00000074H
	DB	0
$LN18@Draw:
	DB	115					; 00000073H
	DB	105					; 00000069H
	DB	122					; 0000007aH
	DB	101					; 00000065H
	DB	0
?Draw@CNetStats@@QAEXXZ ENDP				; CNetStats::Draw
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\netstats.cpp
;	COMDAT ??0CNetStats@@QAE@PAUIDirect3DDevice9@@@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_pD3DDevice$ = 8					; size = 4
??0CNetStats@@QAE@PAUIDirect3DDevice9@@@Z PROC		; CNetStats::CNetStats, COMDAT
; _this$ = ecx

; 19   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 20   : 	m_dwLastUpdateTick = GetTickCount();

	mov	esi, esp
	call	DWORD PTR __imp__GetTickCount@0
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+8], eax

; 21   : 	m_dwLastTotalBytesRecv = 0;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+4], 0

; 22   : 	m_dwLastTotalBytesSent = 0;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], 0

; 23   : 	m_dwBPSDownload = 0;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+16], 0

; 24   : 	m_dwBPSUpload = 0;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+12], 0

; 25   : 	m_pD3DDevice = pD3DDevice;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pD3DDevice$[ebp]
	mov	DWORD PTR [eax+20], ecx

; 26   : }

	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??0CNetStats@@QAE@PAUIDirect3DDevice9@@@Z ENDP		; CNetStats::CNetStats
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\net\netgame.h
;	COMDAT ?GetRakClient@CNetGame@@QAEPAVRakClientInterface@@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetRakClient@CNetGame@@QAEPAVRakClientInterface@@XZ PROC ; CNetGame::GetRakClient, COMDAT
; _this$ = ecx

; 103  : 	RakClientInterface * GetRakClient() { return m_pRakClient; };

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+28]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetRakClient@CNetGame@@QAEPAVRakClientInterface@@XZ ENDP ; CNetGame::GetRakClient
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\net\netgame.h
;	COMDAT ?GetPlayerPool@CNetGame@@QAEPAVCPlayerPool@@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetPlayerPool@CNetGame@@QAEPAVCPlayerPool@@XZ PROC	; CNetGame::GetPlayerPool, COMDAT
; _this$ = ecx

; 96   : 	CPlayerPool * GetPlayerPool() { return m_pPlayerPool; };

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+16]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetPlayerPool@CNetGame@@QAEPAVCPlayerPool@@XZ ENDP	; CNetGame::GetPlayerPool
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\net\playerpool.h
;	COMDAT ?GetLocalPlayer@CPlayerPool@@QAEPAVCLocalPlayer@@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetLocalPlayer@CPlayerPool@@QAEPAVCLocalPlayer@@XZ PROC ; CPlayerPool::GetLocalPlayer, COMDAT
; _this$ = ecx

; 46   : 	CLocalPlayer * GetLocalPlayer() { return m_pLocalPlayer; };

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetLocalPlayer@CPlayerPool@@QAEPAVCLocalPlayer@@XZ ENDP ; CPlayerPool::GetLocalPlayer
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\net\localplayer.h
;	COMDAT ?GetPlayerPed@CLocalPlayer@@QAEPAVCPlayerPed@@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetPlayerPed@CLocalPlayer@@QAEPAVCPlayerPed@@XZ PROC	; CLocalPlayer::GetPlayerPed, COMDAT
; _this$ = ecx

; 223  : 	CPlayerPed * GetPlayerPed() { return m_pPlayerPed; };

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetPlayerPed@CLocalPlayer@@QAEPAVCPlayerPed@@XZ ENDP	; CLocalPlayer::GetPlayerPed
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\game\game.h
;	COMDAT ?GetScreenWidth@CGame@@QAEHXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetScreenWidth@CGame@@QAEHXZ PROC			; CGame::GetScreenWidth, COMDAT
; _this$ = ecx

; 152  : 	int GetScreenWidth() { return *(int*)0xC17044; };

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR ds:12677188
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetScreenWidth@CGame@@QAEHXZ ENDP			; CGame::GetScreenWidth
_TEXT	ENDS
END