Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3A4113094
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Dec 2019 18:15:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Tnw/gWfyWEMaTdeO7Ca7+gJsJGXFDZAODMWo/YrVyc=; b=CUXuzlmJVaCuot
	HBqLhgTU6prAKo0aaNS+XwHRLQdNJ2d19rCHpmQyL6oSjQmdjpSq45gNZzwMQ2rCZ6+N0kQzDxEDT
	m1itXcJqiKwweFlWQa2Vq68N9rJ/i6LvqKPDANxSevWpwnFMDVoe9aLDm+J8Mg7WUUvkulJT+j2Ff
	fSvgPs7YXkAi2yy3De7qiY0RC/AMeLQNPsNUalwNUvJuhOlR9nu98TcdoBfRkzEn5FBDInPuS89vd
	y66Xjzz21g2hVXuFITjIA7+JuqtIQ9unNKrXnDZp4fvKo6SfbHSNIb23ucWZN4PQp842vJvADxAzm
	YzHMjH1Ti0EFZ7p8EhNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYEq-0001x8-1g; Wed, 04 Dec 2019 17:14:56 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYEn-0001wh-Fv
 for linux-rockchip@lists.infradead.org; Wed, 04 Dec 2019 17:14:54 +0000
Received: by mail-qk1-x741.google.com with SMTP id c124so673871qkg.0
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Dec 2019 09:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=LMCJWJgj3JtLM245DsTOp3ZWCRWTjxWdbv8pYKFWQio=;
 b=UvNanVwYoPSox2uGkTxpyBf4eC+CDY/BgaltnnBYqqIb6W/WoyWbLMqLV7z2ZvJYBc
 YLMRjE4InZVvGvFFMbuOx8xhrTvJEMYdrgfQsuX8ZeLix+FaLaEv4nWxP6EZsW0Ustu8
 NBdr6z/ZyVjwpHcdxsd1NU/uNytcBt92ult7JcU8p+JDx9uxTCnzzR3LeBgizrR3/DYN
 cOSDSUUkv+fNg95Y0XstjdfQ3Yzi+g8maaCsr2+lRhy7vq3hq0WzPIV35qwx73alnlvI
 9AK50TB6Vi3+IHrNkDs/GYLvHb+pOTIQ+lG5lEOVVg3vPpZ8BFGQFpPf1eoU28+kNJKf
 UcCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LMCJWJgj3JtLM245DsTOp3ZWCRWTjxWdbv8pYKFWQio=;
 b=ig72TrSgO3nwhNTMjYVjqPPEJRnoib9MOpRbSiftYCmR+A6EknIcs8bsQ/2mRliKba
 AAr+Hag9q/RzT688QUM9EuxQ3wr0BMX5ovfJWY8Y5QzoXbj/EAnOCfEPpVeNDSx0pMwZ
 u6u3TeMWqtI03xZ1v08wUFv1t0XvpsfxD3jJlj/ouE/xo0rFLTvnD2M+HUMFYVcPciHf
 DLULH4JwqWCV0lfOaprsCuNUvYyQEVulSeiIPT5tJf4FvZsAwmgY3Cgqo4EjebzL2hOw
 2VR3vXHgxcs2xG09PpnRc2VOHKE2P/fL1/RZEl8+0kNro5Ih/S45Gun8C+tf4PY2FyGV
 Pp5w==
X-Gm-Message-State: APjAAAVmefVyamQZ85KgMmL1IgkUL94OOzHYk0P0O2/buMmRgFOAc4UH
 +VC16AaJoQoMJnKDRopByO/M5kpuelUiKsq9f5w=
X-Google-Smtp-Source: APXvYqzZhJKrlhlZi0jdcRzRDG8DgH2KxM9TDusNrmNtsb6knywymir/9J8eGnR/98T2wen2vOMQhRd+knjZ4OW7aJ8=
X-Received: by 2002:a37:9bd3:: with SMTP id d202mr4111546qke.87.1575479691736; 
 Wed, 04 Dec 2019 09:14:51 -0800 (PST)
MIME-Version: 1.0
References: <20191204103940.22050-1-miquel.raynal@bootlin.com>
 <CAMdYzYrEmTqvJ6m54EADxLDf70duCtdz3pesV3EZmt67=cbs5g@mail.gmail.com>
 <20191204164435.2dd1b4fe@xps13>
