Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 418A2103C83
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 Nov 2019 14:46:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IgLLua4PZ0NRyCsR4+oIlsPWtWbt3S0pUXpvHpZUyig=; b=dfG3JFpfeyjsz6
	zY+PL6oICRcpLFbIV6SvySkbrUVYnhEYsTu1lDCceP5Hp4BoIcv3AXDMigE+uEoEgDNy0/LwXY6IW
	53wecxp2eehJPoL4hCR7EYpsL3a9LQONNVR5TfoZfWWqqMF45Xaa1Tu7KWfbWQR5box5COOnHeqBS
	4Zl8Y2vImVgNKuMoF2Nkkanz7hM6fkhWm2H3/PvFrdP4RKX8xGXmAVAaehq0oSEqoBo7iFdlMP4Y7
	BhVHztMLGTlUSda37zpb5i4Co7KVhcA0/pjlxjGzqHToZLR3kBCb+7/po6ldEaL6wXcM6FhdJoJGu
	+pkvrdKQGOjKrgSj84SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQJ1-0000Zl-5q; Wed, 20 Nov 2019 13:46:03 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQIn-0000Pz-Lj
 for linux-rockchip@lists.infradead.org; Wed, 20 Nov 2019 13:45:51 +0000
Received: by mail-il1-x142.google.com with SMTP id s5so3397634iln.4
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Nov 2019 05:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CgtC9U1pFRMoXuEqIqpJlmsw3VQlHrD4MMxLF0Vx8xg=;
 b=f9v0k+tmuEKwj5AFNUmMvv40wkogZJAKmCuPbUcRSyVSro9EOqDDGQUbGbNnFxuafy
 M8+nR8SfAxXQSWe5lkbuIRV42ZNm0BUahg5Pa7RSMFMqj4aT1Prn3NpFgDUDOxzOIBz2
 S4kZCLvmzc+qOhteX9wJjgzlrGNGsYocmCcus=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CgtC9U1pFRMoXuEqIqpJlmsw3VQlHrD4MMxLF0Vx8xg=;
 b=qEWOywJRZuoUUwfvn11h3vSBy8qVUOSNby3Y5Xa/iIFU/Atbp2FBA+YNFvYzPwhPET
 FgiVLzGuiciZMIRYUillLDG/5zyFK99O0l/YOyFvHWLVJfZvscyO4eK8xoRgVlPAoMOI
 HQ54mZ6N8BNkqL1xzz/xAUaaLnHlsq1edh6BsPHuc8JuxUoPDaO7SJIn5m/MKBUIf9J5
 CDH4qWfJ47jeF+jo4D6aml73iJJZee48u5k0CnulYYPDXUUY/owjTzJaWIzuIFouscrs
 LHxb6KCw8aFOlW7wyWMnzoRmpEslsvRVV94Ad5I8aijF5CKI5WRG3AIxCvra9qpWcOtd
 AAMw==
X-Gm-Message-State: APjAAAXUNwq9A99IVgX2+bIMiNFc4vkkGoTztt0OZf9WNrtZK5u5+qAw
 D55YyD8fEK+Lvh5u+UuvpdVd3RYJpyQPU7c3mLJQjw==
X-Google-Smtp-Source: APXvYqw3MjUmdfjEYcoiBovAQmlP74ZDtmiuO4AZQCwKvD8ckXU62L4h/ai9eP9F51LEWbRnEd7dIEmZ63LdAHGL5Ac=
X-Received: by 2002:a92:5d8f:: with SMTP id e15mr3572412ilg.173.1574257548126; 
 Wed, 20 Nov 2019 05:45:48 -0800 (PST)
MIME-Version: 1.0
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
 <20191120113923.11685-5-jagan@amarulasolutions.com> <5644395.EDGZVd1YuU@diego>
