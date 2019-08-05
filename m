Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAC381983
	for <lists+linux-rockchip@lfdr.de>; Mon,  5 Aug 2019 14:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gSb4NSxQjhbFxrk2DCho2a4CuuunW4q6VDA7i0NqKmE=; b=foZ62hrADhuqNIjBvHU40j+WH
	NRPJIJjczFF+OEUqGMNXsnHO/sXoVl1bLyaEhHV5x+ePs+qfFSCkHFzn6vQkJRCYvjFEt6kYn8wBQ
	kfYQ5FWz2MpxGhxZ6Pm9yB2Jgp0/HxIRW6rvEed4Tt1H0reO7Th5OOfgwDzh8h3Ebb8SG01jSiE5w
	LuW6Q9w450BbLp1ZvOluf5xzCSJJljfZAAzXEUXueH3ehz3Mk5hVan/S3Mo7wsLuNpzpWhpY9nQ1y
	4youkkm0y6wv4gKk12huIsdC1h9dcNI+VKuW+6zy3GaAHjQZXoYYAYl120sJCZwRJNWgABEIgekhz
	TrJvljzhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucHu-0005Ek-Ns; Mon, 05 Aug 2019 12:40:30 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucHm-0005Ds-NH
 for linux-rockchip@lists.infradead.org; Mon, 05 Aug 2019 12:40:28 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.78])
 by regular1.263xmail.com (Postfix) with ESMTP id 6D23A252;
 Mon,  5 Aug 2019 20:40:18 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.33.93] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P24670T140302813751040S1565008817594537_; 
 Mon, 05 Aug 2019 20:40:19 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <2a5ee909b0db386233be386e04e2fbd4>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: clsee@altera.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 09/15] wdt: dw: Rename to dw_wdt.c
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-10-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <e7507f4e-de8d-e61c-5538-0a3cc203ceba@rock-chips.com>
Date: Mon, 5 Aug 2019 20:40:17 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729074711.16988-10-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_054027_656634_A70EF0D8 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.206 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Dinh Nguyen <dinguyen@kernel.org>, Chin-Liang See <clsee@altera.com>,
 u-boot@lists.denx.de, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8yOSDkuIvljYgzOjQ3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IC0gdXNlIGR3IGlu
