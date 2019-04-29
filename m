Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A9DE9AE
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Apr 2019 20:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DAjNugYSJfzJr1Ob+sjNCf//t4sowGm+cAm4Ku1U4/Y=; b=i2jHVYurAw7L0Z
	2ReywkP5bbDG3qiKtZfGhMfSH+bfPxEABq0xc0dUUfIfEg+gQLe4S9EH9V5RoMVTSfDOZujVCP6n8
	0cVXkd8vumiX+CK826QJPEE4ctfLCkUKktcrZpH0VuSfKjN0t0bQAnf5Y45NcS9nn8eW39G/osN3O
	cVYJIoI2+wHImlY4RABFVIFfO/n1ofQDaSUq1vTGe17nq3yrVSBYNXFHIC65tgSBd6HXispPXliS4
	9pybrA+BM1RAqdtjjvpgaCP35PWZanFkiPfXjZJRNILOPURxmIUx4jjJ4l8H+1nIPzjmCMt0zpVOq
	MUT8IVT7/GHkwpg7z+0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLAdv-0007jA-29; Mon, 29 Apr 2019 18:04:43 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLAdr-0007ij-Fz
 for linux-rockchip@lists.infradead.org; Mon, 29 Apr 2019 18:04:41 +0000
Received: by mail-vs1-xe44.google.com with SMTP id g127so6446153vsd.6
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 11:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+9QVRcGn/MFPa3DTAgauHJb15LdY1O4WQocTfoHxH9I=;
 b=O5OWxqT0Mf66qPTnLp0thOnby1i3TVz2gYj3yoMCnRdjSPGncE7+uXsKJCeBLbegTM
 MszISVuqi5lCv5Pzt8bMCCQTsXrt0Hs768nn2/DI6/aTtBPmsemDBB3zaN1ex7dixTJp
 aij+cyi/8aBTQEnC+8Wp77GODHPiaF9gd7hyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+9QVRcGn/MFPa3DTAgauHJb15LdY1O4WQocTfoHxH9I=;
 b=XtJ0jEdiiLokgZmjVyOA71wip3bZF4K5lXOi+/835x4YPNl/42bWTPGt6PPWmhUCly
 9NOJVY1BlGKX0X3QXNtk8d63Fnslptjx1A4G6PsLCMuOu8nFUKupzWCw8/SIQgTzxIpx
 V2/ESnyQfxo2NOn9RRyzz4zGq0R+f1LmVFNJfVpIjc336nCeX5S2Xn6HVYeR30Q41FQJ
 YAYzlAYTdEFKVUqBUBIwp9iUcGFebjxXWGW0BrreKvD/VNVz1DD3P9Dc9YkgJFj6Ncsy
 tTfqoj7SNXLt6Xs75xFj/Ph9Da90e+/PK/XMEu/a5rws4iPt6dNakSMvaT6vnKyQtVp0
 toKw==
X-Gm-Message-State: APjAAAVUp+4Qvl6NKlTNqqFYZyzTFft3uX5Vw6NHH9YC5mSk6vQFqUAb
 0qH5Py9W3cNCO9p2oMtVNNw4EGuNOWI=
X-Google-Smtp-Source: APXvYqygUgdEFE4wUgFqKD+vIIHhYF14p5W9SMmG230vvMe+qixDtYHNUi9rIRso6cG80OCes9GqFg==
X-Received: by 2002:a67:c018:: with SMTP id v24mr829411vsi.7.1556561077423;
 Mon, 29 Apr 2019 11:04:37 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com.
 [209.85.217.51])
 by smtp.gmail.com with ESMTPSA id b197sm34859642vkd.9.2019.04.29.11.04.32
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 11:04:32 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id o10so6410948vsp.12
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 11:04:32 -0700 (PDT)
X-Received: by 2002:a67:bc01:: with SMTP id t1mr33993904vsn.149.1556561072079; 
 Mon, 29 Apr 2019 11:04:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190312214605.10223-1-u.kleine-koenig@pengutronix.de>
 <20190312214605.10223-2-u.kleine-koenig@pengutronix.de>
 <1707507.TOMHpQGrZ7@phil>
 <CAD=FV=WZHouhGcxOgNG3006XajJQaAp0uq9WjeKRikQx1ru4TA@mail.gmail.com>
 <20190408143914.uucb5dwafq3cnsmk@pengutronix.de>
 <CA+ASDXO=szekU97iTDK9vqWjT+JtAKeCNTyoY=8aSi5d+v4mkA@mail.gmail.com>
 <20190429065613.n52uwgys5eugmssd@pengutronix.de>
