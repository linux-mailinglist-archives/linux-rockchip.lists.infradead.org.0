Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09370130F61
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 10:25:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=quCMLwEXJ0MUNztFFAFUIDYj/Oj+tl0YIdZR3nPw+iM=; b=SE49b9caV0rMeN/SkiM6vuspE
	TiwjWQ2WGyosD7KqLuhgJaOuG3Rj9PwlmhMmXyUcW40ICwp3uTArbwH12L5lfbxPTpcvU+DLB6xZS
	H6wcQR9oKeRjBZdUm7U5Nu3sVars2GO6bQy78RTT9TF5R2q5F4NJqMnS/IvGM2ryGEk5S+Fpc7xTv
	MwE7sFKGP4tgf3qsBNzHBcWbAgb9d8o4+33WU+1iqylzd6S/2UvFiZEfuPhKBZF108mzTJyH9xN2M
	Sc+6F+3Ur6xdzx+dpUsCnoH8Ldvm7Lvz0JuNnXb6dT56EoUHgcUyIPTQRwQSkK+ECZbeTZ97uTRMs
	ey8dYkdpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOdr-0005iP-6h; Mon, 06 Jan 2020 09:25:43 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOdn-0005hx-BX
 for linux-rockchip@lists.infradead.org; Mon, 06 Jan 2020 09:25:40 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 0B015401;
 Mon,  6 Jan 2020 17:25:37 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P14496T140653713889024S1578302735520496_; 
 Mon, 06 Jan 2020 17:25:36 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7716618edfe030239657304dcfff527b>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 5/5] rockchip: rk3399: Add bootcount support
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191229190726.29266-1-jagan@amarulasolutions.com>
 <20191229190726.29266-6-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <843040fb-d772-a770-043f-ca64678dce8e@rock-chips.com>