c3RlYWQgb2YgZGVzaWdud2FyZSBmb3IgZHJpdmVyIGZpbGUgc2luY2UKPiAgICBMaW51eCBmb2xs
b3dpbmcgdGhlIHNhbWUuCj4gLSBhZGQgQ09ORklHIG1hY3JvIHN0YXJ0IHdpdGggQ09ORklHX1dE
VCBzaW5jZSB0aGUKPiAgICBkcml2ZXIgbW9kZSB3ZHQgZHJpdmVycyBmb2xsb3cgdGhpcy4KPgo+
IENjOiBEaW5oIE5ndXllbiA8ZGluZ3V5ZW5Aa2VybmVsLm9yZz4KPiBDYzogQ2hpbi1MaWFuZyBT
ZWUgPGNsc2VlQGFsdGVyYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5A
YW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gLS0tCj4gICBjb21tb24vYm9hcmRfZi5jICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8IDIgKy0KPiAgIGRyaXZlcnMvd2F0Y2hkb2cvTWFrZWZp
bGUgICAgICAgICAgICAgICAgICAgICAgIHwgMiArLQo+ICAgZHJpdmVycy93YXRjaGRvZy97ZGVz
aWdud2FyZV93ZHQuYyA9PiBkd193ZHQuY30gfCAwCj4gICBpbmNsdWRlL2NvbmZpZ3Mvc29jZnBn
YV9jb21tb24uaCAgICAgICAgICAgICAgICB8IDIgKy0KPiAgIGluY2x1ZGUvY29uZmlncy9zb2Nm
cGdhX3N0cmF0aXgxMF9zb2Nkay5oICAgICAgIHwgMiArLQo+ICAgc2NyaXB0cy9jb25maWdfd2hp
dGVsaXN0LnR4dCAgICAgICAgICAgICAgICAgICAgfCAyICstCj4gICA2IGZpbGVzIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAgIHJlbmFtZSBkcml2ZXJzL3dhdGNo
ZG9nL3tkZXNpZ253YXJlX3dkdC5jID0+IGR3X3dkdC5jfSAoMTAwJSkKPgo+IGRpZmYgLS1naXQg
YS9jb21tb24vYm9hcmRfZi5jIGIvY29tbW9uL2JvYXJkX2YuYwo+IGluZGV4IDQ3NjBkNzI4ZjMu
Ljc5ZWZlZjA3OTIgMTAwNjQ0Cj4gLS0tIGEvY29tbW9uL2JvYXJkX2YuYwo+ICsrKyBiL2NvbW1v
bi9ib2FyZF9mLmMKPiBAQCAtOTUsNyArOTUsNyBAQCBzdGF0aWMgaW50IGluaXRfZnVuY193YXRj
aGRvZ19pbml0KHZvaWQpCj4gICAjIGlmIGRlZmluZWQoQ09ORklHX0hXX1dBVENIRE9HKSAmJiBc
Cj4gICAJKGRlZmluZWQoQ09ORklHX002OEspIHx8IGRlZmluZWQoQ09ORklHX01JQ1JPQkxBWkUp
IHx8IFwKPiAgIAlkZWZpbmVkKENPTkZJR19TSCkgfHwgXAo+IC0JZGVmaW5lZChDT05GSUdfREVT
SUdOV0FSRV9XQVRDSERPRykgfHwgXAo+ICsJZGVmaW5lZChDT05GSUdfV0RUX0RXKSB8fCBcCj4g
ICAJZGVmaW5lZChDT05GSUdfSU1YX1dBVENIRE9HKSkKPiAgIAlod193YXRjaGRvZ19pbml0KCk7
Cj4gICAJcHV0cygiICAgICAgIFdhdGNoZG9nIGVuYWJsZWRcbiIpOwo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3dhdGNoZG9nL01ha2VmaWxlIGIvZHJpdmVycy93YXRjaGRvZy9NYWtlZmlsZQo+IGlu
ZGV4IDY4Yzk4OWFhMGIuLmExNGZkYWJmOGQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy93YXRjaGRv
Zy9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvd2F0Y2hkb2cvTWFrZWZpbGUKPiBAQCAtMTMsNyAr
MTMsNiBAQCBlbmRpZgo+ICAgb2JqLSQoQ09ORklHX1M1UCkgICAgICAgICAgICAgICArPSBzNXBf
d2R0Lm8KPiAgIG9iai0kKENPTkZJR19YSUxJTlhfVEJfV0FUQ0hET0cpICs9IHhpbGlueF90Yl93
ZHQubwo+ICAgb2JqLSQoQ09ORklHX09NQVBfV0FUQ0hET0cpICs9IG9tYXBfd2R0Lm8KPiAtb2Jq
LSQoQ09ORklHX0RFU0lHTldBUkVfV0FUQ0hET0cpICs9IGRlc2lnbndhcmVfd2R0Lm8KPiAgIG9i
ai0kKENPTkZJR19VTFBfV0FUQ0hET0cpICs9IHVscF93ZG9nLm8KPiAgIG9iai0kKENPTkZJR19X
RFQpICs9IHdkdC11Y2xhc3Mubwo+ICAgb2JqLSQoQ09ORklHX1dEVF9TQU5EQk9YKSArPSBzYW5k
Ym94X3dkdC5vCj4gQEAgLTIzLDYgKzIyLDcgQEAgb2JqLSQoQ09ORklHX1dEVF9CQ002MzQ1KSAr
PSBiY202MzQ1X3dkdC5vCj4gICBvYmotJChDT05GSUdfQkNNMjgzNV9XRFQpICAgICAgICs9IGJj
bTI4MzVfd2R0Lm8KPiAgIG9iai0kKENPTkZJR19XRFRfT1JJT04pICs9IG9yaW9uX3dkdC5vCj4g
ICBvYmotJChDT05GSUdfV0RUX0NETlMpICs9IGNkbnNfd2R0Lm8KPiArb2JqLSQoQ09ORklHX1dE
VF9EVykgKz0gZHdfd2R0Lm8KPiAgIG9iai0kKENPTkZJR19XRFRfTVBDOHh4KSArPSBtcGM4eHhf
d2R0Lm8KPiAgIG9iai0kKENPTkZJR19XRFRfTVQ3NjIxKSArPSBtdDc2MjFfd2R0Lm8KPiAgIG9i
ai0kKENPTkZJR19XRFRfTVRLKSArPSBtdGtfd2R0Lm8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy93
YXRjaGRvZy9kZXNpZ253YXJlX3dkdC5jIGIvZHJpdmVycy93YXRjaGRvZy9kd193ZHQuYwo+IHNp
bWlsYXJpdHkgaW5kZXggMTAwJQo+IHJlbmFtZSBmcm9tIGRyaXZlcnMvd2F0Y2hkb2cvZGVzaWdu
d2FyZV93ZHQuYwo+IHJlbmFtZSB0byBkcml2ZXJzL3dhdGNoZG9nL2R3X3dkdC5jCj4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvY29uZmlncy9zb2NmcGdhX2NvbW1vbi5oIGIvaW5jbHVkZS9jb25maWdz
L3NvY2ZwZ2FfY29tbW9uLmgKPiBpbmRleCBkMTAzNGFjMjgwLi42NWYwMmVjYTJlIDEwMDY0NAo+
IC0tLSBhL2luY2x1ZGUvY29uZmlncy9zb2NmcGdhX2NvbW1vbi5oCj4gKysrIGIvaW5jbHVkZS9j
b25maWdzL3NvY2ZwZ2FfY29tbW9uLmgKPiBAQCAtMTA1LDcgKzEwNSw3IEBACj4gICAgKiBMNCBX
YXRjaGRvZwo+ICAgICovCj4gICAjaWZkZWYgQ09ORklHX0hXX1dBVENIRE9HCj4gLSNkZWZpbmUg
Q09ORklHX0RFU0lHTldBUkVfV0FUQ0hET0cKPiArI2RlZmluZSBDT05GSUdfV0RUX0RXCj4gICAj
ZGVmaW5lIENPTkZJR19EV19XRFRfQkFTRQkJU09DRlBHQV9MNFdEMF9BRERSRVNTCj4gICAjZGVm
aW5lIENPTkZJR19EV19XRFRfQ0xPQ0tfS0haCQkyNTAwMAo+ICAgI2RlZmluZSBDT05GSUdfV0FU
Q0hET0dfVElNRU9VVF9NU0VDUwkzMDAwMAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2NvbmZpZ3Mv
c29jZnBnYV9zdHJhdGl4MTBfc29jZGsuaCBiL2luY2x1ZGUvY29uZmlncy9zb2NmcGdhX3N0cmF0
aXgxMF9zb2Nkay5oCj4gaW5kZXggOGQyOTcxYzZlMi4uMzU4MmFlYzgyMiAxMDA2NDQKPiAtLS0g
YS9pbmNsdWRlL2NvbmZpZ3Mvc29jZnBnYV9zdHJhdGl4MTBfc29jZGsuaAo+ICsrKyBiL2luY2x1
ZGUvY29uZmlncy9zb2NmcGdhX3N0cmF0aXgxMF9zb2Nkay5oCj4gQEAgLTE2MSw3ICsxNjEsNyBA
QCB1bnNpZ25lZCBpbnQgY21fZ2V0X3FzcGlfY29udHJvbGxlcl9jbGtfaHoodm9pZCk7Cj4gICAg
Ki8KPiAgICNpZmRlZiBDT05GSUdfU1BMX0JVSUxECj4gICAjZGVmaW5lIENPTkZJR19IV19XQVRD
SERPRwo+IC0jZGVmaW5lIENPTkZJR19ERVNJR05XQVJFX1dBVENIRE9HCj4gKyNkZWZpbmUgQ09O
RklHX1dEVF9EVwo+ICAgI2RlZmluZSBDT05GSUdfRFdfV0RUX0JBU0UJCVNPQ0ZQR0FfTDRXRDBf
QUREUkVTUwo+ICAgI2lmbmRlZiBfX0FTU0VNQkxZX18KPiAgIHVuc2lnbmVkIGludCBjbV9nZXRf
bDRfc3lzX2ZyZWVfY2xrX2h6KHZvaWQpOwo+IGRpZmYgLS1naXQgYS9zY3JpcHRzL2NvbmZpZ193
aGl0ZWxpc3QudHh0IGIvc2NyaXB0cy9jb25maWdfd2hpdGVsaXN0LnR4dAo+IGluZGV4IGU2MTZm
NzIyOWIuLmYyNDUzNzI4YzYgMTAwNjQ0Cj4gLS0tIGEvc2NyaXB0cy9jb25maWdfd2hpdGVsaXN0
LnR4dAo+ICsrKyBiL3NjcmlwdHMvY29uZmlnX3doaXRlbGlzdC50eHQKPiBAQCAtMzIzLDcgKzMy
Myw3IEBAIENPTkZJR19ERUZBVUxUX0lNTVIKPiAgIENPTkZJR19ERUZfSFdDT05GSUcKPiAgIENP
TkZJR19ERUxBWV9FTlZJUk9OTUVOVAo+ICAgQ09ORklHX0RFU0lHTldBUkVfRVRICj4gLUNPTkZJ
R19ERVNJR05XQVJFX1dBVENIRE9HCj4gK0NPTkZJR19XRFRfRFcKCklzIGl0IGJldHRlciB0byBk
ZWZpbmUgYSBXRFRfRFcgaW4gZHJpdmVycy93YXRjaGRvZy9LY29uZmlnIHNvIHRoYXQgd2UgCmRv
bid0IG5lZWQKCnRoaXMgd2hpdGUgbGlzdD8KClRoYW5rcywKCi0gS2V2ZXIKCj4gICBDT05GSUdf
REVWRUxPUAo+ICAgQ09ORklHX0RFVklDRV9UUkVFX0xJU1QKPiAgIENPTkZJR19ERlVfQUxUCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
