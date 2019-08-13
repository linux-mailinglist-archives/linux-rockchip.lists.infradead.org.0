Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2988AC55
	for <lists+linux-rockchip@lfdr.de>; Tue, 13 Aug 2019 03:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xLkqFhNIxyJi6V2/C4Sp6c1IH8mlZWoBtarkWlZcowU=; b=W6CDgUxRAhBt2tyDeTvdyiLW/
	gwfqRCKZmh12L6uqLLFYJIHcXkVE5es119skhtXm0DYPoi7CH+XlW1kzoKJdc5DrncXkmoBagnJyP
	r78iMQVBsE42WMyDCDvyDomt5/Up+nSpes/FQ0djcFc7aOY9oUKBPylnfKnj8pLyOyd36SuzF748g
	0XkVo45KNEF9EMhWvL9plJXH1MZ/R0zjzGFubXn2tqrbE6qBg19G9LRkQGMVjObfEzCl1hALjX993
	2bSaDdkaXW2Pycdee5/MVwk3RgsJiaJJFB80gBazjAc8tvDiJfHrc8L0cSKmZ2TYkq/0PmTRkxNYH
	GxxGiZhUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxLDW-0003R0-Er; Tue, 13 Aug 2019 01:03:14 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxLDR-0003Qa-Re
 for linux-rockchip@lists.infradead.org; Tue, 13 Aug 2019 01:03:12 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id 598CE25F;
 Tue, 13 Aug 2019 09:03:00 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P17168T140442312099584S1565658172707983_; 
 Tue, 13 Aug 2019 09:02:59 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e87e124c5a513c96b6169d17d1dd165e>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: =?UTF-8?Q?Re=3a_=5bU-Boot=5d_=5bPATCH_14/15=5d_rockchip=3a_rk3399?=
 =?UTF-8?B?OiBBZGQgYm9vdGNvdW50IHN1cHBvcnTjgJDor7fms6jmhI/vvIzpgq7ku7bnlLF1?=
 =?UTF-8?B?LWJvb3QtYm91bmNlc0BsaXN0cy5kZW54LmRl5Luj5Y+R44CR?=
From: Kever Yang <kever.yang@rock-chips.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-15-jagan@amarulasolutions.com>
 <3a38244a-974f-f3e5-0d09-28850b72b247@rock-chips.com>