In-Reply-To: <5644395.EDGZVd1YuU@diego>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 20 Nov 2019 19:15:35 +0530
Message-ID: <CAMty3ZA+p2pWokLrwnkv6_q0G8d76AntE5Kar4JN8MN48O9VSw@mail.gmail.com>
Subject: Re: [PATCH 4/5] ARM: dts: rockchip: Add Radxa Carrier board
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_054550_500791_2455B8D0 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Tom Cubie <tom@radxa.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpPbiBXZWQsIE5vdiAyMCwgMjAxOSBhdCA2OjU1IFBNIEhlaWtvIFN0w7xibmVy
IDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+Cj4gSGkgSmFnYW4sCj4KPiBBbSBNaXR0d29jaCwg
MjAuIE5vdmVtYmVyIDIwMTksIDEyOjM5OjIyIENFVCBzY2hyaWViIEphZ2FuIFRla2k6Cj4gPiBD
YXJyaWVyIGJvYXJkIG9mdGVuIHJlZmVycmVkIGFzIGJhc2Vib2FyZC4gRm9yIG1ha2luZwo+ID4g
Y29tcGxldGUgU0JDLCB0aGUgYXNzb2NpYXRlZCBTT00gd2lsbCBtb3VudCBvbiB0b3Agb2YKPiA+
IHRoaXMgY2FycmllciBib2FyZC4KPiA+Cj4gPiBSYWR4YSBoYXMgYSBjYXJyaWVyIGJvYXJkIHdo
aWNoIHN1cHBvcnRzIG9uIGJvYXJkCj4gPiBwZXJpcGhlcmFscywgcG9ydHMgbGlrZSBVU0ItMi4w
LCBVU0ItMy4wLCBIRE1JLCBNSVBJIERTSS9DU0ksCj4gPiBlRFAsIEV0aGVybmV0LCBQQ0llLCBV
U0ItQywgNDAtUGluIEdQSU8gaGVhZGVyIGFuZCBldGMuCj4gPgo+ID4gQ3VycmVudGx5IHRoaXMg
Y2FycmllciBib2FyZCBjYW4gYmUgdXNlZCB0b2dldGhlciB3aXRoCj4gPiBWTUFSQyBSSzMzOTlQ
b3IgU09NIGZvciBtYWtpbmcgUm9jayBQSSBOMTAgU0JDLgo+ID4KPiA+IFNvIGFkZCB0aGlzIGNh
cnJpZXIgYm9hcmQgZHRzaSBhcyBhIHNlcGFyYXRlIGZpbGUgaW4KPiA+IEFSTSBkaXJlY3Rvcnks
IHNvLXRoYXQgdGhlIHNhbWUgY2FuIHJldXNlIGl0IGluIGJvdGgKPiA+IGFybTMyIGFuZCBhcm02
NCB2YXJpYW50cyBvZiBSb2NrY2hpcCBTT01zLgo+Cj4gRG8geW91IHJlYWxseSB0aGluayBzb21l
b25lIHdpbGwgY3JlYXRlIGFuIGFybTMyIHNvYyB1c2luZyB0aGF0Cj4gY2FycmllciBib2FyZD8K
Clllcywgd2UgaGF2ZSBSb2NrIFBpIE44IHdoaWNoIGlzIHVzaW5nIHNhbWUgY2FycmllciBib2Fy
ZCBkZXNpZ24gd2l0aAooKyBleHRlcm5hbCBjb2RlYykgb24gdG9wIG9mIFJLMzI4OCBTT00uIEkg
ZGlkbid0IG1lbnRpb25lZCBvbiB0aGUKY29tbWl0IG1lc3NhZ2Ugc2luY2UgcmFkeGEgZG9lc24n
dCBvZmZpY2lhbGx5IGFubm91bmNlZCBvbiB0aGUKd2Vic2l0ZS4KCj4KPiBTaW1pbGFybHkgc28g
ZmFyIEkgZG9uJ3QgdGhpbmsgd2UgaGF2ZW4ndCBldmVuIHNlZW4gYSBsb3Qgb2YgcmV1c2UKPiBv
ZiBleGlzdGluZyBjYXJyaWVyIGJvYXJkcyBhdCBhbGwsIG90aGVyIHRoYW4gdGhlaXIgaW5pdGlh
bCBjb21iaW5hdGlvbi4KPgo+IFNvIG1heWJlIGp1c3QgaGF2aW5nIHRoZSBjb250ZW50IG9mIHlv
dXIKPiAgICAgICAgIHJvY2tjaGlwLXJhZHhhLWNhcnJpZXJib2FyZC5kdHNpCj4gaW4KPiAgICAg
ICAgIHJvY2tjaGlwL3JrMzM5OXByby1yb2NrLXBpLW4xMC5kdHMKPiBmcm9tIHBhdGNoIDUgbWln
aHQgYmUgYSBiZXR0ZXIgc3RhcnQgLSBhdCBsZWFzdCB1bnRpbCB0aGVyZSBpcyBhbnkKPiBmdXJ0
aGVyIHVzYWdlIC0gaWYgYXQgYWxsPwoKQnV0LCB0aGlzIHBhcnRpY3VsYXIgZGVzaWduIGhhcyBw
cm9wZXIgdXNlIGNhc2UuCjEuIHJrMzM5OXBybyBTT00gKyBjYXJyaWVyIGJvYXJkIChSb2NrIFBp
IE4xMCkKMi4gcmszMjg4IFNPTSArIGNhcnJpZXIgYm9hcmQgKFJvY2sgUGkgTjgpCgo+Cj4gQWxz
byByb2NrY2hpcC1yYWR4YS1jYXJyaWVyYm9hcmQgbWlnaHQgZXZlbiBiZSBvdmVybHkgZ2VuZXJp
Ywo+IGFzIHRoZXJlIG1heSBiZSBtdWx0aXBsZSBjYXJyaWVyYm9hcmRzIGZyb20gUmFkeGEgbGF0
ZXIgb24uCgpJJ20gc2xpZ2h0bHkgZGlzYWdyZWUgb2YgaGF2aW5nIG92ZXJsYXkgaGVyZSwgc2lu
Y2UgdGhlc2UgYXJlIGZpeGVkCmRlc2lnbiBjb21iaW5hdGlvbnMuIHdoZXJlIFNPTSB3aXRoIHJl
c3BlY3RpdmUgY2FycmllciBib2FyZCBpcwptYW5kYXRvcnkgdG8gbWFrZSBmaW5hbCBib2FyZC4g
VW5kZXJzdGFuZCB0aGF0IHdlIGNhbiBoYXZlIGEKbWFpbnRlbmFuY2Ugb3Zlci1haGVhZCBpZiB3
ZSBoYXZlIG11bHRpcGxlIGNhcnJpZXIgYm9hcmRzLCBidXQgcmlnaHQKbm93IHJhZHhhIGhhcyBv
bmx5IG9uZSBjYXJyaWVyIGJvYXJkIHdpdGggMiBzZXRzIG9mIFNPTSdzIGNvbWJpbmF0aW9ucwp0
aGF0IGluZGVlZCBmaXQgbGlrZSBhIGRldiBib2FyZCwgc28gdGhlcmUgaXMgdW51c2VkIGNhcnJp
ZXIgYm9hcmQuCgpKYWdhbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
