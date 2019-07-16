Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD036A96F
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:19:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jTGqmj4ct0Vu0AC7l+g46EKEbW/pNjrp9noLknhqn8A=; b=U68H64phNV2pyU8xRe8QXantw
	LPihk23dgBKJIJzOvR2uaiU77VWWOS0d53fgw64eZ9WmXemxiswYyjB4LX6DDxgdNBaLmjANL+Gl4
	AqvKKztgsjFGJRM4tI6DTfZwy4QbnXHyDOfWK5L7Qtf734wUm5/+/y7GsQ3vnOUZRJTN4srQscnNk
	pn4meBArPuRx0GXi7o7iWWBSht5I/WHQhqRyRsEpB8lCU7wT992YAhRGHM/PXozzkulAAvx5aNPPb
	Q844iusT8l7Kcsr9FuHFN9wwyyx3XEND7soJRnSrwBDyDr372ThGEhG8KQF2qVUV3bYgkZnsij9LX
	D6fJc+bBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNMV-0004K1-W0; Tue, 16 Jul 2019 13:19:20 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNMT-0004JK-4F
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:19:18 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.134])
 by regular1.263xmail.com (Postfix) with ESMTP id 19CDD7E0;
 Tue, 16 Jul 2019 21:19:15 +0800 (CST)
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
 P10510T140412201199360S1563283146903007_; 
 Tue, 16 Jul 2019 21:19:15 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f332be1013dfe33521e3006690ef5c41>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 45/57] rockchip: rk3399: syscon: Add pmu support
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-46-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <e6cdfc69-4963-bf15-7eef-2930ea9cdffc@rock-chips.com>
Date: Tue, 16 Jul 2019 21:19:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-46-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061917_364826_B1B894B7 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.195 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBwbXUgY29t
cGF0aWJsZSB3aXRoIHJlbGV2YW50IFVfQk9PVF9EUklWRVIgZm9yIHJrMzM5OQo+IHZpYSBzeXNj
b24gcmszMzk5IGRyaXZlci4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFt
YXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlvdU1pbiBDaGVuIDxjeW1Acm9j
ay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNo
aXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgYXJjaC9hcm0vbWFjaC1yb2Nr
Y2hpcC9yazMzOTkvc3lzY29uX3JrMzM5OS5jIHwgOCArKysrKysrKwo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDggaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtcm9ja2No
aXAvcmszMzk5L3N5c2Nvbl9yazMzOTkuYyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMzk5
L3N5c2Nvbl9yazMzOTkuYwo+IGluZGV4IGE4YmI1YjExZTUuLjI1OWNhNDRkNjggMTAwNjQ0Cj4g
LS0tIGEvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMzOTkvc3lzY29uX3JrMzM5OS5jCj4gKysr
IGIvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMzOTkvc3lzY29uX3JrMzM5OS5jCj4gQEAgLTEz
LDYgKzEzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB1ZGV2aWNlX2lkIHJrMzM5OV9zeXNjb25f
aWRzW10gPSB7Cj4gICAJeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktcG11Z3JmIiwg
LmRhdGEgPSBST0NLQ0hJUF9TWVNDT05fUE1VR1JGIH0sCj4gICAJeyAuY29tcGF0aWJsZSA9ICJy
b2NrY2hpcCxyazMzOTktcG11c2dyZiIsIC5kYXRhID0gUk9DS0NISVBfU1lTQ09OX1BNVVNHUkYg
fSwKPiAgIAl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1jaWMiLCAuZGF0YSA9IFJP
Q0tDSElQX1NZU0NPTl9DSUMgfSwKPiArCXsgLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMzk5
LXBtdSIsIC5kYXRhID0gUk9DS0NISVBfU1lTQ09OX1BNVSB9LAo+ICAgCXsgfQo+ICAgfTsKPiAg
IAo+IEBAIC01OCw0ICs1OSwxMSBAQCBVX0JPT1RfRFJJVkVSKHJvY2tjaGlwX3JrMzM5OV9jaWMp
ID0gewo+ICAgCS5vZl9tYXRjaCA9IHJrMzM5OV9zeXNjb25faWRzICsgMywKPiAgIAkuYmluZCA9
IHJrMzM5OV9zeXNjb25fYmluZF9vZl9wbGF0ZGF0YSwKPiAgIH07Cj4gKwo+ICtVX0JPT1RfRFJJ
VkVSKHJvY2tjaGlwX3JrMzM5OV9wbXUpID0gewo+ICsJLm5hbWUgPSAicm9ja2NoaXBfcmszMzk5
X3BtdSIsCj4gKwkuaWQgPSBVQ0xBU1NfU1lTQ09OLAo+ICsJLm9mX21hdGNoID0gcmszMzk5X3N5
c2Nvbl9pZHMgKyA0LAo+ICsJLmJpbmQgPSByazMzOTlfc3lzY29uX2JpbmRfb2ZfcGxhdGRhdGEs
Cj4gK307Cj4gICAjZW5kaWYKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
