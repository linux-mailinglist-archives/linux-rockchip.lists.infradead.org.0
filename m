Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6276A985
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GVMSZ7Iwix/f6gV0YVibDukjQB0rWAn08Dg4ONrXnsE=; b=Q1pnHZslLZvl11CL2y3OOT3Hj
	BKVu7ck9DKTuBCQxCzZjWcNi7EoFuQmGUkZOMZ7uynZnd6tkxEfxbw2cHPL+kRY+vdKpNUIg/0CfX
	P3Zcx4VFpogPAYXkbDiAJ6GA4eTSYswMBC/y9rsIH3ueboHr4Txu0RJcZAgyMd/ja1nch/+j/rRFU
	dWPClLusN+c2NCbSVAOnY/f/xDde5jkG73MVHfVyPyd2GPT8nr03vOKx7GAgzGqISx9t4s9l8PqbR
	tNsB3duwag3k1w1NdRPwD9yKnnPDHp9kCBAht2Up28sH2ouWFWM135buPOWHcHtex2IibdjqQ/C5G
	GQ4NcRWKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNPV-0006F8-JZ; Tue, 16 Jul 2019 13:22:25 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNPS-0006Ed-6v
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:22:23 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id 28F14713;
 Tue, 16 Jul 2019 21:22:20 +0800 (CST)
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
 P8795T139710701754112S1563283330492509_; 
 Tue, 16 Jul 2019 21:22:18 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f3218a7e54d64f49527b2338365a4aa0>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 56/57] rockchip: dts: rk3399: rockpro64: Use LPDDR4-100
 dtsi
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-57-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <578c5a1e-604e-ea11-1476-6c083f2d665b@rock-chips.com>
Date: Tue, 16 Jul 2019 21:22:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-57-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_062222_457032_F6814982 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IFVzZSBMUEREUjQt
MTAwIHNkcmFtIHRpbWluZ3MgZHRzaSBmb3IgUm9ja3BybzY0IGJvYXJkLgo+Cj4gQWxsIHRoZXNl
IHRpbWluZ3MgYXJlIHByb2Nlc3NlZCBkdXJpbmcgVFBMIHN0YWdlIG9mIHJvY2twcm82NCBib2Fy
ZCwKPiBib290Y2hhaW4uIFRoaXMgbWFrZSBUUEwgd291bGQgcmVwbGFjZSByb2NrY2hpcCBpbiBo
b3VzZSBya2JpbiBpbgo+IGN1cnJlbnQgYm9vdGNoYWluLgo+Cj4gQm9vdGNoYWluIGFmdGVyIGFu
ZCBiZWZvcmUgdGhpcyBjaGFuZ2U6Cj4KPiAgICAgVFBMIC0+IFNQTCAtPiBVLUJvb3QgcHJvcGVy
Cj4KPiAgIHJrYmluIC0+IFNQTCAtPiBVLUJvb3QgcHJvcGVyCj4KPiBTaWduZWQtb2ZmLWJ5OiBK
YWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KClJldmlld2VkLWJ5OiBLZXZl
ciBZYW5nIDxLZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4g
LS0tCj4gICBhcmNoL2FybS9kdHMvcmszMzk5LXJvY2twcm82NC11LWJvb3QuZHRzaSB8IDEgKwo+
ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vZHRzL3JrMzM5OS1yb2NrcHJvNjQtdS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMvcmszMzk5
LXJvY2twcm82NC11LWJvb3QuZHRzaQo+IGluZGV4IDUwYjBjYTBkZjUuLmY3ZjI2ZDU4NGYgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9hcm0vZHRzL3JrMzM5OS1yb2NrcHJvNjQtdS1ib290LmR0c2kKPiAr
KysgYi9hcmNoL2FybS9kdHMvcmszMzk5LXJvY2twcm82NC11LWJvb3QuZHRzaQo+IEBAIC00LDYg
KzQsNyBAQAo+ICAgICovCj4gICAKPiAgICNpbmNsdWRlICJyazMzOTktdS1ib290LmR0c2kiCj4g
KyNpbmNsdWRlICJyazMzOTktc2RyYW0tbHBkZHI0LTEwMC5kdHNpIgo+ICAgCj4gICAmdmRkX2xv
ZyB7Cj4gICAJcmVndWxhdG9yLWluaXQtbWljcm92b2x0ID0gPDk1MDAwMD47CgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
