Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8CB9C703
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 03:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c92oKJOmeKTTv9O7YXlnujmIQggYuraqAtSyBj0KLa4=; b=bfv8M0uKCmr0LDtHmA9gfW+0r
	tMMJZ7+fACgiNkxhAKbW6uiNxplHXUP0ksyhDijTKpZd5l1VvY9bS4hCPSIW0PVFnLSrmCuJ6Rs3H
	SwWzqlFGoGZwBwIz5HFl8/RG3Zeteb50g6XlF9k/RzMGlo/8wo+b2e7ijSBa591bSRXiB0Yd4CvZL
	6o2trCO6kivy0cM3lPXRMN38vZWvn7mc+BAqNTStlK6dbziYzXQLllqqPRMKH8p5OsIxlZhpjkZsm
	gRBRV3IDqfOJSGa+GUkn9tcbYfIcNrJEU3n945KlJlCugZOLZpTmpo0MWhP7z7hgSYh+zJbfXv9Md
	v00zWeddw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i23tx-0007Gy-NR; Mon, 26 Aug 2019 01:34:33 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i23tt-0007GY-F2
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 01:34:31 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.232])
 by regular1.263xmail.com (Postfix) with ESMTP id 70617382;
 Mon, 26 Aug 2019 09:34:17 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P28685T140205583496960S1566783252461146_; 
 Mon, 26 Aug 2019 09:34:14 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c2c0091658f08b70b8e82ec94d572077>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 12/15] include: rk3399: Disable watchdog in TPL
To: Jagan Teki <jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-13-jagan@amarulasolutions.com>
 <fd03eeac-8012-5013-ab03-aa1e39156700@rock-chips.com>
 <CAMty3ZC6xKM3VaKEjtMGDu4mLamuHLPP8DLc_L2KdDD9kzOrxw@mail.gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <cdf1402e-2aa2-b806-2790-9152ab58637b@rock-chips.com>
Date: Mon, 26 Aug 2019 09:34:12 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMty3ZC6xKM3VaKEjtMGDu4mLamuHLPP8DLc_L2KdDD9kzOrxw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_183429_679214_05F083B0 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.200 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, U-Boot-Denx <u-boot@lists.denx.de>,
 Akash Gajjar <akash@openedev.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SmFnYW4sCgpPbiAyMDE5LzgvMjYg5LiK5Y2INDoxNCwgSmFnYW4gVGVraSB3cm90ZToKPiBPbiBN
b24sIEF1ZyA1LCAyMDE5IGF0IDY6MTMgUE0gS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNo
aXBzLmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIDIwMTkvNy8yOSDkuIvljYgzOjQ3LCBKYWdhbiBUZWtp
IHdyb3RlOgo+Pj4gRGlzYWJsZSB3YXRjaGRvZyBmb3IgVFBMLCBzaW5jZSB0aGVyZSBpcyBubyBz
dXBwb3J0IGl0Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1
bGFzb2x1dGlvbnMuY29tPgo+Pj4gLS0tCj4+PiAgICBpbmNsdWRlL2NvbmZpZ3MvcmszMzk5X2Nv
bW1vbi5oIHwgNSArKysrKwo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+
Pj4KPj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2NvbmZpZ3MvcmszMzk5X2NvbW1vbi5oIGIvaW5j
bHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaAo+Pj4gaW5kZXggOGRmMDE4MDI4NC4uNjdiNDhl
MDNiYSAxMDA2NDQKPj4+IC0tLSBhL2luY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmgKPj4+
ICsrKyBiL2luY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmgKPj4+IEBAIC00Niw2ICs0Niwx
MSBAQAo+Pj4gICAgI2RlZmluZSBDT05GSUdfU1lTX1NEUkFNX0JBU0UgICAgICAgICAgICAgICAw
Cj4+PiAgICAjZGVmaW5lIFNEUkFNX01BWF9TSVpFICAgICAgICAgICAgICAgICAgICAgIDB4Zjgw
MDAwMDAKPj4+Cj4+PiArI2lmZGVmIENPTkZJR19UUExfQlVJTEQKPj4+ICsjIHVuZGVmIENPTkZJ
R19XRFQKPj4+ICsjIHVuZGVmIENPTkZJR19XQVRDSERPRwo+Pj4gKyNlbmRpZgo+Pgo+PiBJdCB3
aWxsIGJlIGJldHRlciB0byB1c2UgQ09ORklHXyR7U1BMX1RQTH1XRFQgaW4gd2F0Y2hkb2cgTWFr
ZWZpbGUsCj4+Cj4+IGJlY2F1c2UgYWxsIHRoZSBTb0MgbmVlZHMgdHJlYXQgdGhpcyBkcml2ZXIg
c2VwYXJhdGUgaW4gVFBML1NQTC9VLUJvb3QKPj4gcHJvcGVyLgo+IEVuYWJsaW5nIFRQTCAodmlh
IERNIG9yIHNvKSBjYW5ub3QgYmUgYW4gb3B0aW1hbCBzb2x1dGlvbnMgYXMgb2Ygbm93LAoKCkkn
bSBub3Qgc3VnZ2VzdGluZyBlbmFibGUgV0RUIGluIFRQTCwgYnV0IG9ubHkgYWJvdXQgaG93IHRo
ZSBXRFQgbW9kdWxlIAppcyBlbmFibGVkIGluIE1ha2VmaWxlIHN5c3RlbTsKCklmIHVzZWluZyBD
T05GSUdfJHtTUExfVFBMfVdEVCBpbiBNYWtlZmlsZSwgdGhlbiB0aGUgV0RUIGlzIG5vdCBlbmFi
bGVkIAppbiBUUEwgaWYgdGhlcmUgaXMgbm8KCkNPTkZJR19UUExfV0RULCBzbyB5b3UgZG9uJ3Qg
aGF2ZSB0byB3cml0ZSB0aGUgJ3VuZGVmIC4uLicgY29kZSBmb3IgCkNPTkZJR19UUExfQlVJTEQu
CgoKVGhhbmtzLAoKLSBLZXZlcgoKPiBzaW5jZSBpZiBpdCBjb250aW51b3VzbHkgcmVzZXR0aW5n
IHdlIG5lZWQgdG8gdGFrZSBib290IHN3aXRjaCBiYXNlZAo+IG9uIGJvb3Rjb3VudCwgaWUgcG9z
c2libGUgd2l0aCBTUEwgYW5kIFUtQm9vdCBwcm9wZXIgbm93LiBNYWtpbmcgYQo+IGJvb3Qgc3dp
dGNoIHRvIFRQTCBtaWdodCBpbmNyZWFzZSBjb2RlIHNpemUsIHNvIHdpbGwgY2hlY2sgdGhpcwo+
IGRlY2lzaW9uIGxhdGVyIGJhc2VkIG9uIHRoZSByZXF1aXJlbWVudC4KPgoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
