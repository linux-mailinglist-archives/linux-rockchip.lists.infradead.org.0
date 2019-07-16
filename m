Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5DF6A31D
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yZD/LROFYKgyjVNCp/2+2dpqJc81b0cyFcm/K5uIKrc=; b=MvnpgXzfLZr2sD8n/4skYriTG
	IP/8wO821Y4kxTTL4zWRiXINnpsRbjjfb0IyWKs9ozTMExLdGPuxozmUlledRNY41UqHFb3IvV0y0
	jkekAWStH6ianJzaMzuFh4i6EKtNa4drmiu3UHTWMEw6GuFsO9W7pyf2EVfJz02rMjkCipvyHAae9
	j5JaVb0MC30VIRP+UJPkPLCZNiXI8OGCdu9sAH1QSHYABrVNtjVfrSZGi2H9w4qwo0AS43Uy/wm+m
	Dv1zYsCAOkhFBi9fHAbCKJ3svg2iWyAesmeug0VMDE7A/TF3/9JNxzVZqstYkL2Y3e6jcNtflJlCr
	rHOXu4wSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI5r-0006tn-N6; Tue, 16 Jul 2019 07:41:47 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI5m-0006t4-Qt
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:41:44 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.97])
 by regular1.263xmail.com (Postfix) with ESMTP id 32FE32A0;
 Tue, 16 Jul 2019 15:41:41 +0800 (CST)
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
 P14804T139844114175744S1563262899385583_; 
 Tue, 16 Jul 2019 15:41:40 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <45854ad4aa0826d8a95c1867e279110d>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 09/18] debug_uart: Add printdec
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-10-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <0a7ecb8f-5d5f-568e-eea0-964f6d46e165@rock-chips.com>
Date: Tue, 16 Jul 2019 15:41:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-10-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_004143_043731_F03C06BE 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBwcmludGRl
YywgdGhpcyB3b3VsZCBoZWxwIHRvIHByaW50IGFuCj4gb3V0cHV0IGEgZGVjaW1hbGlzbSB2YWx1
ZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMu
Y29tPgo+IFNpZ25lZC1vZmYtYnk6IFlvdU1pbiBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpS
ZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5r
cywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgaW5jbHVkZS9kZWJ1Z191YXJ0LmggfCAxOSArKysrKysr
KysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQo+Cj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvZGVidWdfdWFydC5oIGIvaW5jbHVkZS9kZWJ1Z191YXJ0LmgKPiBp
bmRleCAzNGU4YjJmYzgxLi5jZDcwYWUxYTA0IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvZGVidWdf
dWFydC5oCj4gKysrIGIvaW5jbHVkZS9kZWJ1Z191YXJ0LmgKPiBAQCAtMTA0LDYgKzEwNCwxMyBA
QCB2b2lkIHByaW50aGV4NCh1aW50IHZhbHVlKTsKPiAgICAqLwo+ICAgdm9pZCBwcmludGhleDgo
dWludCB2YWx1ZSk7Cj4gICAKPiArLyoqCj4gKyAqIHByaW50ZGVjKCkgLSBPdXRwdXQgYSBkZWNp
bWFsaXNtIHZhbHVlCj4gKyAqCj4gKyAqIEB2YWx1ZToJVmFsdWUgdG8gb3V0cHV0Cj4gKyAqLwo+
ICt2b2lkIHByaW50ZGVjKHVpbnQgdmFsdWUpOwo+ICsKPiAgICNpZmRlZiBDT05GSUdfREVCVUdf
VUFSVF9BTk5PVU5DRQo+ICAgI2RlZmluZSBfREVCVUdfVUFSVF9BTk5PVU5DRQlwcmludGFzY2lp
KCI8ZGVidWdfdWFydD4gIik7Cj4gICAjZWxzZQo+IEBAIC0xNzAsNiArMTc3LDE4IEBAIHZvaWQg
cHJpbnRoZXg4KHVpbnQgdmFsdWUpOwo+ICAgCXsgXAo+ICAgCQlwcmludGhleCh2YWx1ZSwgOCk7
IFwKPiAgIAl9IFwKPiArXAo+ICsJdm9pZCBwcmludGRlYyh1aW50IHZhbHVlKSBcCj4gKwl7IFwK
PiArCQlpZiAodmFsdWUgPiAxMCkgeyBcCj4gKwkJCXByaW50ZGVjKHZhbHVlIC8gMTApOyBcCj4g
KwkJCXZhbHVlICU9IDEwOyBcCj4gKwkJfSBlbHNlIGlmICh2YWx1ZSA9PSAxMCkgeyBcCj4gKwkJ
CV9kZWJ1Z191YXJ0X3B1dGMoJzEnKTsgXAo+ICsJCQl2YWx1ZSA9IDA7IFwKPiArCQl9IFwKPiAr
CQlfZGVidWdfdWFydF9wdXRjKCcwJyArIHZhbHVlKTsgXAo+ICsJfSBcCj4gICBcCj4gICAJdm9p
ZCBkZWJ1Z191YXJ0X2luaXQodm9pZCkgXAo+ICAgCXsgXAoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