Message-ID: <c0607fc7-941d-e001-0537-111f49107c70@rock-chips.com>
Date: Tue, 13 Aug 2019 09:02:52 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3a38244a-974f-f3e5-0d09-28850b72b247@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_180310_214508_85A37580 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvOC8xMiDkuIvljYg4OjE2LCBLZXZlciBZYW5nIHdyb3RlOgo+IEhpIEphZ2FuLAo+
Cj4KPiBPbiAyMDE5LzcvMjkg5LiL5Y2IMzo0NywgSmFnYW4gVGVraSB3cm90ZToKPj4gQWRkIGJv
b3Rjb3VudCBzdXBwb3J0IGZvciBSb2NrY2hpcCByazMzOTkuCj4+Cj4+IFRoZSBib290Y291bnQg
dmFsdWUgaXMgcHJlc2VydmVkIGluIFBNVV9TWVNfUkVHMCByZWdpc3RlciwKPgo+IFBNVV9TWVNf
UkVHMCBoYXMgYmVlbiB1c2VkIGJ5IG90aGVyIGNhc2UgaW4gUm9ja2NoaXAsIHdlIGRvbid0CgoK
UGxlYXNlIGlnbm9yZSB0aGlzIG1haWwsIEkgbWl4aW5nIHRoZSByZWdpc3RlcnMgaW4gUE1VIGFu
ZCBQTVVHUkYsCgp0aGUgUE1VX1NZU19SRUcwIGlzIG5vdCB1c2VkIHlldCBhbmQgeW91IGNhbiB1
c2UgaXQuCgoKVGhhbmtzLAoKLSBLZXZlcgoKPiByZWNvbW1lbmQgdG8gdXNlIGl0LCB0aGUgUE1V
R1JGX09TX1JFRzMgaXMgc3RpbGwgcmVzZXJ2ZWQgbm93LAo+IGNvdWxkIHlvdSB1c2UgaXQgaW5z
dGVhZD8KPgo+IFRoYW5rcywKPiAtIEtldmVyCj4KPj4gdGhpcyB3b3VsZCBoZWxwIHRvIHN1cHBv
cnQgcmVkdW5kZW50IGJvb3QuCj4+Cj4+IE9uY2UgdGhlIHJlZHVuZGFudCBib290IHRyaWdnZXJz
LCB0aGUgYWx0Ym9vdCBjb21tYW5kCj4+IHdpbGwgbG9vayBmb3IgZXh0bGludXgtcm9sbGJhY2su
Y29uZiBvbiBwYXJ0aWN1bGFyCj4+IGJvb3RhYmxlIHBhcnRpdGlvbiB3aGljaCBzdXBwb3NlZCB0
byBiZSBhIHJlY292ZXJ5Cj4+IHBhcnRpdGlvbiB3aGVyZSByZWR1bmRhbnQgYm9vdCByZXF1aXJl
ZC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9u
cy5jb20+Cj4+IC0tLQo+PiDCoCBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25maWfCoMKgwqDC
oMKgwqDCoCB8wqAgMiArKwo+PiDCoCBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzM5OS9LY29u
ZmlnIHwgMTAgKysrKysrKysrKwo+PiDCoCBpbmNsdWRlL2NvbmZpZ3MvcmszMzk5X2NvbW1vbi5o
wqDCoMKgwqDCoMKgIHzCoCA1ICsrKystCj4+IMKgIDMgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1y
b2NrY2hpcC9LY29uZmlnIAo+PiBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvS2NvbmZpZwo+PiBp
bmRleCAxN2YzMWU4OWYzLi5kZDUwNTVlZDY5IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9tYWNo
LXJvY2tjaGlwL0tjb25maWcKPj4gKysrIGIvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9LY29uZmln
Cj4+IEBAIC0xODQsNiArMTg0LDggQEAgY29uZmlnIFJPQ0tDSElQX1JLMzM5OQo+PiDCoMKgwqDC
oMKgIGltcGx5IFRQTF9DTEsKPj4gwqDCoMKgwqDCoCBpbXBseSBUUExfVElOWV9NRU1TRVQKPj4g
wqDCoMKgwqDCoCBpbXBseSBUUExfUk9DS0NISVBfQ09NTU9OX0JPQVJECj4+ICvCoMKgwqAgaW1w
bHkgU1lTX0JPT1RDT1VOVF9TSU5HTEVXT1JEIGlmIEJPT1RDT1VOVF9MSU1JVAo+PiArwqDCoMKg
IGltcGx5IENNRF9CT09UQ09VTlQgaWYgQk9PVENPVU5UX0xJTUlUCj4+IMKgwqDCoMKgwqAgaGVs
cAo+PiDCoMKgwqDCoMKgwqDCoCBUaGUgUm9ja2NoaXAgUkszMzk5IGlzIGEgQVJNLWJhc2VkIFNv
QyB3aXRoIGEgZHVhbC1jb3JlIAo+PiBDb3J0ZXgtQTcyCj4+IMKgwqDCoMKgwqDCoMKgIGFuZCBx
dWFkLWNvcmUgQ29ydGV4LUE1My4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtcm9ja2No
aXAvcmszMzk5L0tjb25maWcgCj4+IGIvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMzOTkvS2Nv
bmZpZwo+PiBpbmRleCA2NjYwZDA1MzQ5Li42OGFjOTEzYmNiIDEwMDY0NAo+PiAtLS0gYS9hcmNo
L2FybS9tYWNoLXJvY2tjaGlwL3JrMzM5OS9LY29uZmlnCj4+ICsrKyBiL2FyY2gvYXJtL21hY2gt
cm9ja2NoaXAvcmszMzk5L0tjb25maWcKPj4gQEAgLTkxLDYgKzkxLDE2IEBAIGNvbmZpZyBUUExf
U1RBQ0sKPj4gwqAgY29uZmlnIFRQTF9URVhUX0JBU0UKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGRl
ZmF1bHQgMHhmZjhjMjAwMAo+PiDCoCAraWYgQk9PVENPVU5UX0xJTUlUCj4+ICsKPj4gK2NvbmZp
ZyBCT09UQ09VTlRfQk9PVExJTUlUCj4+ICvCoMKgwqAgZGVmYXVsdCAzCj4+ICsKPj4gK2NvbmZp
ZyBTWVNfQk9PVENPVU5UX0FERFIKPj4gK8KgwqDCoCBkZWZhdWx0IDB4ZmYzMTAwZjDCoMKgwqAg
IyBQTVVfU1lTX1JFRzAKPj4gKwo+PiArZW5kaWYgIyBCT09UQ09VTlRfTElNSVQKPj4gKwo+PiDC
oCBzb3VyY2UgImJvYXJkL3JvY2tjaGlwL2V2Yl9yazMzOTkvS2NvbmZpZyIKPj4gwqAgc291cmNl
ICJib2FyZC90aGVvYnJvbWEtc3lzdGVtcy9wdW1hX3JrMzM5OS9LY29uZmlnIgo+PiDCoCBzb3Vy
Y2UgImJvYXJkL3ZhbXJzL3JvY2s5NjBfcmszMzk5L0tjb25maWciCj4+IGRpZmYgLS1naXQgYS9p
bmNsdWRlL2NvbmZpZ3MvcmszMzk5X2NvbW1vbi5oIAo+PiBiL2luY2x1ZGUvY29uZmlncy9yazMz
OTlfY29tbW9uLmgKPj4gaW5kZXggNjdiNDhlMDNiYS4uYWNlODI5MjhkMSAxMDA2NDQKPj4gLS0t
IGEvaW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaAo+PiArKysgYi9pbmNsdWRlL2NvbmZp
Z3MvcmszMzk5X2NvbW1vbi5oCj4+IEBAIC03MCw3ICs3MCwxMCBAQAo+PiDCoMKgwqDCoMKgICJm
ZHRmaWxlPSIgQ09ORklHX0RFRkFVTFRfRkRUX0ZJTEUgIlwwIiBcCj4+IMKgwqDCoMKgwqAgInBh
cnRpdGlvbnM9IiBQQVJUU19ERUZBVUxUIFwKPj4gwqDCoMKgwqDCoCBST0NLQ0hJUF9ERVZJQ0Vf
U0VUVElOR1MgXAo+PiAtwqDCoMKgIEJPT1RFTlYKPj4gK8KgwqDCoCBCT09URU5WIFwKPj4gK8Kg
wqDCoCAiYWx0Ym9vdGNtZD0iIFwKPj4gK8KgwqDCoMKgwqDCoMKgICJzZXRlbnYgYm9vdF9zeXNs
aW51eF9jb25mIGV4dGxpbnV4L2V4dGxpbnV4LXJvbGxiYWNrLmNvbmY7IiBcCj4+ICvCoMKgwqDC
oMKgwqDCoCAicnVuIGRpc3Ryb19ib290Y21kXDAiCj4+IMKgIMKgICNlbmRpZgo+Cj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFUtQm9vdCBtYWls
aW5nIGxpc3QKPiBVLUJvb3RAbGlzdHMuZGVueC5kZQo+IGh0dHBzOi8vbGlzdHMuZGVueC5kZS9s
aXN0aW5mby91LWJvb3QKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
