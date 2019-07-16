Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 226766A310
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WxLHuDVeXCbSxEjV2O5OK3eD93Gkh+81P5DTtJXeiko=; b=W1WJA/VfprAeukKJ33EQcCmMI
	VjZIkXYZJZ58MUU2TneOjHiKHKbs9zKVQVAj9ozq1VQIhXX/j1RDCCxd/tS1QpWrmP2TdEMRoi9GK
	VfDrF8YvsA2xeTQfItz/idQ7V/sLZb8Ktn5TG+h4/3SmLisZHgbsHlWM/IPLsXvrurbM6m2OmhWP7
	42jxVyvyed2jpoSfPJ3OvF/jc62FsWQJQzpfU4a5hTrRZpCB8gZDlZmU872E6aywqOe9rmaQxRTFl
	rDHuETDayJOhgXxPZerT/kZ5xMWUMLB4CMz2PRXI47sChtx5NVmJNTyJP4nCJO9tMbXLIVBuENH7i
	ohoZvnwuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI2h-0005B1-Sb; Tue, 16 Jul 2019 07:38:32 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI2e-0005AT-LR
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:38:30 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.193])
 by regular1.263xmail.com (Postfix) with ESMTP id 7A03C9D6;
 Tue, 16 Jul 2019 15:38:26 +0800 (CST)
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
 P31290T139635952969472S1563262703736596_; 
 Tue, 16 Jul 2019 15:38:25 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <631fdc49725779feb895cbb382690122>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 03/18] ram: rk3399: Use rank mask in ca data training
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-4-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <b9bfe0e4-b87f-b2d1-4b8f-5284ab2364fc@rock-chips.com>
Date: Tue, 16 Jul 2019 15:38:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-4-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_003828_866545_A0C070EE 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.195 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCByYW5rX21h
c2sgYmFzZWQgb24gdGhlIHJhbmsgbnVtYmVyLCB0aGlzIHdvdWxkIGtlZXAKPiB0aGUgY2EgZGF0
YSB0cmFpbmluZyBsb29wIGJhc2VkIG9uIHRoZSBkZXNpcmVkIHJhbmsgbWFzawo+IHZhbHVlIGlu
c3RlYWQgb2YgbG9vcGluZyBmb3IgYWxsIHZhbHVlcy4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2Fu
IFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlvdU1p
biBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2
ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgZHJp
dmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCA4ICsrKysrKystCj4gICAxIGZpbGUg
Y2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgYi9kcml2ZXJzL3JhbS9yb2NrY2hp
cC9zZHJhbV9yazMzOTkuYwo+IGluZGV4IGZlMjYxNDRmMjcuLmI5OGRmMjBmYTUgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiArKysgYi9kcml2ZXJz
L3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IEBAIC02MjYsMTEgKzYyNiwxNyBAQCBzdGF0
aWMgaW50IGRhdGFfdHJhaW5pbmdfY2EoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwgdTMy
IGNoYW5uZWwsCj4gICAJdTMyIGksIHRtcDsKPiAgIAl1MzIgb2JzXzAsIG9ic18xLCBvYnNfMiwg
b2JzX2VyciA9IDA7Cj4gICAJdTMyIHJhbmsgPSBwYXJhbXMtPmNoW2NoYW5uZWxdLmNhcF9pbmZv
LnJhbms7Cj4gKwl1MzIgcmFua19tYXNrOwo+ICAgCj4gICAJLyogY2xlYXIgaW50ZXJydXB0LFBJ
XzE3NSBQSV9JTlRfQUNLOldSOjA6MTcgKi8KPiAgIAl3cml0ZWwoMHgwMDAwM2Y3YywgKCZkZW5h
bGlfcGlbMTc1XSkpOwo+ICAgCj4gLQlmb3IgKGkgPSAwOyBpIDwgcmFuazsgaSsrKSB7Cj4gKwly
YW5rX21hc2sgPSAocmFuayA9PSAxKSA/IDB4MSA6IDB4MzsKPiArCj4gKwlmb3IgKGkgPSAwOyBp
IDwgNDsgaSsrKSB7Cj4gKwkJaWYgKCEocmFua19tYXNrICYgKDEgPDwgaSkpKQo+ICsJCQljb250
aW51ZTsKPiArCj4gICAJCXNlbGVjdF9wZXJfY3NfdHJhaW5pbmdfaW5kZXgoY2hhbiwgaSk7Cj4g
ICAKPiAgIAkJLyogUElfMTAwIFBJX0NBTFZMX0VOOlJXOjg6MiAqLwoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
