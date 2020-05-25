Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FB71E04DA
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 May 2020 04:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=chPw9BzwVt21ay6xzVrSw1ux/uTuANmjsrsfbTEcaS8=; b=WCYS7EHQoE1whtYNZMTF+sNz9
	jw/QnjR/1bAAcSP9g9HthASti8mwvf2Ql0fJKmkUUviq2w45MQPjJppdzjkqT13cH0oGCBQzSoiOY
	HaivrTFhFT09qW0pk+P7Zss8uNirFCR8ZOCdTeSVUFewT67LkjsGl0sQNYg3Z1rx68sj8GzWDwFES
	YiTS2WubvJkFmOo/h8s46e1tVQ/btaMcwtc430SaPzlM9WbC01eXubE3Y5dKDnRxH/wjaIVhSlQ0T
	DttuK/+eoK48zNud3dURFBYLT0iCAdIBei1nEmRuti7/q1h801V2xCx+nXOD9PNLIJKj64uXdt+K+
	kVxMBn7rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd3Aq-00042V-Kb; Mon, 25 May 2020 02:49:08 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd3Ao-00040Q-2d
 for linux-rockchip@lists.infradead.org; Mon, 25 May 2020 02:49:07 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 52297153A;
 Mon, 25 May 2020 10:48:58 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.66] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31250T139913079990016S1590374937618567_; 
 Mon, 25 May 2020 10:48:58 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <78df4f463153c87a930e55c838a9427c>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH] clk: rk3399: Fix eMMC get_clk reg offset
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200524164315.124527-1-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <42c92007-a638-7ab6-bd2b-133747af4dda@rock-chips.com>
Date: Mon, 25 May 2020 10:48:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200524164315.124527-1-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_194906_334340_7BE11260 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.150.70.196 listed in wl.mailspike.net]
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, sunil@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8yNSDkuIrljYgxMjo0MywgSmFnYW4gVGVraSB3cm90ZToKPiBBY3R1YWwgZU1N
QyBnZXRfY2xrIHJlZ2lzdGVyIGlzIGNsa3NlbF9jb24yMiBpbnN0ZWFkIG9mCj4gY2xrc2VsX2Nv
bjIxLgo+Cj4gRml4IGl0Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1h
cnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0By
b2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVycy9jbGsvcm9j
a2NoaXAvY2xrX3JrMzM5OS5jIHwgMiArLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvcm9ja2NoaXAv
Y2xrX3JrMzM5OS5jIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jCj4gaW5kZXgg
NmE3ODgzNzYxOS4uNGNhZjNiNTYxNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Nsay9yb2NrY2hp
cC9jbGtfcmszMzk5LmMKPiArKysgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtfcmszMzk5LmMK
PiBAQCAtNzI4LDcgKzcyOCw3IEBAIHN0YXRpYyB1bG9uZyByazMzOTlfbW1jX2dldF9jbGsoc3Ry
dWN0IHJvY2tjaGlwX2NydSAqY3J1LCB1aW50IGNsa19pZCkKPiAgIAkJZGl2ID0gMjsKPiAgIAkJ
YnJlYWs7Cj4gICAJY2FzZSBTQ0xLX0VNTUM6Cj4gLQkJY29uID0gcmVhZGwoJmNydS0+Y2xrc2Vs
X2NvblsyMV0pOwo+ICsJCWNvbiA9IHJlYWRsKCZjcnUtPmNsa3NlbF9jb25bMjJdKTsKPiAgIAkJ
ZGl2ID0gMTsKPiAgIAkJYnJlYWs7Cj4gICAJZGVmYXVsdDoKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
