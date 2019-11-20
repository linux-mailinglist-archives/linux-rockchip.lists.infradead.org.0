Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECD2103ECF
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 Nov 2019 16:34:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKv8cXKqlOCcus5JZSjE9/VJj7r6LwkRhqwK+JRAHoU=; b=JxFNARftUPpKbk
	C9dpO430omS5eew31Fs8TKVBe/OBmq/gycJFHS2dhjIn8+Vu8tyO78Q3cjrM60gCaZg7KLWpijHLb
	Qqmx89bjD1ElMp/vAJiHKgB6Rc4Zl5hpLkeYERZJW0GXI9nJENny31hw2A2NWwEIUYHx23telyeOG
	QBqBWQ9Qtk7MGdi8UmnoZzpD3DyMOp5gMR7dGLSmgJTR1ThEP+nRO1onvltxMenXqFYbCuMgbCiqh
	WZO9U1tUKB1CyW5I5Zt2Uw5DpHNJl1WdHsUbO0hMXJqUlD+mGFCoVoh5gjyx3tfmq5M8x2cthASHk
	SW0zcBcjj0vf3qFN4iYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXRzV-0004oS-Bu; Wed, 20 Nov 2019 15:34:01 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXRzG-0004gC-Hg
 for linux-rockchip@lists.infradead.org; Wed, 20 Nov 2019 15:33:52 +0000
Received: by mail-oi1-x234.google.com with SMTP id n16so139340oig.2
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Nov 2019 07:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XIz71A93vT2GZir/cbd6mjWyCS4Rwn+5UeGeUtq83rI=;
 b=XhcSuygsIBwuCOL9xXeVVWfKx6OA4pTVpYUr5oiWXKDaiMqAXeLa0e4xJYBglzpgLi
 /r50b5WVPxR45+xRT0n1oir0gfEkbzcVd2at+obobIM1v+1voNKef59puPe7oDc0pqZw
 I1kaR9TPOL61ysviDLLLtf8BsXgRYZaBPZF0I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XIz71A93vT2GZir/cbd6mjWyCS4Rwn+5UeGeUtq83rI=;
 b=aKkSF1064BLni5NCydmejqSkHadV51AKIe3J2SFezLvlY6hBou0f1Pmd2LzVRKeLnS
 Yygv1UbNcrxRjH8gtq73piugsUs2uVPkV7GBjaONBJWaxZjleYtxyKyEYMZdMwjNQQ76
 bBvUrgaVALi71gTQDRgiGbpxIRu8okpDnEnfCO8xsLiWXg4f3z/9rR7oLjAEqxcujzj9
 aZuj7hNLn5UZ7Ck48gRVTQ6a5y9wzp0EvLGPqDOlQpAJYnkOyQtVNh4rLxrhnxm4X8sd
 O/In3awJvvxhVWBG9zLTO0Bh8kQEH6NumDrdHJPUJTHFdY6UVb0K/nieyLET8YSQWnh5
 7dTA==
X-Gm-Message-State: APjAAAUem/xdkseXhUhglr1zNhcvK9SUcFnnf/AjoyxDFuj63wR83rXB
 WxHBbg9RxPDLL7ExcxmJEwdHpJTrKN7P249746PAsg==
X-Google-Smtp-Source: APXvYqzFZ1Nv/DhX4G1ZPrfrmut25uY1BdnJKjyKvD6eMew7XmgYRuai2w90HTpHiKhhksOu8ivhmtv9cpmYUF09//4=
X-Received: by 2002:aca:320a:: with SMTP id y10mr3250705oiy.152.1574264024897; 
 Wed, 20 Nov 2019 07:33:44 -0800 (PST)
MIME-Version: 1.0
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
 <5644395.EDGZVd1YuU@diego>
 <CAMty3ZA+p2pWokLrwnkv6_q0G8d76AntE5Kar4JN8MN48O9VSw@mail.gmail.com>
 <12496011.EUIoF19S7S@diego>
In-Reply-To: <12496011.EUIoF19S7S@diego>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 20 Nov 2019 21:03:33 +0530
Message-ID: <CAMty3ZCLYQYvOuOzRXjxDmLsFbYBYOQjymsn+pCvctTaQG2Y0g@mail.gmail.com>
Subject: Re: [PATCH 4/5] ARM: dts: rockchip: Add Radxa Carrier board
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_073349_377163_C17483FB 
X-CRM114-Status: GOOD (  23.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:234 listed in]
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

