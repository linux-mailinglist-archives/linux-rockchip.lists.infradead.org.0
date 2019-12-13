Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0AC11E5B5
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 15:37:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnDZn5hkRf9Uth4fdL29xtzga5oBhMt79SPqv2Wcf80=; b=iVy5RokXCxxevV
	sDu8lYAGoJgxcKA8gmjEZ7Q0PRUtyDINT94OhRtIIN+tynm2vz9i5AFMW+05Yk8GwFNx6dSxzY1ua
	+zpS6n8PUiajuVcXjHog89hHWhMzzP77E/DBz9m/Mty0uztOSaSWKs4fEiVLD+6gBajmCGe9Uknti
	dsHy47UPc1YBTlFZoVtTQ3zVI1YKGRaX1Ee24flwhzdOeccuSnPGoFTspxEDsRaUnvlxo6Aq2zLd3
	2WGuqvTpfcuzdh7QcBw7AAs0DjQwYkhEiOuYTuDrsGwjT0jAKPCoYhptrsbBCmw3ezhCPxZ36L4Xu
	3CtC//Ztrra5HuEDml5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifm3p-0002RZ-6e; Fri, 13 Dec 2019 14:36:53 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifm3Y-0002Bh-Py; Fri, 13 Dec 2019 14:36:41 +0000
Received: by mail-ot1-f68.google.com with SMTP id g18so6654289otj.13;
 Fri, 13 Dec 2019 06:36:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GGDHCjU3MM6dIoUZbPeaqvOt8azxG8D7bJ42yMYhguQ=;
 b=K6JNAh8KHY/2MGxpBASKzIufM0LrT8Y1JDjYrkb7OW9ssyPpu186y8m8wVhxRz18Tn
 xpLkhvtMwx3lZ+VMWoiGgTxaUj/JKZV2N+X3ug3J1Y9+kYe48BttazVnJhzimECnsMSN
 UapTHwBLgl/RYO+vXLRNB13PfNdbE2qIrnJxygMVQGrMefBaAuPdyir/ZNoa+63goaoc
 lzG0C/GEa8p0AVLrUNpEGVdkV6PjvO9xy0CUpjmObh/0f424DspbHjGJzfLaaU81eWwg
 Fmmb5iidSB0+5HIuWZGGS3eAuxiha/orkS1RkAfsqbpn6nGN7cX2qMDqZq82YJoVctdf
 a/yA==
X-Gm-Message-State: APjAAAUZTyEqaZWk10yqyPt/rXt5gXC7bZSrGK97MIJdUCRCUMA4EN8s
 q+YKTDh0yeFfHE1tt9bBB+IjTPfuJAcOsWshuLo=
X-Google-Smtp-Source: APXvYqwKdL1VCGK4Oe8rL01hvhyHoDgd/HFUlME0PAelLe/cixzON7bfU2Iq4k7pCixPL7UT2s6qDca45N2N5QcrkBo=
X-Received: by 2002:a9d:7984:: with SMTP id h4mr15219004otm.297.1576247795212; 
 Fri, 13 Dec 2019 06:36:35 -0800 (PST)
MIME-Version: 1.0
References: <20191212033952.5967-1-afaerber@suse.de>
 <7110806f-ddbd-f055-e107-7a1f7e223102@arm.com>
 <c86c6bc0-b0e5-c46e-da87-9d910b95f9f3@suse.de>
 <04e7d7cd-a8bc-621b-9205-1a058521cabe@arm.com>
In-Reply-To: <04e7d7cd-a8bc-621b-9205-1a058521cabe@arm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 13 Dec 2019 15:36:24 +0100
Message-ID: <CAMuHMdXddQ4v8-by_SmcS09EYykoBZ2G2vcFUpqPadHFaasy7A@mail.gmail.com>
Subject: Re: [RFC 00/25] arm64: realtek: Add Xnano X5 and implement
 TM1628/FD628/AiP1618 LED controllers
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_063636_844219_A0E6B6E9 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, csd@princeton.com.tw,
 linux-realtek-soc@lists.infradead.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 sales@fdhisi.com, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-spi <linux-spi@vger.kernel.org>,
 Dan Murphy <dmurphy@ti.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 zypeng@titanmec.com,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, linux-leds@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgUm9iaW4sCgpPbiBGcmksIERlYyAxMywgMjAxOSBhdCAzOjA4IFBNIFJvYmluIE11cnBoeSA8
