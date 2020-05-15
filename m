Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3351D43CA
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 04:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=21HiVgTyrXmPirzXBR/XqKGPIyf6nar8pKp+g3rK8gU=; b=E3Fm/ceQIIL69d/ScgRQ3K+Zo
	SLbhMXwvYUJxecQawcArUDBo0kIWSDdCjQTl6eWOJ89qzAD20co382mgSp+2KXnqdFeQoMMRYO9X7
	zvH/mM+GT12mYDg/HBJpGzGjBHBya9Qni9GfEwCtNB1IufwjkC7+M2dOJDi9uKyxuHlKXQqzggy+8
	U+CgTF6uot9FzMHZyqUkW/DYxM/tiI2CwhlAZf1ooU5Vv4K8eW5pEUbnAfEertuXhug3uVQyq2z0C
	uTifpcEVpJYW5LyRCcxxBGuLYusuSdYZntxEQEI9ykQG03/uMIhd1uPXUKjJvTNYRr/iioZB6UcZg
	A2MRj0Ekg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZQTH-0003Ok-Fz; Fri, 15 May 2020 02:53:11 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZQTE-0003Nw-8S
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 02:53:09 +0000
Received: from localhost (unknown [192.168.167.209])
 by regular1.263xmail.com (Postfix) with ESMTP id F1DDA1045;
 Fri, 15 May 2020 10:53:05 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P21671T139939385227008S1589511178090233_; 
 Fri, 15 May 2020 10:53:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <eb8db93204548c07964248531f8e2aeb>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v3_2/6=5d_clk=3a_rk3399=3a_Enable/Disable_?=
 =?UTF-8?B?dGhlIFBDSUVQSFkgY2xr44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9j?=
 =?UTF-8?Q?kchip-bounces+kever=2eyang=3drock-chips=2ecom=40lists=2einfradead?=
 =?UTF-8?B?Lm9yZ+S7o+WPkeOAkQ==?=
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200509165624.20791-1-jagan@amarulasolutions.com>
 <20200509165624.20791-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <4d8e20db-c14b-8ea1-ab95-1c7f2be98074@rock-chips.com>
Date: Fri, 15 May 2020 10:52:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200509165624.20791-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_195308_517518_C5D48BFB 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
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
Cc: patrick@blueri.se, linux-rockchip@lists.infradead.org,
 shawn.lin@rock-chips.com, u-boot@lists.denx.de, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8xMCDkuIrljYgxMjo1NiwgSmFnYW4gVGVraSB3cm90ZToKPiBFbmFibGUvRGlz
YWJsZSB0aGUgUENJRVBIWSBjbGsgZm9yIHJrMzM5OS4KPgo+IENMSyBpcyBjbGVhciBpbiBib3Ro
IGVuYWJsZSBhbmQgZGlzYWJsZSBmdW5jdGlvbmFsaXR5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFn
YW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIg
WWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+
IENoYW5nZXMgZm9yIHYzOgo+IC0gbm9uZQo+Cj4gICBkcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtf
cmszMzk5LmMgfCA2ICsrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsa19yazMzOTkuYyBiL2RyaXZl
cnMvY2xrL3JvY2tjaGlwL2Nsa19yazMzOTkuYwo+IGluZGV4IDVkMmJkYjQyYzcuLjVmYjcyZDgz
YzIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jCj4gKysr
IGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jCj4gQEAgLTExMzYsNiArMTEzNiw5
IEBAIHN0YXRpYyBpbnQgcmszMzk5X2Nsa19lbmFibGUoc3RydWN0IGNsayAqY2xrKQo+ICAgCWNh
c2UgSENMS19IT1NUMV9BUkI6Cj4gICAJCXJrX2NscnJlZygmcHJpdi0+Y3J1LT5jbGtzZWxfY29u
WzIwXSwgQklUKDgpKTsKPiAgIAkJYnJlYWs7Cj4gKwljYXNlIFNDTEtfUENJRVBIWV9SRUY6Cj4g
KwkJcmtfY2xycmVnKCZwcml2LT5jcnUtPmNsa3NlbF9jb25bMThdLCBCSVQoMTApKTsKPiArCQli
cmVhazsKPiAgIAlkZWZhdWx0Ogo+ICAgCQlkZWJ1ZygiJXM6IHVuc3VwcG9ydGVkIGNsayAlbGRc
biIsIF9fZnVuY19fLCBjbGstPmlkKTsKPiAgIAkJcmV0dXJuIC1FTk9FTlQ7Cj4gQEAgLTEyMDks
NiArMTIxMiw5IEBAIHN0YXRpYyBpbnQgcmszMzk5X2Nsa19kaXNhYmxlKHN0cnVjdCBjbGsgKmNs
aykKPiAgIAljYXNlIEhDTEtfSE9TVDFfQVJCOgo+ICAgCQlya19zZXRyZWcoJnByaXYtPmNydS0+
Y2xrc2VsX2NvblsyMF0sIEJJVCg4KSk7Cj4gICAJCWJyZWFrOwo+ICsJY2FzZSBTQ0xLX1BDSUVQ
SFlfUkVGOgo+ICsJCXJrX2NscnJlZygmcHJpdi0+Y3J1LT5jbGtzZWxfY29uWzE4XSwgQklUKDEw
KSk7Cj4gKwkJYnJlYWs7Cj4gICAJZGVmYXVsdDoKPiAgIAkJZGVidWcoIiVzOiB1bnN1cHBvcnRl
ZCBjbGsgJWxkXG4iLCBfX2Z1bmNfXywgY2xrLT5pZCk7Cj4gICAJCXJldHVybiAtRU5PRU5UOwoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