SGkgSGVpa28sCgpPbiBXZWQsIE5vdiAyMCwgMjAxOSBhdCA3OjIzIFBNIEhlaWtvIFN0w7xibmVy
IDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+Cj4gSGkgSmFnYW4sCj4KPiBBbSBNaXR0d29jaCwg
MjAuIE5vdmVtYmVyIDIwMTksIDE0OjQ1OjM1IENFVCBzY2hyaWViIEphZ2FuIFRla2k6Cj4gPiBP
biBXZWQsIE5vdiAyMCwgMjAxOSBhdCA2OjU1IFBNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRl
Y2guZGU+IHdyb3RlOgo+ID4gPiBBbSBNaXR0d29jaCwgMjAuIE5vdmVtYmVyIDIwMTksIDEyOjM5
OjIyIENFVCBzY2hyaWViIEphZ2FuIFRla2k6Cj4gPiA+ID4gQ2FycmllciBib2FyZCBvZnRlbiBy
ZWZlcnJlZCBhcyBiYXNlYm9hcmQuIEZvciBtYWtpbmcKPiA+ID4gPiBjb21wbGV0ZSBTQkMsIHRo
ZSBhc3NvY2lhdGVkIFNPTSB3aWxsIG1vdW50IG9uIHRvcCBvZgo+ID4gPiA+IHRoaXMgY2Fycmll
ciBib2FyZC4KPiA+ID4gPgo+ID4gPiA+IFJhZHhhIGhhcyBhIGNhcnJpZXIgYm9hcmQgd2hpY2gg
c3VwcG9ydHMgb24gYm9hcmQKPiA+ID4gPiBwZXJpcGhlcmFscywgcG9ydHMgbGlrZSBVU0ItMi4w
LCBVU0ItMy4wLCBIRE1JLCBNSVBJIERTSS9DU0ksCj4gPiA+ID4gZURQLCBFdGhlcm5ldCwgUENJ
ZSwgVVNCLUMsIDQwLVBpbiBHUElPIGhlYWRlciBhbmQgZXRjLgo+ID4gPiA+Cj4gPiA+ID4gQ3Vy
cmVudGx5IHRoaXMgY2FycmllciBib2FyZCBjYW4gYmUgdXNlZCB0b2dldGhlciB3aXRoCj4gPiA+
ID4gVk1BUkMgUkszMzk5UG9yIFNPTSBmb3IgbWFraW5nIFJvY2sgUEkgTjEwIFNCQy4KPiA+ID4g
Pgo+ID4gPiA+IFNvIGFkZCB0aGlzIGNhcnJpZXIgYm9hcmQgZHRzaSBhcyBhIHNlcGFyYXRlIGZp
bGUgaW4KPiA+ID4gPiBBUk0gZGlyZWN0b3J5LCBzby10aGF0IHRoZSBzYW1lIGNhbiByZXVzZSBp
dCBpbiBib3RoCj4gPiA+ID4gYXJtMzIgYW5kIGFybTY0IHZhcmlhbnRzIG9mIFJvY2tjaGlwIFNP
TXMuCj4gPiA+Cj4gPiA+IERvIHlvdSByZWFsbHkgdGhpbmsgc29tZW9uZSB3aWxsIGNyZWF0ZSBh
biBhcm0zMiBzb2MgdXNpbmcgdGhhdAo+ID4gPiBjYXJyaWVyIGJvYXJkPwo+ID4KPiA+IFllcywg
d2UgaGF2ZSBSb2NrIFBpIE44IHdoaWNoIGlzIHVzaW5nIHNhbWUgY2FycmllciBib2FyZCBkZXNp
Z24gd2l0aAo+ID4gKCsgZXh0ZXJuYWwgY29kZWMpIG9uIHRvcCBvZiBSSzMyODggU09NLiBJIGRp
ZG4ndCBtZW50aW9uZWQgb24gdGhlCj4gPiBjb21taXQgbWVzc2FnZSBzaW5jZSByYWR4YSBkb2Vz
bid0IG9mZmljaWFsbHkgYW5ub3VuY2VkIG9uIHRoZQo+ID4gd2Vic2l0ZS4KPiA+Cj4gPiA+Cj4g
PiA+IFNpbWlsYXJseSBzbyBmYXIgSSBkb24ndCB0aGluayB3ZSBoYXZlbid0IGV2ZW4gc2VlbiBh
IGxvdCBvZiByZXVzZQo+ID4gPiBvZiBleGlzdGluZyBjYXJyaWVyIGJvYXJkcyBhdCBhbGwsIG90
aGVyIHRoYW4gdGhlaXIgaW5pdGlhbCBjb21iaW5hdGlvbi4KPiA+ID4KPiA+ID4gU28gbWF5YmUg
anVzdCBoYXZpbmcgdGhlIGNvbnRlbnQgb2YgeW91cgo+ID4gPiAgICAgICAgIHJvY2tjaGlwLXJh
ZHhhLWNhcnJpZXJib2FyZC5kdHNpCj4gPiA+IGluCj4gPiA+ICAgICAgICAgcm9ja2NoaXAvcmsz
Mzk5cHJvLXJvY2stcGktbjEwLmR0cwo+ID4gPiBmcm9tIHBhdGNoIDUgbWlnaHQgYmUgYSBiZXR0
ZXIgc3RhcnQgLSBhdCBsZWFzdCB1bnRpbCB0aGVyZSBpcyBhbnkKPiA+ID4gZnVydGhlciB1c2Fn
ZSAtIGlmIGF0IGFsbD8KPiA+Cj4gPiBCdXQsIHRoaXMgcGFydGljdWxhciBkZXNpZ24gaGFzIHBy
b3BlciB1c2UgY2FzZS4KPiA+IDEuIHJrMzM5OXBybyBTT00gKyBjYXJyaWVyIGJvYXJkIChSb2Nr
IFBpIE4xMCkKPiA+IDIuIHJrMzI4OCBTT00gKyBjYXJyaWVyIGJvYXJkIChSb2NrIFBpIE44KQo+
ID4KPiA+ID4KPiA+ID4gQWxzbyByb2NrY2hpcC1yYWR4YS1jYXJyaWVyYm9hcmQgbWlnaHQgZXZl
biBiZSBvdmVybHkgZ2VuZXJpYwo+ID4gPiBhcyB0aGVyZSBtYXkgYmUgbXVsdGlwbGUgY2Fycmll
cmJvYXJkcyBmcm9tIFJhZHhhIGxhdGVyIG9uLgo+ID4KPiA+IEknbSBzbGlnaHRseSBkaXNhZ3Jl
ZSBvZiBoYXZpbmcgb3ZlcmxheSBoZXJlLCBzaW5jZSB0aGVzZSBhcmUgZml4ZWQKPiA+IGRlc2ln
biBjb21iaW5hdGlvbnMuIHdoZXJlIFNPTSB3aXRoIHJlc3BlY3RpdmUgY2FycmllciBib2FyZCBp
cwo+ID4gbWFuZGF0b3J5IHRvIG1ha2UgZmluYWwgYm9hcmQuIFVuZGVyc3RhbmQgdGhhdCB3ZSBj
YW4gaGF2ZSBhCj4gPiBtYWludGVuYW5jZSBvdmVyLWFoZWFkIGlmIHdlIGhhdmUgbXVsdGlwbGUg
Y2FycmllciBib2FyZHMsIGJ1dCByaWdodAo+ID4gbm93IHJhZHhhIGhhcyBvbmx5IG9uZSBjYXJy
aWVyIGJvYXJkIHdpdGggMiBzZXRzIG9mIFNPTSdzIGNvbWJpbmF0aW9ucwo+ID4gdGhhdCBpbmRl
ZWQgZml0IGxpa2UgYSBkZXYgYm9hcmQsIHNvIHRoZXJlIGlzIHVudXNlZCBjYXJyaWVyIGJvYXJk
Lgo+Cj4gQWxsIGlzIGdvb2QgLi4uIHdpdGggdGhhdCBpbmZvcm1hdGlvbiBmcm9tIGFib3ZlIChy
azMyODgpIHRoaXMgZGVmaW5pdGx5Cj4gbWFrZXMgbW9yZSBzZW5zZSA6LSkKPgo+IFRoZSBuYW1p
bmcgb2YgdGhlIGZpbGUgaXMgc3RpbGwgYSB0aW55IHN0cnVnZ2xlIHRob3VnaC4gRG9lcyB0aGlz
IGJvYXJkCj4gbWF5YmUgaGF2ZSBzb21lIGFjdHVhbCBwcm9kdWN0IG5hbWUgb3IgaXMgaXQgcmVh
bGx5IGp1c3QgY2FsbGVkCj4gImNhcnJpZXJib2FyZCI/IDotKQoKVHJ1ZSwgSSBmZWx0IHRoZSBz
YW1lLiBKdXN0IG5vdyBUb20gaGFzIG5hbWVkIHRoaXMgYXMgJ0RhbGFuZyBDYXJyaWVyCmJvYXJk
JyBzbyB3ZSBjYW4gaGF2ZSByb2NrY2hpcC1yYWR4YS1kYWxhbmcuZHRzaSBvcgpyb2NrY2hpcC1y
YWR4YS1kYWxhbmctY2Fycmllci5kdHNpIGFzIGZpbGUgbmFtZXMuIG9yIGxldCBtZSBrbm93IGlm
CnlvdSBoYXZlIGFueSBzdWdnZXN0aW9ucyBvbiB0aGUgZmlsZSBuYW1lPwoKSmFnYW4uCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