In-Reply-To: <20191204164435.2dd1b4fe@xps13>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 4 Dec 2019 12:14:40 -0500
Message-ID: <CAMdYzYoUo_M+qEp3HRsEGrGJDa73JACfH38HG7aY6C8NrQi=5A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Describe PX30 caches
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_091453_555251_AF0DF626 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gV2VkLCBEZWMgNCwgMjAxOSBhdCAxMDo0NCBBTSBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5
bmFsQGJvb3RsaW4uY29tPiB3cm90ZToKPgo+IEhpIFBldGVyLAo+Cj4gUGV0ZXIgR2VpcyA8cGd3
aXBlb3V0QGdtYWlsLmNvbT4gd3JvdGUgb24gV2VkLCA0IERlYyAyMDE5IDEwOjM2OjE5Cj4gLTA1
MDA6Cj4KPiA+IE9uIFdlZCwgRGVjIDQsIDIwMTkgYXQgNTo0MCBBTSBNaXF1ZWwgUmF5bmFsIDxt
aXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gUFgzMCBTb0NzIGZl
YXR1cmUgNCBDb3J0ZXgtQTM1IENQVXMgd2l0aCBlYWNoIG9mIHRoZW0gYSBMMSBkYXRhIGFuZAo+
ID4gPiBpbnN0cnVjdGlvbiBjYWNoZS4gQm90aCBhcmUgMzJraUIgd2lkZSAoUFgzMCBUUk0pIGFu
ZCBtYWRlIG9mIDY0LWJpdAo+ID4gPiBsaW5lcyAoQVJNIENvcnRleC1BMzUgbWFudWFsKS4gSS1j
YWNoZSBpcyAyLXdheSBzZXQgYXNzb2NpYXRpdmUgKEFSTQo+ID4gPiBDb3J0ZXgtQTM1IG1hbnVh
bCksIEQtY2FjaGUgaXMgNC13YXkgc2V0IGFzc29jaWF0aXZlIChBUk0KPiA+ID4gQ29ydGV4LUEz
NW1hbnVhbCkuCj4gPiA+Cj4gPiA+IEFuIEwyIGNhY2hlIGlzIHBsYWNlZCBhZnRlciB0aGVzZSA0
IEwxIGNhY2hlcyAoUFgzMCBUUk0pLCBpcyAyNTZraUIKPiA+ID4gd2lkZSAoUFgzMCBUUk0pIGFu
ZCBtYWRlIG9mIDY0LWJpdCBsaW5lcyAoQVJNIENvcnRleC1BMzUgbWFudWFsKSBhbmQKPiA+ID4g
aXMgOC13YXkgc2V0IGFzc29jaWF0aXZlIChBUk0gQ29ydGV4LUEzNSBtYW51YWwpLgo+ID4gPgo+
ID4gPiBEZXNjcmliZSBhbGwgb2YgdGhlbSBpbiB0aGUgUFgzMCBEVFNJLgo+ID4gPgo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+
ID4gPiAtLS0KPiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC5kdHNpIHwg
MzUgKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzNSBp
bnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3B4MzAuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC5k
dHNpCj4gPiA+IGluZGV4IDFmZDEyYmQwOWU4My4uMGUxMGEyMjRhODRiIDEwMDY0NAo+ID4gPiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAuZHRzaQo+ID4gPiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAuZHRzaQo+ID4gPiBAQCAtNDgsNiArNDgs
MTMgQEAKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgY3B1LWlkbGUtc3RhdGVzID0gPCZD
UFVfU0xFRVAgJkNMVVNURVJfU0xFRVA+Owo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICBk
eW5hbWljLXBvd2VyLWNvZWZmaWNpZW50ID0gPDkwPjsKPiA+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmY3B1MF9vcHBfdGFibGU+Owo+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICBpLWNhY2hlLXNpemUgPSA8MHg4MDAwPjsKPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgaS1jYWNoZS1saW5lLXNpemUgPSA8NjQ+Owo+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICBpLWNhY2hlLXNldHMgPSA8MjU2PjsKPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgZC1jYWNoZS1zaXplID0gPDB4ODAwMD47Cj4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgIGQtY2FjaGUtbGluZS1zaXplID0gPDY0PjsKPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgZC1jYWNoZS1zZXRzID0gPDEyOD47Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgIG5leHQtbGV2ZWwtY2FjaGUgPSA8JmwyPjsKPiA+Cj4gPiBJZiB0aGUgaS1jYWNoZSBpcyAy
LXdheSBhc3NvY2lhdGl2ZSBhbmQgdGhlIGQtY2FjaGUgaXMgNC13YXksIHdvdWxkbid0Cj4gPiB0
aGF0IG1lYW4gdGhlc2UgdHdvIHZhbHVlcyBhcmUgYmFja3dhcmRzPwo+Cj4gV2hpY2ggdmFsdWUg
YXJlIHlvdSByZWZlcnJpbmcgdG8/IERvIHlvdSBtZWFuIGNhY2hlLXNldHM/IFRoZSBmb2xsb3dp
bmcKPiBjYWxjdWxhdGlvbiBpcyBteSB1bmRlcnN0YW5kaW5nIG9mIHRoZSBzaXR1YXRpb24gYnV0
IGl0IGlzIHRoZSBmaXJzdAo+IHRpbWUgSSBhbSBkb2luZyBpdCBzbyBJIG1pZ2h0IGJlIHRvdGFs
bHkgd3JvbmcuCj4KPiBNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgaWYgdGhlcmUgYXJlIDMyNzY4
IGNhY2hlIGJ5dGVzIG1hZGUgb2YgNjQtYnl0ZQo+IGxpbmVzLCBzbyB0aGVyZSBhcmUgNTEyIGxp
bmVzIGluIGJvdGggY2FzZXMuCj4KPiBUaGVuLCBpZiB0aGUgaW5zdHJ1Y3Rpb24gY2FjaGUgaXMg
Mi13YXkgYXNzb2NpYXRpdmUsIGl0IG1lYW5zIHRoZXJlIGFyZQo+IDUxMiAvIDIgPSAyNTYgc2V0
cy4gRm9yIHRoZSBkYXRhIGNhY2hlICg0LXdheSksIGl0IHdvdWxkIGJlIDUxMiAvIDQgPQo+IDEy
OC4gQW0gSSB3cm9uZz8KCkFwb2xvZ2llcywgeW91IGFyZSBjb3JyZWN0LCBpdCB3YXMgSSB3aG8g
d2FzIG1pc3Rha2VuLgo+Cj4gVGhhbmtzLAo+IE1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