Date: Mon, 6 Jan 2020 17:25:36 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191229190726.29266-6-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_012539_755467_5F784692 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTIvMzAg5LiK5Y2IMzowNywgSmFnYW4gVGVraSB3cm90ZToKPiBBZGQgYm9vdGNv
dW50IHN1cHBvcnQgZm9yIFJvY2tjaGlwIHJrMzM5OS4KPgo+IFRoZSBib290Y291bnQgdmFsdWUg
aXMgcHJlc2VydmVkIGluIFBNVV9TWVNfUkVHMCByZWdpc3RlciwKPiB0aGlzIHdvdWxkIGhlbHAg
dG8gc3VwcG9ydCByZWR1bmRlbnQgYm9vdC4KPgo+IE9uY2UgdGhlIHJlZHVuZGFudCBib290IHRy
aWdnZXJzLCB0aGUgYWx0Ym9vdCBjb21tYW5kCj4gd2lsbCBsb29rIGZvciBleHRsaW51eC1yb2xs
YmFjay5jb25mIG9uIHBhcnRpY3VsYXIKPiBib290YWJsZSBwYXJ0aXRpb24gd2hpY2ggc3VwcG9z
ZWQgdG8gYmUgYSByZWNvdmVyeQo+IHBhcnRpdGlvbiB3aGVyZSByZWR1bmRhbnQgYm9vdCByZXF1
aXJlZC4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlv
bnMuY29tPgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNv
bT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICAgYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9LY29u
ZmlnICAgICAgICB8ICAyICsrCj4gICBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzM5OS9LY29u
ZmlnIHwgMTAgKysrKysrKysrKwo+ICAgaW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaCAg
ICAgICB8ICA1ICsrKystCj4gICAzIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25m
aWcgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25maWcKPiBpbmRleCBkOGQ2OGJhNDQ3Li45
YTNjNjVlYzU4IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvS2NvbmZpZwo+
ICsrKyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvS2NvbmZpZwo+IEBAIC0yNDQsNiArMjQ0LDgg
QEAgY29uZmlnIFJPQ0tDSElQX1JLMzM5OQo+ICAgCWltcGx5IFRQTF9DTEsKPiAgIAlpbXBseSBU
UExfVElOWV9NRU1TRVQKPiAgIAlpbXBseSBUUExfUk9DS0NISVBfQ09NTU9OX0JPQVJECj4gKwlp
bXBseSBTWVNfQk9PVENPVU5UX1NJTkdMRVdPUkQgaWYgQk9PVENPVU5UX0xJTUlUCj4gKwlpbXBs
eSBDTURfQk9PVENPVU5UIGlmIEJPT1RDT1VOVF9MSU1JVAo+ICAgCWhlbHAKPiAgIAkgIFRoZSBS
b2NrY2hpcCBSSzMzOTkgaXMgYSBBUk0tYmFzZWQgU29DIHdpdGggYSBkdWFsLWNvcmUgQ29ydGV4
LUE3Mgo+ICAgCSAgYW5kIHF1YWQtY29yZSBDb3J0ZXgtQTUzLgo+IGRpZmYgLS1naXQgYS9hcmNo
L2FybS9tYWNoLXJvY2tjaGlwL3JrMzM5OS9LY29uZmlnIGIvYXJjaC9hcm0vbWFjaC1yb2NrY2hp
cC9yazMzOTkvS2NvbmZpZwo+IGluZGV4IDg2OGU4NWZjMmEuLmY5OTQxNTI4MDMgMTAwNjQ0Cj4g
LS0tIGEvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMzOTkvS2NvbmZpZwo+ICsrKyBiL2FyY2gv
YXJtL21hY2gtcm9ja2NoaXAvcmszMzk5L0tjb25maWcKPiBAQCAtMTEzLDYgKzExMywxNiBAQCBj
b25maWcgVFBMX1RFWFRfQkFTRQo+ICAgY29uZmlnIFNQTF9TVEFDS19SX0FERFIKPiAgIAlkZWZh
dWx0IDB4MDQwMDAwMDAKPiAgIAo+ICtpZiBCT09UQ09VTlRfTElNSVQKPiArCj4gK2NvbmZpZyBC
T09UQ09VTlRfQk9PVExJTUlUCj4gKwlkZWZhdWx0IDMKPiArCj4gK2NvbmZpZyBTWVNfQk9PVENP
VU5UX0FERFIKPiArCWRlZmF1bHQgMHhmZjMxMDBmMAkjIFBNVV9TWVNfUkVHMAo+ICsKPiArZW5k
aWYgIyBCT09UQ09VTlRfTElNSVQKPiArCj4gICBzb3VyY2UgImJvYXJkL3JvY2tjaGlwL2V2Yl9y
azMzOTkvS2NvbmZpZyIKPiAgIHNvdXJjZSAiYm9hcmQvdGhlb2Jyb21hLXN5c3RlbXMvcHVtYV9y
azMzOTkvS2NvbmZpZyIKPiAgIHNvdXJjZSAiYm9hcmQvdmFtcnMvcm9jazk2MF9yazMzOTkvS2Nv
bmZpZyIKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaCBiL2lu
Y2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmgKPiBpbmRleCAxMjdjYTFmMDljLi44OWE4YTQ0
YmJlIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmgKPiArKysg
Yi9pbmNsdWRlL2NvbmZpZ3MvcmszMzk5X2NvbW1vbi5oCj4gQEAgLTYzLDcgKzYzLDEwIEBACj4g
ICAJImZkdGZpbGU9IiBDT05GSUdfREVGQVVMVF9GRFRfRklMRSAiXDAiIFwKPiAgIAkicGFydGl0
aW9ucz0iIFBBUlRTX0RFRkFVTFQgXAo+ICAgCVJPQ0tDSElQX0RFVklDRV9TRVRUSU5HUyBcCj4g
LQlCT09URU5WCj4gKwlCT09URU5WIFwKPiArCSJhbHRib290Y21kPSIgXAo+ICsJCSJzZXRlbnYg
Ym9vdF9zeXNsaW51eF9jb25mIGV4dGxpbnV4L2V4dGxpbnV4LXJvbGxiYWNrLmNvbmY7IiBcCj4g
KwkJInJ1biBkaXN0cm9fYm9vdGNtZFwwIgo+ICAgCj4gICAjZW5kaWYKPiAgIAoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