cm9iaW4ubXVycGh5QGFybS5jb20+IHdyb3RlOgo+IE9uIDEyLzEyLzIwMTkgODo1NSBwbSwgQW5k
cmVhcyBGw6RyYmVyIHdyb3RlOgo+ID4gQW0gMTIuMTIuMTkgdW0gMTQ6MTQgc2NocmllYiBSb2Jp
biBNdXJwaHk6Cj4gPj4gYW5kIGFzIGZhciBhcyBJCj4gPj4gY291bGQgdGVsbCB0aGUgY29tbWFu
ZCBzZXQgYXBwZWFycyB0byBkZXJpdmUgZnJvbSAob3IgaXMgYXQgbGVhc3QgY29tbW9uCj4gPj4g
dG8pIHNvbWUgb2xkIEhvbHRlayBWRkQgY29udHJvbGxlcnMuCj4gPgo+ID4gSG1tLCBIVDE2NTE1
IGxvb2tzIHNpbWlsYXIgYW5kIGhhcyBtb3JlIGxpbmVzLCBSQU0gYW5kIG1vZGUgYml0cyB0aGFu
IEkKPiA+IHByZXBhcmVkIGhlcmUuCj4gPiBodHRwczovL3d3dy5ob2x0ZWsuY29tL3Byb2R1Y3Rk
ZXRhaWwvLS92Zy9odDE2NTE1Cj4gPgo+ID4gU28gSSdkIG5lZWQgdG8gbWFrZSBtb3JlIG51bWJl
cnMgbW9kZWwtZGVwZW5kZW50IGFuZCBhbGxvY2F0ZSB0aGUKPiA+IERpc3BsYXkgUkFNIGJ1ZmZl
ciBkeW5hbWljYWxseS4KPiA+Cj4gPiBXaGVyZWFzIEhUMTZEMzVBIHNlZW1zIGluY29tcGF0aWJs
ZSBjb21tYW5kLXdpc2UsIGFuZCBIVDE2NTI4IGFwcGVhcnMgdG8KPiA+IGJlIG91dCBvZiBzY29w
ZSwgZm9yIGRvdCBkaXNwbGF5cyBhbmQgd2l0aCBmYW5jeSBlbWJlZGRlZCBjaGFyYWN0ZXIgbWFw
Lgo+ID4KPiA+IE5vIEhvbHRlayBlbWFpbCBhbGlhcyB0aGF0IEkgY2FuIHF1aWNrbHkgc3BvdC4K
PiA+Cj4gPiBCdXQgZ2l2ZW4gdGhhdCBJJ20gcHJvcG9zaW5nIHZlbmRvci1zcGVjaWZpYyBjb21w
YXRpYmxlcyBqdXN0IGluIGNhc2UsCj4gPiB0aGUgbWFpbiBkZWNpc2lvbnMgd2lsbCBiZSB0aGUg
S2NvbmZpZyBzeW1ib2wgYW5kIG1vZHVsZSBuYW1lLiBUaGUKPiA+IGRyaXZlciBjb2RlIGl0c2Vs
ZiB3ZSBjb3VsZCBhbHdheXMgcmVmYWN0b3IgYWZ0ZXIgbWVyZ2luZywgYW5kIHJlbmFtaW5nCj4g
PiB0aGUgc2NoZW1hIGZpbGUgKGFzIG9wcG9zZWQgdG8gY29tcGF0aWJsZSkgc2hvdWxkIGFsc28g
YmUgcG9zc2libGUuCj4KPiBZZWFoLCBJJ20gbm90IHN1cmUgdGhhdCBpdCByZWFsbHkgbWF0dGVy
cywgYXMgSSBkb3VidCB0aGVyZSBhcmUgbWFueQo+IExpbnV4LWNhcGFibGUgZGV2aWNlcyB3aXRo
IGEgcmVhbCBWRkQgYW55d2F5OyBpdCBqdXN0IHNlZW1lZCBsaWtlIGFuCj4gaW50ZXJlc3Rpbmcg
ZGF0YXBvaW50IHRoYXQgZmVsbCBvdXQgb2Ygc2NvdXJpbmcgdGhlIHdlYiB0cnlpbmcgdG8gZmlu
ZAo+IGFueSBldmlkZW5jZSBmb3Igd2hpY2ggdGhlICJjYW5vbmljYWwiIDE2MTggbWlnaHQgYmUg
KGFuZCB0aGUgSG9sdGVrCj4gY29ubmVjdGlvbiB3YXMgYWN0dWFsbHkgYSBjb2luY2lkZW5jZSBm
cm9tIGEgbWlzaWRlbnRpZmljYXRpb24gb2YgdGhlCj4gQVJUU0NISVAgcGFydCBudW1iZXIpLgoK
TXkgU29ueSBCbHUtUmF5L0hvbWUgVGhlYXRyZSBoYXMgYSBuaWNlIG9uZSAoMTQtc2VnbWVudCEp
LCBhbHNvIGRyaXZlbgpieSBhbiBIVDE2NTE1LiAgV2hpbGUgdGhlIHNwZWNpZmljIG1vZGVsIHBy
ZWRhdGVzIHRoZSBhcnJpdmFsIG9mIExpbnV4CmluIHRoZSBuZXh0IHN0ZXBwaW5nIG9mIHRoZSBo
YXJkd2FyZSwgaXQgc2hvdWxkIGJlIHN1ZmZpY2llbnRseSBwb3dlcmZ1bAp0byBydW4gTGludXgu
CgpVbmZvcnR1bmF0ZWx5IGl0J3MgaW4gYWN0aXZlIHVzZSwgc28gaGFja2luZyBleHBlcmltZW50
cyB3b3VsZCBiZSB2ZXRvZWQgYnkKdGhlIGZhbWlseSA7LSkKCkdye29ldGplLGVldGluZ31zLAoK
ICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0g
VGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3Jn
CgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxs
IG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBq
dXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
