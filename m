Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7779D171524
	for <lists+linux-rockchip@lfdr.de>; Thu, 27 Feb 2020 11:39:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oC6vl8oImimEVMBqyTeUdBEsv2bTeQWpE22Uyo44CSE=; b=VXosJZaAHCQ+15JuF8vpJPIux2
	K+dKdNwMV3Z25Sji9ET/rhE9POuwr29GZF68QDxADWj2XQxu1IgwdQLpprqVLiSIhX30Gn/k0rDUX
	Hvae0VVI4UWQpr/C3pt3nL83jcZgOXavvffFSt1StkyLwm23bu5BtrwqPxXVRZk2Fp5jnSQ7lRcGS
	KZNqqwtUanJweSnzhPFmyEt/HMDsTlMwvF8xH4HkPbUHOt3+GUgfrGbqqFDSFmPzaJ9E2NPVMWGeu
	AVXlWXEydGuwple66o4uLTSnejnLRRsHPaRVVk0QLFjJMygczo7/mugo6drJmOHLIwSxH0/NGeApF
	MA3+Sx2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7GZq-0000Gh-Dv; Thu, 27 Feb 2020 10:39:34 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7GZk-0000G7-UP
 for linux-rockchip@lists.infradead.org; Thu, 27 Feb 2020 10:39:32 +0000
Received: by mail-wr1-x444.google.com with SMTP id j16so1121036wrt.3
 for <linux-rockchip@lists.infradead.org>; Thu, 27 Feb 2020 02:39:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=oF50sMoB/+oKRkp+9U6YWo8o/6mV9wPfKM4Isa+c7Es=;
 b=Ab3mI2Jzg/q89TqCD5dsOsqnK2DGliuitQRkDAcZgPB1lRvlYY/6WrgilPzTc3FaZU
 abMOs9ll9GmxYqY3jlo2Qh9Vh3ZTRgNw5RxbsssUY93fN4KNytxRH9EKqkNSrxJ2krE6
 EUSTbDqWMAkPSXCMMQpaMN8wqi/aNJ5q462RsRyO20WNnPCI7pifF6I2d8MvHTLs+O/+
 FCcGTihvqvYgBKS2MqUwvHsCU6tQ2g8C5wyiPo1/F+Sp3lYLPXSQBCJUnZuhlIAr1lb9
 GHL7JMQTa/hVqHDZ2elmJ00HhVL/r6lBUrDK/OxO8AcmvJk4pmyI8vbW5WrRno0iaNUq
 0WCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=oF50sMoB/+oKRkp+9U6YWo8o/6mV9wPfKM4Isa+c7Es=;
 b=EZMlGKqSnL+UeKGqhzQWQ54jCKAr1stKSx4UqOdIHFtw0rIU6L7Rb6HSioISTmumE3
 ppEVGAkGkF6Y14Zh3NhXrkeClzRoF10BWUaIYdtdTfHkdJUyDaJWWl4nqQ/YOuipB5Rn
 rETFdNH992/cL/lVYf3YpIPtruRR6KQ3qK/P0b1nJDjueVwjCfsQ3c34Hd3vYkgN0Y5u
 GHpnXFEiRpg83D51TquqN3dtPHHpwaMQeq7dCJFXVEMEHM16vxrQ3xrycY2w9g9Q8hw+
 UZ1OJTWRHyml0jHrw9YJYxnE44CX88QubV7Cg3nO8aH2hfZ9NjIXTE+T5BN6p5GFjWln
 EgUg==
X-Gm-Message-State: APjAAAWUC2qT56DDjzo8YVganIhHYqtXtU1bONBZdr7OJSTeFieAKFxP
 afiCBBAXkbYCcTpSMsreeRLE7w==
X-Google-Smtp-Source: APXvYqwZAB1V/DRvKr8c3xYSoxrVMhfZWVf4RztAsQjEnJ59MENA1vVA88suaRhaNsfulMBV/TvxpA==
X-Received: by 2002:adf:f581:: with SMTP id f1mr4189909wro.264.1582799964238; 
 Thu, 27 Feb 2020 02:39:24 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id i4sm7240145wmd.23.2020.02.27.02.39.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 02:39:23 -0800 (PST)
References: <cb872bd4-1dd1-56fe-2370-181796b55f77@fivetechno.de>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Markus Reichl <m.reichl@fivetechno.de>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [BUG BISECT] arm64: clk: rockchip: rk3399 board does not find
 it's clocks