In-Reply-To: <20190429065613.n52uwgys5eugmssd@pengutronix.de>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 29 Apr 2019 11:04:20 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U71u39ZHkBBfAXVAP=_hY-bAw3L7JdhC=36jkUVxPOmQ@mail.gmail.com>
Message-ID: <CAD=FV=U71u39ZHkBBfAXVAP=_hY-bAw3L7JdhC=36jkUVxPOmQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] pwm: rockchip: Don't update the state for the
 caller of pwm_apply_state()
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_110439_558767_D96047CE 
X-CRM114-Status: GOOD (  31.20  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: linux-pwm <linux-pwm@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Brian Norris <briannorris@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Boris Brezillon <boris.brezillon@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiBTdW4sIEFwciAyOCwgMjAxOSBhdCAxMTo1NiBQTSBVd2UgS2xlaW5lLUvDtm5pZwo8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IE9uIFRodSwgQXByIDE4
LCAyMDE5IGF0IDA1OjI3OjA1UE0gLTA3MDAsIEJyaWFuIE5vcnJpcyB3cm90ZToKPiA+IEhpLAo+
ID4KPiA+IEknbSBub3Qgc3VyZSBpZiBJJ20gbWlzcmVhZGluZyB5b3UsIGJ1dCBJIHRob3VnaHQg
SSdkIGFkZCBoZXJlIGJlZm9yZQo+ID4gdGhpcyBleHBpcmVzIG91dCBvZiBteSBpbmJveDoKPiA+
Cj4gPiBPbiBNb24sIEFwciA4LCAyMDE5IGF0IDc6MzkgQU0gVXdlIEtsZWluZS1Lw7ZuaWcKPiA+
IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+ID4gPiBNeSBpbnRlbnRp
b24gaGVyZSBpcyBtb3JlIHRvIG1ha2UgYWxsIGRyaXZlcnMgYmVoYXZlIHRoZSBzYW1lIHdheSBh
bmQKPiA+ID4gYmVjYXVzZSBvbmx5IHR3byBkcml2ZXJzIHVwZGF0ZWQgdGhlIHB3bV9zdGF0ZSB0
aGlzIHdhcyB0aGUgdmFyaWFudCBJCj4gPiA+IHJlbW92ZWQuCj4gPgo+ID4gVG8gYmUgY2xlYXIs
IHRoaXMgcGF0Y2ggb24gaXRzIG93biBpcyBwcm9iYWJseSBicmVha2luZyB0aGluZ3MuIEp1c3QK
PiA+IGJlY2F1c2UgdGhlIG90aGVyIGRyaXZlcnMgZG9uJ3QgaW1wbGVtZW50IHRoZSBkb2N1bWVu
dGVkIGJlaGF2aW9yCj4gPiBkb2Vzbid0IG1lYW4geW91IHNob3VsZCBicmVhayB0aGlzIGRyaXZl
ci4gTWF5YmUgdGhlIG90aGVycyBqdXN0Cj4gPiBhcmVuJ3QgdXNlZCBpbiBwcmVjaXNlIGVub3Vn
aCBzY2VuYXJpb3Mgd2hlcmUgdGhpcyBtYXR0ZXJzLgo+ID4KPiA+ID4gV2hlbiB5b3Ugc2F5IHRo
YXQgdGhlIGNhbGxlciBtaWdodCBhY3R1YWxseSBjYXJlIGFib3V0IHRoZSBleGFjdAo+ID4gPiBw
YXJhbWV0ZXJzIEkgZnVsbHkgYWdyZWUuIEluIHRoaXMgY2FzZSBob3dldmVyIHRoZSBjb25zdW1l
ciBzaG91bGQgYmUKPiA+ID4gYWJsZSB0byBrbm93IHRoZSByZXN1bHQgYmVmb3JlIGFjdHVhbGx5
IGFwcGx5aW5nIGl0LiBTbyBpZiB5b3UgZG8KPiA+ID4KPiA+ID4gICAgICAgICBwd21fYXBwbHlf
c3RhdGUocHdtLCB7IC5wZXJpb2QgPSAxNywgLmR1dHlfY3ljbGUgPSAxMiwgLi4ufSkKPiA+ID4K
PiA+ID4gYW5kIHRoaXMgcmVzdWx0cyBpbiAucGVyaW9kID0gMTAwIGFuZCAuZHV0eV9jeWNsZSA9
IDAgdGhlbiBwcm9iYWJseSB0aGUKPiA+ID4gYmFkIHRoaW5ncyB5b3Ugd2FudCB0byBrbm93IGFi
b3V0IGFscmVhZHkgaGFwcGVuZC4gU28gbXkgaWRlYSBpcyBhIG5ldwo+ID4gPiBmdW5jdGlvbiBw
d21fcm91bmRfc3RhdGUoKSB0aGF0IGRvZXMgdGhlIGFkYXB0aW9ucyB0byBwd21fc3RhdGUgd2l0
aG91dAo+ID4gPiBhcHBseWluZyBpdCB0byB0aGUgaGFyZHdhcmUuIEFmdGVyIHRoYXQgcHdtX2Fw
cGx5X3N0YXRlIGNvdWxkIGRvIHRoZQo+ID4gPiBmb2xsb3dpbmc6Cj4gPiA+Cj4gPiA+ICAgICAg
ICAgcnN0YXRlID0gcHdtX3JvdW5kX3N0YXRlKHB3bSwgc3RhdGUpCj4gPiA+ICAgICAgICAgcHdt
LmFwcGx5KHB3bSwgc3RhdGUpCj4gPiA+ICAgICAgICAgZ3N0YXRlID0gcHdtX2dldF9zdGF0ZShw
d20pCj4gPiA+Cj4gPiA+ICAgICAgICAgaWYgcnN0YXRlICE9IGdzdGF0ZToKPiA+ID4gICAgICAg
ICAgICAgICAgIHdhcm4gYWJvdXQgcHJvYmxlbXMKPiA+Cj4gPiBGb3Igb3VyIGNhc2UgKHdlJ3Jl
IHVzaW5nIHRoaXMgd2l0aCBwd20tcmVndWxhdG9yKSwgSSBkb24ndCByZWNhbGwgWypdCj4gPiB3
ZSBuZWVkIHRvIGJlIDEwMCUgcHJlY2lzZSBhYm91dCB0aGUgcGVyaW9kLCBidXQgd2UgZG8gbmVl
ZCB0byBiZSBhcwo+ID4gcHJlY2lzZSBhcyBwb3NzaWJsZSB3aXRoIHRoZSBkdXR5OnBlcmlvZCBy
YXRpbyAtLSBzbyBvbmNlIHdlIGdldCB0aGUKPiA+ICJmZWVkYmFjayIgZnJvbSB0aGUgdW5kZXJs
eWluZyBQV00gZHJpdmVyIHdoYXQgdGhlIHJlYWwgcGVyaW9kIHdpbGwKPiA+IGJlLCB3ZSBhZGp1
c3QgdGhlIGR1dHkgYXBwcm9wcmlhdGVseS4KPgo+IEkgYWRtaXQgdGhhdCBJIGRpZG4ndCB1bmRl
cnN0b29kIHRoZSB3aG9sZSBzaXR1YXRpb24gYW5kIChzb21lKSB0aGluZ3MKPiBhcmUgd29yc2Ug
d2l0aCBteSBwYXRjaGVzIGFwcGxpZWQuIEkgc3RpbGwgdGhpbmsgdGhhdCBjaGFuZ2luZyB0aGUK
PiBjYWxsZXIncyBzdGF0ZSB2YXJpYWJsZSBpcyBiYWQgZGVzaWduLCBidXQgb2YgY291cnNlIHB3
bV9nZXRfc3RhdGUKPiBzaG91bGQgcmV0dXJuIHRoZSBjdXJyZW50bHkgaW1wbGVtZW50ZWQgY29u
ZmlndXJhdGlvbi4KClJlZ2FyZGxlc3Mgb2YgdGhlIHByb3MgYW5kIGNvbnMgb2YgdGhlIGN1cnJl
bnQgc2l0dWF0aW9uLCBob3BlZnVsbHkKd2UncmUgaW4gYWdyZWVtZW50IHRoYXQgd2Ugc2hvdWxk
bid0IGJyZWFrIGV4aXN0aW5nIHVzZXJzPyAgSW4gZ2VuZXJhbApJJ2xsIHByb2JhYmx5IHN0YXkg
b3V0IG9mIHRoZSBkZWJhdGUgYXMgbG9uZyBhcyB3ZSBlbmQgc29tZXdoZXJlIHRoYXQKcHdtX3Jl
Z3VsYXRvciBpcyBhYmxlIHRvIHNvbWVob3cga25vdyB0aGUgYWN0dWFsIHN0YXRlIHRoYXQgaXQK
cHJvZ3JhbW1lZCBpbnRvIHRoZSBoYXJkd2FyZS4KCitCb3JpcyB0b28gaW4gY2FzZSBoZSBoYXMg
YW55IGNvbW1lbnRzLgoKCj4gPiBTbyBJIGRvbid0IHNlZSB0aGF0ICJ3YXJuaW5nIiB3b3VsZCBy
ZWFsbHkgaGVscCBmb3IgdGhpcyBwYXJ0aWN1bGFyIGNhc2UuCj4gPgo+ID4gPiBCdXQgYmVmb3Jl
IGRvaW5nIHRoYXQgSSB0aGluayBpdCB3b3VsZCBiZSBzZW5zaWJsZSB0byBhbHNvIGZpeCB0aGUg
cnVsZXMKPiA+ID4gaG93IHRoZSByb3VuZF9zdGF0ZSBjYWxsYmFjayBpcyBzdXBwb3NlZCB0byBy
b3VuZC4KPiA+Cj4gPiBJJ20gbm90IHF1aXRlIHN1cmUgSSBncm9rIGV4YWN0bHkgd2hhdCB5b3Un
cmUgcGxhbm5pbmcsIGJ1dCBJIHdvdWxkCj4gPiBtdWNoIGFwcHJlY2lhdGUgaWYgeW91IGRpZG4n
dCBicmVhayB0aGluZ3Mgb24gdGhlIHdheSB0b3dhcmQgZml4aW5nCj4gPiB0aGVtIDspCj4KPiBU
aGVyZSBhcmUgY3VycmVudGx5IG5vIHJ1bGVzIGhvdyB0aGUgZHJpdmVyIHNob3VsZCBiZWhhdmUg
Zm9yIGV4YW1wbGUgaWYKPiB0aGUgY29uc3VtZXIgcmVxdWVzdHMKPgo+ICAgICAgICAgLmR1dHlf
Y3ljbGUgPSAxMCwgLnBlcmlvZCA9IDUwCj4KPiBhbmQgdGhlIGhhcmR3YXJlIGNhbiBvbmx5IGlt
cGxlbWVudCBtdWx0aXBsZXMgb2YgMyBmb3IgYm90aCB2YWx1ZXMuIFRoZQo+IG9idmlvdXMgY2Fu
ZGlkYXRlcyBhcmU6Cj4KPiAgLSAuZHV0eV9jeWNsZSA9IDksIC5wZXJpb2QgPSA1MSAocm91bmQg
bmVhcmVzdCBmb3IgYm90aCkKPiAgLSAuZHV0eV9jeWNsZSA9IDEyLCAucGVyaW9kID0gNTEgKHJv
dW5kIHVwKQo+ICAtIC5kdXR5X2N5Y2xlID0gOSwgLnBlcmlvZCA9IDQ4IChyb3VuZCBkb3duKQo+
ICAtIC5kdXR5X2N5Y2xlID0gOSwgLnBlcmlvZCA9IDQ1IChyb3VuZCBkdXR5X2N5Y2xlIGFuZCBr
ZWVwIHByb3BvcnRpb24pCj4gIC0gcmV0dXJuIGVycm9yICh3aGljaCBjb2RlPykKPgo+IEFuZCB0
aGVyZSBhcmUgc29tZSBvdGhlciB2YXJpYW50cyAoZS5nLiByb3VuZCBkdXR5X2N5Y2xlIHRvIG5l
YXJlc3QgYW5kCj4gcGVyaW9kIGluIHRoZSBzYW1lIGRpcmVjdGlvbikgdGhhdCBtaWdodCBiZSBz
ZW5zaWJsZS4KCkkgd2lsbCBub3RlIHRoYXQgSSBoYWQgdG8gZGVhbCB3aXRoIHNvbWUgb2YgdGhp
cyByZWNlbnRseSB3aGVuIEkKd2FudGVkIHRvIHRyeSB0byByZXBsaWNhdGUgdGhlIGV4YWN0IHZv
bHRhZ2UgbGV2ZWxzIGZvciAidmRkX2xvZyIgZnJvbQpkb3duc3RyZWFtIGluIHJrMzI4OC12ZXly
b24gZGV2aWNlcy4gIFNlZSBjb21taXQgODY0YzJmZWU0ZWU5ICgiQVJNOgpkdHM6IHJvY2tjaGlw
OiBBZGQgdmRkX2xvZ2ljIHRvIHJrMzI4OC12ZXlyb24iKSBpbiBIZWlrbydzIHRyZWUgKG9yCmp1
c3QgbG9vayBpbiBsaW51eC1uZXh0KQoKCj4gQWxzbyBpdCBzaG91bGQgYmUgcG9zc2libGUgdG8g
a25vdyB0aGUgcmVzdWx0IGJlZm9yZSBhY3R1YWxseQo+IGNvbmZpZ3VyaW5nIHRoZSBoYXJkd2Fy
ZS4gT3RoZXJ3aXNlIHRoaW5ncyBtaWdodCBhbHJlYWR5IGdvIHdyb25nCj4gYmVjYXVzZSB0aGUg
ZHJpdmVyIGltcGxlbWVudHMgYSBzZXR0aW5nIHRoYXQgaXMgdG9vIGZhciBmcm9tIHRoZQo+IHJl
cXVlc3RlZCBjb25maWd1cmF0aW9uLgoKTGF0ZXIgaW4gdGhpcyB0aHJlYWQgVGhpZXJyeSBkaWRu
J3QgbGlrZSB0aGUgInJvdW5kIHJhdGUiIGlkZWEgZHVlIHRvCnJhY2VzLiAgT25lIHdheSB0byBz
b2x2ZSB0aGF0IGNvdWxkIGJlIHRvIGluZGljYXRlIHRvIHRoZSBQV00KZnJhbWV3b3JrIHdoaWNo
IGRpcmVjdGlvbiB5b3UnZCBsaWtlIGl0IHRvIGVycm9yIGluOiBhIGhpZ2hlciBkdXR5CmN5Y2xl
IG9yIGEgbG93ZXIgb25lLgoKCi1Eb3VnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
