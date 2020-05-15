Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEAC1D4371
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 04:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qxVHHw2itCAGfCs+zwRjzPOPxXW9mEaulHsC/xAdAjg=; b=ruTSkahs9OUA1afbePUYSXS/X
	7trJ9OZBjLpv7CJ6KzPFPXA8+RFQIprabJVCCs44L1U8O25pZkkAO/JrTb7/mLKMZqL2V8ktZX8+p
	KQXAvbuTwf/UMGQ/qBUeGwU6SY2GkjBac0bCjASCxxQrLvnq4Xgj3CwLW+bTQIa/Q77TdMaW6L+aQ
	1HS4wqUXiS59vQMeOeIgR8mq9hppvSsU/lFqU+tERc2mtl/zwLJ85RFE20XJfHmetqsVUSv9EbWt5
	KHB6umVC2QmBMdvrIv1qz/a/bRyHXvWDLzdVv9Id39mtArn1FBkRrHLY1Weyb1koag9z8BlHLU51q
	EWdkcFlRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZPtK-0007M4-Ch; Fri, 15 May 2020 02:16:02 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZPtG-0007Jq-D3
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 02:15:59 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 526D41079;
 Fri, 15 May 2020 10:15:54 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P15413T140446398347008S1589508942695597_; 
 Fri, 15 May 2020 10:15:54 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c0b4480b9f8a6dedecfd89aba1ee8974>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: wmc@rock-chips.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v5 03/16] clk: rk3399: Enable/Disable TCPHY clocks
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, marex@denx.de,
 bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com,
 klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com,
 sjg@chromium.org
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
 <20200513071344.5430-4-frank.wang@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <07857210-2dd4-a741-c2b8-1b2e223b2f5e@rock-chips.com>
Date: Fri, 15 May 2020 10:15:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200513071344.5430-4-frank.wang@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_191558_665883_E17716D8 
X-CRM114-Status: GOOD (  10.52  )
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
Cc: jianing.ren@rock-chips.com, marek.belisko@gmail.com, wmc@rock-chips.com,
 u-boot@lists.denx.de, william.wu@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 chenjh@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8xMyDkuIvljYgzOjEzLCBGcmFuayBXYW5nIHdyb3RlOgo+IEZyb206IEphZ2Fu
IFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+Cj4gRW5hYmxlL0Rpc2FibGUgVENQ
SFkgY2xvY2sgZm9yIHJrMzM5OSBwbGF0Zm9ybS4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRl
a2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8
a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICAgZHJp
dmVycy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jIHwgMjQgKysrKysrKysrKysrKysrKysrKysr
KysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsa19yazMzOTkuYyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlw
L2Nsa19yazMzOTkuYwo+IGluZGV4IDk4ZmM2YTMyNjcuLjA2MjMyZjE5MDMgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVycy9jbGsv
cm9ja2NoaXAvY2xrX3JrMzM5OS5jCj4gQEAgLTExNDQsNiArMTE0NCwxOCBAQCBzdGF0aWMgaW50
IHJrMzM5OV9jbGtfZW5hYmxlKHN0cnVjdCBjbGsgKmNsaykKPiAgIAljYXNlIEhDTEtfSE9TVDFf
QVJCOgo+ICAgCQlya19jbHJyZWcoJnByaXYtPmNydS0+Y2xrc2VsX2NvblsyMF0sIEJJVCg4KSk7
Cj4gICAJCWJyZWFrOwo+ICsJY2FzZSBTQ0xLX1VQSFkwX1RDUERQSFlfUkVGOgo+ICsJCXJrX2Ns
cnJlZygmcHJpdi0+Y3J1LT5jbGtnYXRlX2NvblsxM10sIEJJVCg0KSk7Cj4gKwkJYnJlYWs7Cj4g
KwljYXNlIFNDTEtfVVBIWTBfVENQRENPUkU6Cj4gKwkJcmtfY2xycmVnKCZwcml2LT5jcnUtPmNs
a2dhdGVfY29uWzEzXSwgQklUKDUpKTsKPiArCQlicmVhazsKPiArCWNhc2UgU0NMS19VUEhZMV9U
Q1BEUEhZX1JFRjoKPiArCQlya19jbHJyZWcoJnByaXYtPmNydS0+Y2xrZ2F0ZV9jb25bMTNdLCBC
SVQoNikpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBTQ0xLX1VQSFkxX1RDUERDT1JFOgo+ICsJCXJr
X2NscnJlZygmcHJpdi0+Y3J1LT5jbGtnYXRlX2NvblsxM10sIEJJVCg3KSk7Cj4gKwkJYnJlYWs7
Cj4gICAJY2FzZSBTQ0xLX1BDSUVQSFlfUkVGOgo+ICAgCQlya19jbHJyZWcoJnByaXYtPmNydS0+
Y2xrc2VsX2NvblsxOF0sIEJJVCgxMCkpOwo+ICAgCQlicmVhazsKPiBAQCAtMTIyNiw2ICsxMjM4
LDE4IEBAIHN0YXRpYyBpbnQgcmszMzk5X2Nsa19kaXNhYmxlKHN0cnVjdCBjbGsgKmNsaykKPiAg
IAljYXNlIEhDTEtfSE9TVDFfQVJCOgo+ICAgCQlya19zZXRyZWcoJnByaXYtPmNydS0+Y2xrc2Vs
X2NvblsyMF0sIEJJVCg4KSk7Cj4gICAJCWJyZWFrOwo+ICsJY2FzZSBTQ0xLX1VQSFkwX1RDUERQ
SFlfUkVGOgo+ICsJCXJrX3NldHJlZygmcHJpdi0+Y3J1LT5jbGtnYXRlX2NvblsxM10sIEJJVCg0
KSk7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIFNDTEtfVVBIWTBfVENQRENPUkU6Cj4gKwkJcmtfc2V0
cmVnKCZwcml2LT5jcnUtPmNsa2dhdGVfY29uWzEzXSwgQklUKDUpKTsKPiArCQlicmVhazsKPiAr
CWNhc2UgU0NMS19VUEhZMV9UQ1BEUEhZX1JFRjoKPiArCQlya19zZXRyZWcoJnByaXYtPmNydS0+
Y2xrZ2F0ZV9jb25bMTNdLCBCSVQoNikpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBTQ0xLX1VQSFkx
X1RDUERDT1JFOgo+ICsJCXJrX3NldHJlZygmcHJpdi0+Y3J1LT5jbGtnYXRlX2NvblsxM10sIEJJ
VCg3KSk7Cj4gKwkJYnJlYWs7Cj4gICAJY2FzZSBTQ0xLX1BDSUVQSFlfUkVGOgo+ICAgCQlya19j
bHJyZWcoJnByaXYtPmNydS0+Y2xrc2VsX2NvblsxOF0sIEJJVCgxMCkpOwo+ICAgCQlicmVhazsK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