In-reply-to: <cb872bd4-1dd1-56fe-2370-181796b55f77@fivetechno.de>
Date: Thu, 27 Feb 2020 11:39:23 +0100
Message-ID: <1jd0a09uw4.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_023929_127044_C6709ECF 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-rockchip@lists.infradead.org, Doug Anderson <dianders@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIFRodSAyNyBGZWIgMjAyMCBhdCAxMTowNSwgTWFya3VzIFJlaWNobCA8bS5yZWljaGxAZml2
ZXRlY2huby5kZT4gd3JvdGU6Cgo+IEhpIFN0ZXBoZW4sCj4KPiBvbiByZWNlbnQgbGludXgtbmV4
dCAoZnJvbSAyMDIwMDIxNCBvbilteSByazMzOTktcm9jLXBjIGJvYXJkIHJlZnVzZXMgdG8gYm9v
dC4KPiAocy4gYmVsb3cgZG1lc2cpIHdpdGggX19jbGtfY29yZV9pbml0OiBGYWlsZWQgdG8gZ2V0
IHBoYXNlIGZvciBjbGsgJ3NkbW1jX2RydicKPgo+IEdpdCBiaXNlY3RpbmcgcG9pbnRzIHRvIHRo
ZSBmb2xsb3dpbmcgY29tbWl0OgoKSGkgTWFya3VzLAoKSSB0aGluayB5b3UgbWVudGlvbmVkIGVh
cmxpZXIgdGhhdCB5b3UgYWxyZWFkeSBoYWQgTWF4aW1lJ3MgZml4dXAgWzBdCmJ1dCBpdCBpcyBu
b3QgY2xlYXIgaXQgd2l0aCB0aGlzIHJlcG9ydC4gQ291bGQgeW91IHBsZWFzZSBjbGFyaWZ5ID8K
CkFueXdheSwgaXQgbG9va3MgdG8gbWUgdGhhdCB0aGUgcHJvYmxlbSBpcyBjb21pbmcgZnJvbQpk
cml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstbW1jLXBoYXNlLmM6NTUKClRoaXMgSFcgaGFzIGJvdGgg
YSBjb2Fyc2UgcGhhc2Ugc2V0dGluZyBhbmQgYSBmaW5lIGRlbGF5LWJhc2VkCnNldHRpbmcuCgpE
ZWxheSBiYXNlZCBwaGFzZSBjYW5ub3QgYmUgY29tcHV0ZWQgaWYgdGhlIHJhdGUgaXMgemVybyAo
aWYgdGhlIGNsb2NrCmlzIG9ycGhhbmVkIGZvciBleCkKCkhvd2V2ZXIsIEkgdGhpbmsgaXQgaXMg
c3RpbGwgdmFsaWQgZm9yIENDRiB0byBjYWxsIC5nZXRfcGhhc2UoKSBhbmQKZXhjZXB0IGFuIGFu
c3dlciwgZXZlbiB0aGUgcmF0ZSBvZiB0aGUgY2xvY2sgaXMgemVyby4KCklPVywgaWYgdGhlIHJh
dGUgaXMgMCwgSSB0aGluayAuZ2V0X3BoYXNlKCkgc2hvdWxkIG5vdCByZXR1cm4gLUVJTlZBTC4K
SXQgc2hvdWxkIHJldHVybiAwICgwSHogPT4gY29uc3RhbnQgc2lnbmFsID0+IG5vIHBoYXNlIHNo
aWZ0KS4gCgpbMF06IGh0dHBzOi8vbGttbC5rZXJuZWwub3JnL3IvMjAyMDAyMjUxMzQyNDguOTE5
ODg5LTEtbWF4aW1lQGNlcm5vLnRlY2gKCj4KPiAyNzYwODc4NjYyYTI5MGFjNTdjZmY4YTVhOGQ4
YmRhOGY0ZGRkYzM3IGlzIHRoZSBmaXJzdCBiYWQgY29tbWl0Cj4gY29tbWl0IDI3NjA4Nzg2NjJh
MjkwYWM1N2NmZjhhNWE4ZDhiZGE4ZjRkZGRjMzcKPiBBdXRob3I6IFN0ZXBoZW4gQm95ZCA8c2Jv
eWRAa2VybmVsLm9yZz4KPiBEYXRlOiAgIFdlZCBGZWIgNSAxNToyODowMiAyMDIwIC0wODAwCj4K
PiAgICAgY2xrOiBCYWlsIG91dCB3aGVuIGNhbGN1bGF0aW5nIHBoYXNlIGZhaWxzIGR1cmluZyBj
bGsgcmVnaXN0cmF0aW9uCj4gICAgICAgQmFpbCBvdXQgb2YgY2xrIHJlZ2lzdHJhdGlvbiBpZiB3
ZSBmYWlsIHRvIGdldCB0aGUgcGhhc2UgZm9yIGEgY2xrCj4gdGhhdAo+ICAgICBoYXMgYSBjbGtf
b3BzOjpnZXRfcGhhc2UoKSBjYWxsYmFjay4gUHJpbnQgYSB3YXJuaW5nIHRvbyBzbyB0aGF0IGRy
aXZlcgo+ICAgICBhdXRob3JzIGNhbiBlYXNpbHkgZmlndXJlIG91dCB0aGF0IHNvbWUgY2xrIGlz
IHVuYWJsZSB0byByZWFkIGJhY2sgcGhhc2UKPiAgICAgaW5mb3JtYXRpb24gYXQgYm9vdC4KPiAg
ICAgICBDYzogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgo+ICAgICBD
YzogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiAgICAgU3VnZ2VzdGVkLWJ5OiBK
ZXJvbWUgQnJ1bmV0IDxqYnJ1bmV0QGJheWxpYnJlLmNvbT4KPiAgICAgU2lnbmVkLW9mZi1ieTog
U3RlcGhlbiBCb3lkIDxzYm95ZEBrZXJuZWwub3JnPgo+ICAgICBMaW5rOiBodHRwczovL2xrbWwu
a2VybmVsLm9yZy9yLzIwMjAwMjA1MjMyODAyLjI5MTg0LTUtc2JveWRAa2VybmVsLm9yZwo+ICAg
ICBBY2tlZC1ieTogSmVyb21lIEJydW5ldCA8amJydW5ldEBiYXlsaWJyZS5jb20+Cj4KPiAgZHJp
dmVycy9jbGsvY2xrLmMgfCA3ICsrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQo+Cj4gWyAgICAwLjAwMDAwMF0gQm9vdGluZyBMaW51eCBvbiBw
aHlzaWNhbCBDUFUgMHgwMDAwMDAwMDAwIFsweDQxMGZkMDM0XQo+IFsgICAgMC4wMDAwMDBdIExp
bnV4IHZlcnNpb24gNS42LjAtcmMzLW5leHQtMjAyMDAyMjYgKHJvb3RAcm9jKSAoZ2NjIHZlcnNp
b24gOS4yLjEgMjAyMDAyMjAgKERlYmlhbiA5LjIuMS0yOSkpICMxNiBTTVAgUFJFRU1QVCBXZWQg
RmViIDI2IDEwOjEwOjA1IENFVCAyMDIwCj4gWyAgICAwLjAwMDAwMF0gTWFjaGluZSBtb2RlbDog
RmlyZWZseSBST0MtUkszMzk5LVBDIE1lenphbmluZSBCb2FyZAo+IFsgICAgMC4wMDAwMDBdIGVh
cmx5Y29uOiB1YXJ0ODI1MCBhdCBNTUlPMzIgMHgwMDAwMDAwMGZmMWEwMDAwIChvcHRpb25zICcn
KQo+IFsgICAgMC4wMDAwMDBdIHByaW50azogYm9vdGNvbnNvbGUgW3VhcnQ4MjUwXSBlbmFibGVk
Cj4gWyAgICAwLjAwMDAwMF0gZWZpOiBHZXR0aW5nIEVGSSBwYXJhbWV0ZXJzIGZyb20gRkRUOgo+
IFsgICAgMC4wMDAwMDBdIGVmaTogVUVGSSBub3QgZm91bmQuCj4gWyAgICAwLjAwMDAwMF0gY21h
OiBSZXNlcnZlZCAzMiBNaUIgYXQgMHgwMDAwMDAwMGY2MDAwMDAwCj4gWyAgICAwLjAwMDAwMF0g
TlVNQTogTm8gTlVNQSBjb25maWd1cmF0aW9uIGZvdW5kCj4gWyAgICAwLjAwMDAwMF0gTlVNQTog
RmFraW5nIGEgbm9kZSBhdCBbbWVtIDB4MDAwMDAwMDAwMDIwMDAwMC0weDAwMDAwMDAwZjdmZmZm
ZmZdCj4gWyAgICAwLjAwMDAwMF0gTlVNQTogTk9ERV9EQVRBIFttZW0gMHhmM2ZmZTEwMC0weGYz
ZmZmZmZmXQo+IFsgICAgMC4wMDAwMDBdIFpvbmUgcmFuZ2VzOgo+IFsgICAgMC4wMDAwMDBdICAg
RE1BICAgICAgW21lbSAweDAwMDAwMDAwMDAyMDAwMDAtMHgwMDAwMDAwMDNmZmZmZmZmXQo+IFsg
ICAgMC4wMDAwMDBdICAgRE1BMzIgICAgW21lbSAweDAwMDAwMDAwNDAwMDAwMDAtMHgwMDAwMDAw
MGY3ZmZmZmZmXQo+IFsgICAgMC4wMDAwMDBdICAgTm9ybWFsICAgZW1wdHkKPiBbICAgIDAuMDAw
MDAwXSBNb3ZhYmxlIHpvbmUgc3RhcnQgZm9yIGVhY2ggbm9kZQo+IFsgICAgMC4wMDAwMDBdIEVh
cmx5IG1lbW9yeSBub2RlIHJhbmdlcwo+IFsgICAgMC4wMDAwMDBdICAgbm9kZSAgIDA6IFttZW0g
MHgwMDAwMDAwMDAwMjAwMDAwLTB4MDAwMDAwMDBmN2ZmZmZmZl0KPiBbICAgIDAuMDAwMDAwXSBJ
bml0bWVtIHNldHVwIG5vZGUgMCBbbWVtIDB4MDAwMDAwMDAwMDIwMDAwMC0weDAwMDAwMDAwZjdm
ZmZmZmZdCj4gWyAgICAwLjAwMDAwMF0gcHNjaTogcHJvYmluZyBmb3IgY29uZHVpdCBtZXRob2Qg
ZnJvbSBEVC4KPiBbICAgIDAuMDAwMDAwXSBwc2NpOiBQU0NJdjEuMSBkZXRlY3RlZCBpbiBmaXJt
d2FyZS4KPiBbICAgIDAuMDAwMDAwXSBwc2NpOiBVc2luZyBzdGFuZGFyZCBQU0NJIHYwLjIgZnVu
Y3Rpb24gSURzCj4gWyAgICAwLjAwMDAwMF0gcHNjaTogTUlHUkFURV9JTkZPX1RZUEUgbm90IHN1
cHBvcnRlZC4KPiBbICAgIDAuMDAwMDAwXSBwc2NpOiBTTUMgQ2FsbGluZyBDb252ZW50aW9uIHYx
LjAKPiBbICAgIDAuMDAwMDAwXSBwZXJjcHU6IEVtYmVkZGVkIDIyIHBhZ2VzL2NwdSBzNDk2MjQg
cjgxOTIgZDMyMjk2IHU5MDExMgo+IFsgICAgMC4wMDAwMDBdIERldGVjdGVkIFZJUFQgSS1jYWNo
ZSBvbiBDUFUwCj4gWyAgICAwLjAwMDAwMF0gQ1BVIGZlYXR1cmVzOiBkZXRlY3RlZDogQVJNIGVy
cmF0dW0gODQ1NzE5Cj4gWyAgICAwLjAwMDAwMF0gQ1BVIGZlYXR1cmVzOiBkZXRlY3RlZDogR0lD
IHN5c3RlbSByZWdpc3RlciBDUFUgaW50ZXJmYWNlCj4gWyAgICAwLjAwMDAwMF0gQ1BVIGZlYXR1
cmVzOiBrZXJuZWwgcGFnZSB0YWJsZSBpc29sYXRpb24gZm9yY2VkIE9GRiBieSBtaXRpZ2F0aW9u
cz1vZmYKPiBbICAgIDAuMDAwMDAwXSBCdWlsdCAxIHpvbmVsaXN0cywgbW9iaWxpdHkgZ3JvdXBp
bmcgb24uICBUb3RhbCBwYWdlczogOTk5NDMyCj4gWyAgICAwLjAwMDAwMF0gUG9saWN5IHpvbmU6
IERNQTMyCj4gWyAgICAwLjAwMDAwMF0gS2VybmVsIGNvbW1hbmQgbGluZTogZWFybHljb249dWFy
dDgyNTAsbW1pbzMyLDB4ZmYxYTAwMDAgY29uc29sZT10dHkxIGNvbnNvbGU9dHR5UzIsMTUwMDAw
MCBzd2lvdGxiPTEgcm9vdD0vZGV2L252bWUwbjFwMSByb290d2FpdCBydyByb290ZnN0eXBlPWV4
dDQgaW5pdD0vc2Jpbi9pbml0IG1pdGlnYXRpb25zPW9mZgo+IFsgICAgMC4wMDAwMDBdIERlbnRy
eSBjYWNoZSBoYXNoIHRhYmxlIGVudHJpZXM6IDUyNDI4OCAob3JkZXI6IDEwLCA0MTk0MzA0IGJ5
dGVzLCBsaW5lYXIpCj4gWyAgICAwLjAwMDAwMF0gSW5vZGUtY2FjaGUgaGFzaCB0YWJsZSBlbnRy
aWVzOiAyNjIxNDQgKG9yZGVyOiA5LCAyMDk3MTUyIGJ5dGVzLCBsaW5lYXIpCj4gWyAgICAwLjAw
MDAwMF0gbWVtIGF1dG8taW5pdDogc3RhY2s6b2ZmLCBoZWFwIGFsbG9jOm9mZiwgaGVhcCBmcmVl
Om9mZgo+IFsgICAgMC4wMDAwMDBdIHNvZnR3YXJlIElPIFRMQjogbWFwcGVkIFttZW0gMHgzZmZi
ZjAwMC0weDNmZmZmMDAwXSAoME1CKQo+IFsgICAgMC4wMDAwMDBdIE1lbW9yeTogMzkxMDg4NEsv
NDA2MTE4NEsgYXZhaWxhYmxlICg2OTA4SyBrZXJuZWwgY29kZSwgNTEySyByd2RhdGEsIDI2ODBL
IHJvZGF0YSwgMTcyOEsgaW5pdCwgMzU1SyBic3MsIDExNzUzMksgcmVzZXJ2ZWQsIDMyNzY4SyBj
bWEtcmVzZXJ2ZWQpCj4gWyAgICAwLjAwMDAwMF0gU0xVQjogSFdhbGlnbj02NCwgT3JkZXI9MC0z
LCBNaW5PYmplY3RzPTAsIENQVXM9NiwgTm9kZXM9MQo+IFsgICAgMC4wMDAwMDBdIHJjdTogUHJl
ZW1wdGlibGUgaGllcmFyY2hpY2FsIFJDVSBpbXBsZW1lbnRhdGlvbi4KPiBbICAgIDAuMDAwMDAw
XSByY3U6ICAgICBSQ1UgcmVzdHJpY3RpbmcgQ1BVcyBmcm9tIE5SX0NQVVM9MjU2IHRvIG5yX2Nw
dV9pZHM9Ni4KPiBbICAgIDAuMDAwMDAwXSAgVGFza3MgUkNVIGVuYWJsZWQuCj4gWyAgICAwLjAw
MDAwMF0gcmN1OiBSQ1UgY2FsY3VsYXRlZCB2YWx1ZSBvZiBzY2hlZHVsZXItZW5saXN0bWVudCBk
ZWxheSBpcyAyNSBqaWZmaWVzLgo+IFsgICAgMC4wMDAwMDBdIHJjdTogQWRqdXN0aW5nIGdlb21l
dHJ5IGZvciByY3VfZmFub3V0X2xlYWY9MTYsIG5yX2NwdV9pZHM9Ngo+IFsgICAgMC4wMDAwMDBd
IE5SX0lSUVM6IDY0LCBucl9pcnFzOiA2NCwgcHJlYWxsb2NhdGVkIGlycXM6IDAKPiBbICAgIDAu
MDAwMDAwXSBHSUN2MzogR0lDOiBVc2luZyBzcGxpdCBFT0kvRGVhY3RpdmF0ZSBtb2RlCj4gWyAg
ICAwLjAwMDAwMF0gR0lDdjM6IDI1NiBTUElzIGltcGxlbWVudGVkCj4gWyAgICAwLjAwMDAwMF0g
R0lDdjM6IDAgRXh0ZW5kZWQgU1BJcyBpbXBsZW1lbnRlZAo+IFsgICAgMC4wMDAwMDBdIEdJQ3Yz
OiBEaXN0cmlidXRvciBoYXMgbm8gUmFuZ2UgU2VsZWN0b3Igc3VwcG9ydAo+IFsgICAgMC4wMDAw
MDBdIEdJQ3YzOiAxNiBQUElzIGltcGxlbWVudGVkCj4gWyAgICAwLjAwMDAwMF0gR0lDdjM6IG5v
IFZMUEkgc3VwcG9ydCwgbm8gZGlyZWN0IExQSSBzdXBwb3J0LCBubyBSVlBFSUQgc3VwcG9ydAo+
IFsgICAgMC4wMDAwMDBdIEdJQ3YzOiBDUFUwOiBmb3VuZCByZWRpc3RyaWJ1dG9yIDAgcmVnaW9u
IDA6MHgwMDAwMDAwMGZlZjAwMDAwCj4gWyAgICAwLjAwMDAwMF0gSVRTIFttZW0gMHhmZWUyMDAw
MC0weGZlZTNmZmZmXQo+IFsgICAgMC4wMDAwMDBdIElUU0AweDAwMDAwMDAwZmVlMjAwMDA6IGFs
bG9jYXRlZCA2NTUzNiBEZXZpY2VzIEBmMzQ4MDAwMCAoZmxhdCwgZXN6IDgsIHBzeiA2NEssIHNo
ciAwKQo+IFsgICAgMC4wMDAwMDBdIElUUzogdXNpbmcgY2FjaGUgZmx1c2hpbmcgZm9yIGNtZCBx
dWV1ZQo+IFsgICAgMC4wMDAwMDBdIEdJQ3YzOiB1c2luZyBMUEkgcHJvcGVydHkgdGFibGUgQDB4
MDAwMDAwMDBmMzQ0MDAwMAo+IFsgICAgMC4wMDAwMDBdIEdJQzogdXNpbmcgY2FjaGUgZmx1c2hp
bmcgZm9yIExQSSBwcm9wZXJ0eSB0YWJsZQo+IFsgICAgMC4wMDAwMDBdIEdJQ3YzOiBDUFUwOiB1
c2luZyBhbGxvY2F0ZWQgTFBJIHBlbmRpbmcgdGFibGUgQDB4MDAwMDAwMDBmMzQ1MDAwMAo+IFsg
ICAgMC4wMDAwMDBdIEdJQ3YzOiBHSUM6IFBQSSBwYXJ0aXRpb24gaW50ZXJydXB0LXBhcnRpdGlv
bi0wWzBdIHsgL2NwdXMvY3B1QDBbMF0gL2NwdXMvY3B1QDFbMV0gL2NwdXMvY3B1QDJbMl0gL2Nw
dXMvY3B1QDNbM10gfQo+IFsgICAgMC4wMDAwMDBdIEdJQ3YzOiBHSUM6IFBQSSBwYXJ0aXRpb24g
aW50ZXJydXB0LXBhcnRpdGlvbi0xWzFdIHsgL2NwdXMvY3B1QDEwMFs0XSAvY3B1cy9jcHVAMTAx
WzVdIH0KPiBbICAgIDAuMDAwMDAwXSByYW5kb206IGdldF9yYW5kb21fYnl0ZXMgY2FsbGVkIGZy
b20gc3RhcnRfa2VybmVsKzB4NTM4LzB4NmJjIHdpdGggY3JuZ19pbml0PTAKPiBbICAgIDAuMDAw
MDAwXSBfX2Nsa19jb3JlX2luaXQ6IEZhaWxlZCB0byBnZXQgcGhhc2UgZm9yIGNsayAnc2RtbWNf
ZHJ2Jwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFp
bGVkIHRvIHJlZ2lzdGVyIGNsb2NrIHNkbW1jX2RydjogLTIyCj4gWyAgICAwLjAwMDAwMF0gcm9j
a2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgc2Rt
bWNfc2FtcGxlOiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJh
bmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBzZGlvX2RydjogLTE3Cj4gWyAgICAwLjAw
MDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIg
Y2xvY2sgc2Rpb19zYW1wbGU6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdp
c3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGNsa19wY2llX3BtOiAtMTcK
PiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0
byByZWdpc3RlciBjbG9jayBjbGtfcGNpZXBoeV9yZWYxMDBtOiAtMTcKPiBbICAgIDAuMDAwMDAw
XSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9j
ayBjbGtfcGNpZXBoeV9yZWY6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdp
c3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGNsa19wY2llX2NvcmVfY3J1
OiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZh
aWxlZCB0byByZWdpc3RlciBjbG9jayBjbGtfcGNpZV9jb3JlOiAtMTcKPiBbICAgIDAuMDAwMDAw
XSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9j
ayBjbGtfZW1tYzogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2Jy
YW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgY3BsbF9hY2xrX2VtbWNfc3JjOiAtMTcK
PiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0
byByZWdpc3RlciBjbG9jayBncGxsX2FjbGtfZW1tY19zcmM6IC0xNwo+IFsgICAgMC4wMDAwMDBd
IHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2Nr
IGFjbGtfZW1tYzogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2Jy
YW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgYWNsa19lbW1jY29yZTogLTE3Cj4gWyAg
ICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVn
aXN0ZXIgY2xvY2sgYWNsa19lbW1jX25vYzogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBf
Y2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgYWNsa19lbW1j
Z3JmOiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6
IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBjcGxsX2FjbGtfcGVyaWxwMF9zcmM6IC0xNwo+IFsg
ICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJl
Z2lzdGVyIGNsb2NrIGdwbGxfYWNsa19wZXJpbHAwX3NyYzogLTE3Cj4gWyAgICAwLjAwMDAwMF0g
cm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sg
YWNsa19wZXJpbHAwOiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJf
YnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBoY2xrX3BlcmlscDA6IC0xNwo+IFsg
ICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJl
Z2lzdGVyIGNsb2NrIHBjbGtfcGVyaWxwMDogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBf
Y2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgYWNsa19pbnRt
ZW06IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczog
ZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGFjbGtfdHptYTogLTE3Cj4gWyAgICAwLjAwMDAwMF0g
cm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sg
Y2xrX2ludG1lbTA6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9i
cmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGNsa19pbnRtZW0xOiAtMTcKPiBbICAg
IDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdp
c3RlciBjbG9jayBjbGtfaW50bWVtMjogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xr
X3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgY2xrX2ludG1lbTM6
IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFp
bGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGNsa19pbnRtZW00OiAtMTcKPiBbICAgIDAuMDAwMDAwXSBy
b2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBj
bGtfaW50bWVtNTogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2Jy
YW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgYWNsa19kY2Y6IC0xNwo+IFsgICAgMC4w
MDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVy
IGNsb2NrIGFjbGtfZG1hYzBfcGVyaWxwOiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9j
bGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBhY2xrX2RtYWMx
X3BlcmlscDogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5j
aGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgYWNsa19wZXJpbHAwX25vYzogLTE3Cj4gWyAg
ICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVn
aXN0ZXIgY2xvY2sgaGNsa19yb206IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19y
ZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGhjbGtfbV9jcnlwdG8w
OiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZh
aWxlZCB0byByZWdpc3RlciBjbG9jayBoY2xrX3NfY3J5cHRvMDogLTE3Cj4gWyAgICAwLjAwMDAw
MF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xv
Y2sgaGNsa19tX2NyeXB0bzE6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdp
c3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGhjbGtfc19jcnlwdG8xOiAt
MTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxl
ZCB0byByZWdpc3RlciBjbG9jayBoY2xrX3BlcmlscDBfbm9jOiAtMTcKPiBbICAgIDAuMDAwMDAw
XSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9j
ayBwY2xrX2RjZjogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2Jy
YW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgY2xrX2NyeXB0bzA6IC0xNwo+IFsgICAg
MC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lz
dGVyIGNsb2NrIGNsa19jcnlwdG8xOiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtf
cmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBjcGxsX2ZjbGtfY20w
c19zcmM6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hl
czogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGdwbGxfZmNsa19jbTBzX3NyYzogLTE3Cj4gWyAg
ICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVn
aXN0ZXIgY2xvY2sgZmNsa19jbTBzOiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtf
cmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBzY2xrX20wX3Blcmls
cDogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBm
YWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgaGNsa19tMF9wZXJpbHA6IC0xNwo+IFsgICAgMC4wMDAw
MDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNs
b2NrIGRjbGtfbTBfcGVyaWxwOiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVn
aXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBjbGtfbTBfcGVyaWxwX2Rl
YzogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBm
YWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgaGNsa19tMF9wZXJpbHBfbm9jOiAtMTcKPiBbICAgIDAu
MDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3Rl
ciBjbG9jayBjcGxsX2hjbGtfcGVyaWxwMV9zcmM6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tj
aGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGdwbGxf
aGNsa19wZXJpbHAxX3NyYzogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lz
dGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgaGNsa19wZXJpbHAxOiAtMTcK
PiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0
byByZWdpc3RlciBjbG9jayBwY2xrX3BlcmlscDE6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tj
aGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGhjbGtf
cGVyaWxwMV9ub2M6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9i
cmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGhjbGtfc2Rpb19ub2M6IC0xNwo+IFsg
ICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJl
Z2lzdGVyIGNsb2NrIGhjbGtfaTJzMDogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xr
X3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgaGNsa19pMnMxOiAt
MTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxl
ZCB0byByZWdpc3RlciBjbG9jayBoY2xrX2kyczI6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tj
aGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGhjbGtf
c3BkaWY6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hl
czogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGhjbGtfc2RpbzogLTE3Cj4gWyAgICAwLjAwMDAw
MF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xv
Y2sgcGNsa19zcGk1OiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJf
YnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBoY2xrX3NkaW9hdWRpb19ub2M6IC0x
Nwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVk
IHRvIHJlZ2lzdGVyIGNsb2NrIHBjbGtfdWFydDA6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tj
aGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIHBjbGtf
dWFydDE6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hl
czogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIHBjbGtfdWFydDI6IC0xNwo+IFsgICAgMC4wMDAw
MDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNs
b2NrIHBjbGtfdWFydDM6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rl
cl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIHBjbGtfcmtpMmM3OiAtMTcKPiBb
ICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byBy
ZWdpc3RlciBjbG9jayBwY2xrX3JraTJjMTogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBf
Y2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgcGNsa19ya2ky
YzU6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczog
ZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIHBjbGtfcmtpMmM2OiAtMTcKPiBbICAgIDAuMDAwMDAw
XSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9j
ayBwY2xrX3JraTJjMjogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVy
X2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgcGNsa19ya2kyYzM6IC0xNwo+IFsg
ICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJl
Z2lzdGVyIGNsb2NrIHBjbGtfbWFpbGJveDA6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlw
X2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIHBjbGtfc2Fy
YWRjOiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6
IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBwY2xrX3RzYWRjOiAtMTcKPiBbICAgIDAuMDAwMDAw
XSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9j
ayBwY2xrX2VmdXNlMTAyNG5zOiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVn
aXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBwY2xrX2VmdXNlMTAyNHM6
IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFp
bGVkIHRvIHJlZ2lzdGVyIGNsb2NrIHBjbGtfc3BpMDogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9j
a2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgcGNs
a19zcGkxOiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNo
ZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBwY2xrX3NwaTI6IC0xNwo+IFsgICAgMC4wMDAw
MDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNs
b2NrIHBjbGtfc3BpNDogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVy
X2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgcGNsa19wZXJpbHBfc2dyZjogLTE3
Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQg
dG8gcmVnaXN0ZXIgY2xvY2sgcGNsa19wZXJpbHAxX25vYzogLTE3Cj4gWyAgICAwLjAwMDAwMF0g
cm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sg
Y2xrX3NhcmFkYzogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2Jy
YW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgY2xrX3RzYWRjOiAtMTcKPiBbICAgIDAu
MDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3Rl
ciBjbG9jayBjbGtfdGVzdG91dDFfcGxsX3NyYzogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2No
aXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgY2xrX3Rl
c3RvdXQxOiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNo
ZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBjbGtfdGVzdG91dDJfcGxsX3NyYzogLTE3Cj4g
WyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8g
cmVnaXN0ZXIgY2xvY2sgY2xrX3Rlc3RvdXQyOiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hp
cF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBhY2xrX3Zp
bzogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBm
YWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgcGNsa192aW86IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJv
Y2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGFj
bGtfdmlvX25vYzogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2Jy
YW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgcGNsa19taXBpX2RzaTA6IC0xNwo+IFsg
ICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJl
Z2lzdGVyIGNsb2NrIHBjbGtfbWlwaV9kc2kxOiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hp
cF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBwY2xrX3Zp
b19ncmY6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hl
czogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGFjbGtfaGRjcDogLTE3Cj4gWyAgICAwLjAwMDAw
MF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xv
Y2sgaGNsa19oZGNwOiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJf
YnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBwY2xrX2hkY3A6IC0xNwo+IFsgICAg
MC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lz
dGVyIGNsb2NrIGFjbGtfaGRjcF9ub2M6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Ns
a19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGFjbGtfaGRjcDIy
OiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZh
aWxlZCB0byByZWdpc3RlciBjbG9jayBoY2xrX2hkY3Bfbm9jOiAtMTcKPiBbICAgIDAuMDAwMDAw
XSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9j
ayBoY2xrX2hkY3AyMjogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVy
X2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgcGNsa19oZGNwX25vYzogLTE3Cj4g
WyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8g
cmVnaXN0ZXIgY2xvY2sgcGNsa19oZG1pX2N0cmw6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tj
aGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIHBjbGtf
ZHBfY3RybDogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5j
aGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgcGNsa19oZGNwMjI6IC0xNwo+IFsgICAgMC4w
MDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVy
IGNsb2NrIHBjbGtfZ2Fza2V0OiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVn
aXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBjbGtfZHBfY29yZTogLTE3
Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQg
dG8gcmVnaXN0ZXIgY2xvY2sgcGNsa19lZHA6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlw
X2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIHBjbGtfZWRw
X25vYzogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVz
OiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgcGNsa19lZHBfY3RybDogLTE3Cj4gWyAgICAwLjAw
MDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIg
Y2xvY2sgY2xrX2hkbWlfc2ZyOiAtMTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVn
aXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBjbGtfaGRtaV9jZWM6IC0x
Nwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVk
IHRvIHJlZ2lzdGVyIGNsb2NrIGFjbGtfdm9wMF9wcmU6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJv
Y2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGhj
bGtfdm9wMF9wcmU6IC0xNwo+IFsgICAgMC4wMDAwMDBdIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9i
cmFuY2hlczogZmFpbGVkIHRvIHJlZ2lzdGVyIGNsb2NrIGFjbGtfdm9wMDogLTE3Cj4gWyAgICAw
LjAwMDAwMF0gcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0
ZXIgY2xvY2sgYWNsa192b3AwX25vYzogLTE3Cj4gWyAgICAwLjAwMDAwMF0gcm9ja2NoaXBfY2xr
X3JlZ2lzdGVyX2JyYW5jaGVzOiBmYWlsZWQgdG8gcmVnaXN0ZXIgY2xvY2sgaGNsa192b3AwOiAt
MTcKPiBbICAgIDAuMDAwMDAwXSByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxl
ZCB0byByZWdpc3RlciBjbG9jayBoY2xrX3ZvcDBfbm9jOiAtMTcKPiBbICAgIDAuMDAwMDAwXSBy
b2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXM6IGZhaWxlZCB0byByZWdpc3RlciBjbG9jayBk
Y2xrX3ZvcDBfZGl2OiAtMTcKPiBbICAgIDAuMDAwMDAwXSBVbmFibGUgdG8gaGFuZGxlIGtlcm5l
bCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UgYXQgdmlydHVhbCBhZGRyZXNzIDAwMDAwMDAwMDAw
MDAwMDAKPiBbICAgIDAuMDAwMDAwXSBNZW0gYWJvcnQgaW5mbzoKPiBbICAgIDAuMDAwMDAwXSAg
IEVTUiA9IDB4OTYwMDAwMDQKPiBbICAgIDAuMDAwMDAwXSAgIEVDID0gMHgyNTogREFCVCAoY3Vy
cmVudCBFTCksIElMID0gMzIgYml0cwo+IFsgICAgMC4wMDAwMDBdICAgU0VUID0gMCwgRm5WID0g
MAo+IFsgICAgMC4wMDAwMDBdICAgRUEgPSAwLCBTMVBUVyA9IDAKPiBbICAgIDAuMDAwMDAwXSBE
YXRhIGFib3J0IGluZm86Cj4gWyAgICAwLjAwMDAwMF0gICBJU1YgPSAwLCBJU1MgPSAweDAwMDAw
MDA0Cj4gWyAgICAwLjAwMDAwMF0gICBDTSA9IDAsIFduUiA9IDAKPiBbICAgIDAuMDAwMDAwXSBb
MDAwMDAwMDAwMDAwMDAwMF0gdXNlciBhZGRyZXNzIGJ1dCBhY3RpdmVfbW0gaXMgc3dhcHBlcgo+
IFsgICAgMC4wMDAwMDBdIEludGVybmFsIGVycm9yOiBPb3BzOiA5NjAwMDAwNCBbIzFdIFBSRUVN
UFQgU01QCj4gWyAgICAwLjAwMDAwMF0gTW9kdWxlcyBsaW5rZWQgaW46Cj4gWyAgICAwLjAwMDAw
MF0gQ1BVOiAwIFBJRDogMCBDb21tOiBzd2FwcGVyLzAgTm90IHRhaW50ZWQgNS42LjAtcmMzLW5l
eHQtMjAyMDAyMjYgIzE2Cj4gWyAgICAwLjAwMDAwMF0gSGFyZHdhcmUgbmFtZTogRmlyZWZseSBS
T0MtUkszMzk5LVBDIE1lenphbmluZSBCb2FyZCAoRFQpCj4gWyAgICAwLjAwMDAwMF0gcHN0YXRl
OiA0MDAwMDA4NSAoblpjdiBkYUlmIC1QQU4gLVVBTykKPiBbICAgIDAuMDAwMDAwXSBwYyA6IF9f
cGlfc3RyY21wKzB4MTgvMHgxNTQKPiBbICAgIDAuMDAwMDAwXSBsciA6IF9fY2xrX2xvb2t1cF9z
dWJ0cmVlKzB4MjAvMHg3OAo+IFsgICAgMC4wMDAwMDBdIHNwIDogZmZmZjgwMDAxMGJhM2I0MAo+
IFsgICAgMC4wMDAwMDBdIHgyOTogZmZmZjgwMDAxMGJhM2I0MCB4Mjg6IGZmZmYwMDAwZjM1NmU1
MjgKPiBbICAgIDAuMDAwMDAwXSB4Mjc6IDAwMDAwMDAwMDAwMDAwMDEgeDI2OiAwMDAwMDAwMDAw
MDAwMDAwCj4gWyAgICAwLjAwMDAwMF0geDI1OiAwMDAwMDAwMDAwMDAwMDAwIHgyNDogZmZmZjgw
MDAxMGJlOTUwOAo+IFsgICAgMC4wMDAwMDBdIHgyMzogZmZmZjAwMDBmMzU2ZTUwMCB4MjI6IGZm
ZmYwMDAwZjM1NmQ2MDAKPiBbICAgIDAuMDAwMDAwXSB4MjE6IGZmZmY4MDAwMTBjNjgwMDAgeDIw
OiBmZmZmODAwMDEwOTFkZmY4Cj4gWyAgICAwLjAwMDAwMF0geDE5OiBmZmZmMDAwMGYzNTZkNTAw
IHgxODogMDAwMDAwMDAwMDAwMDAxMAo+IFsgICAgMC4wMDAwMDBdIHgxNzogMDAwMDAwMDAwMDAw
MDAwMCB4MTY6IDAwMDAwMDAwNzA4MTI0NGQKPiBbICAgIDAuMDAwMDAwXSB4MTU6IGZmZmY4MDAw
MTBiYjE5YTggeDE0OiA2Zjc2NWY2YjZjNjM2NDIwCj4gWyAgICAwLjAwMDAwMF0geDEzOiA2YjYz
NmY2YzYzMjA3MjY1IHgxMjogNzQ3MzY5Njc2NTcyMjA2Zgo+IFsgICAgMC4wMDAwMDBdIHgxMTog
MDAwMDAwMDAwMDAwMDAwNSB4MTA6IDAxMDEwMTAxMDEwMTAxMDEKPiBbICAgIDAuMDAwMDAwXSB4
OSA6IDAwMDAwMDAwMDAwMDAwMDAgeDggOiA3ZjdmN2Y3ZjdmN2Y3ZjdmCj4gWyAgICAwLjAwMDAw
MF0geDcgOiAwMDAwMDAwMDAwMDAwMDAwIHg2IDogMDcwZjA3MzQyYzEyMDIxZAo+IFsgICAgMC4w
MDAwMDBdIHg1IDogMWQwMjEyMmMzNDA3MGYwNyB4NCA6IDAwMDAwMDAwMDAwMDAwMDAKPiBbICAg
IDAuMDAwMDAwXSB4MyA6IDhjNmQ4ZDZiZWVjZGVlMDAgeDIgOiAwMDAwMDAwMDAwMDAwMDZkCj4g
WyAgICAwLjAwMDAwMF0geDEgOiBmZmZmODAwMDEwOTFkZmY4IHgwIDogMDAwMDAwMDAwMDAwMDAw
MAo+IFsgICAgMC4wMDAwMDBdIENhbGwgdHJhY2U6Cj4gWyAgICAwLjAwMDAwMF0gIF9fcGlfc3Ry
Y21wKzB4MTgvMHgxNTQKPiBbICAgIDAuMDAwMDAwXSAgX19jbGtfbG9va3VwX3N1YnRyZWUrMHg0
MC8weDc4Cj4gWyAgICAwLjAwMDAwMF0gIF9fY2xrX2xvb2t1cF9zdWJ0cmVlKzB4NDAvMHg3OAo+
IFsgICAgMC4wMDAwMDBdICBjbGtfY29yZV9sb29rdXArMHgzOC8weDk4Cj4gWyAgICAwLjAwMDAw
MF0gIF9fY2xrX3JlZ2lzdGVyKzB4MTIwLzB4Nzk4Cj4gWyAgICAwLjAwMDAwMF0gIGNsa19od19y
ZWdpc3RlcisweDFjLzB4NTgKPiBbICAgIDAuMDAwMDAwXSAgX19jbGtfaHdfcmVnaXN0ZXJfY29t
cG9zaXRlKzB4MWUwLzB4MmMwCj4gWyAgICAwLjAwMDAwMF0gIGNsa19yZWdpc3Rlcl9jb21wb3Np
dGUrMHg0MC8weDU4Cj4gWyAgICAwLjAwMDAwMF0gIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFu
Y2hlcysweDM4OC8weDkwOAo+IFsgICAgMC4wMDAwMDBdICByazMzOTlfY2xrX2luaXQrMHhiMC8w
eDE1MAo+IFsgICAgMC4wMDAwMDBdICBvZl9jbGtfaW5pdCsweDFlOC8weDI4NAo+IFsgICAgMC4w
MDAwMDBdICB0aW1lX2luaXQrMHgxMC8weDQ0Cj4gWyAgICAwLjAwMDAwMF0gIHN0YXJ0X2tlcm5l
bCsweDU1OC8weDZiYwo+IFsgICAgMC4wMDAwMDBdIENvZGU6IGYyNDAwOGZmIDU0MDAwMmUxIGYy
NDAwODA3IDU0MDAwMTQxIChmODQwODQwMikKPiBbICAgIDAuMDAwMDAwXSAtLS1bIGVuZCB0cmFj
ZSA4YWQyZjk0NjQ1YjdkYjk5IF0tLS0KPiBbICAgIDAuMDAwMDAwXSBLZXJuZWwgcGFuaWMgLSBu
b3Qgc3luY2luZzogQXR0ZW1wdGVkIHRvIGtpbGwgdGhlIGlkbGUgdGFzayEKPiBbICAgIDAuMDAw
MDAwXSAtLS1bIGVuZCBLZXJuZWwgcGFuaWMgLSBub3Qgc3luY2luZzogQXR0ZW1wdGVkIHRvIGtp
bGwgdGhlIGlkbGUgdGFzayEgXS0tLQo+Cj4KPgo+Cj4KPgo+Cj4KPgo+Cj4KPiBHcnXDnywKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
