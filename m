Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F30A6A93F
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ER6jgZfFZpPU39U9WIdTd5TCe0CDKlquEpHkhy4sQDI=; b=ZRw38RXb0Hf6QDKkfYyQEBb7p
	fDytQPeY4tItwPwyvCi/DnddsOZZVNcx7QvCt04vY0NUQNzPVlVrJVHkYe3fOwQODamX5NeWvwe96
	QoKEORB9Ev0wxI9KHc7+2k1ZPeZ7aGgQE/6IuVSN1e3vsKgLoeypFTnlYADBx9xwZSZIKcTxsm1hS
	ERfBky1mFTsLtl7hK9zOjLYKKjGBke5+jjBf6ZICYDzXSAlhbbYoRU/qBt2/8Fr8X/3sR0ecDkHJB
	s5IuVNZHu3eTS+ZI3fpCcjfgbVnRhPqQPKpuogwGsiaGH8WPfo6jxLTMB573vYDq8l2i199z56CqQ
	Qmqc4o0YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNEW-0000yo-FN; Tue, 16 Jul 2019 13:11:04 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNET-0000yV-TL
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:11:03 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 0D5F0247;
 Tue, 16 Jul 2019 21:11:00 +0800 (CST)
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
 P29801T140086366684928S1563282650088690_; 
 Tue, 16 Jul 2019 21:10:57 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c0823fcafbdcacccdec25d8cc073ed4f>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 20/57] ram: rockchip: Kconfig: Add RK3399 LPDDR4 entry
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-21-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <682a821f-797a-35f2-c9fb-4286e991200f@rock-chips.com>
Date: Tue, 16 Jul 2019 21:10:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-21-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061102_141918_75E023CC 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IFN1cHBvcnRpbmcg
TFBERFI0IGNvZGUgc3VwcG9ydCBpbiBSSzMzOTkgd291bGQgaW5jcmVhc2VzCj4gdGhlIHNpemUg
b2YgU1BML1RQTC4KPgo+IFNvIGFkZCBrY29uZmlnIGVudHJ5IGZvciBSSzMzOTkgTFBERFI0IGNv
ZGUgc28tdGhhdAo+IHRoZSBib2FyZHMgaGF2ZSBMUEREUjQgY2FuIGVuYWJsZSB0aGVtIHZpYSBk
ZWZjb25maWcuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29s
dXRpb25zLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxLZXZlci55YW5nQHJvY2stY2hp
cHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4gLS0tCj4gICBkcml2ZXJzL3JhbS9yb2NrY2hp
cC9LY29uZmlnIHwgNyArKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCsp
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMv
cmFtL3JvY2tjaGlwL0tjb25maWcKPiBpbmRleCAxNTFmZmI2ODRkLi40ZjI3NGUwMWIzIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL0tjb25maWcKPiArKysgYi9kcml2ZXJzL3Jh
bS9yb2NrY2hpcC9LY29uZmlnCj4gQEAgLTIzLDQgKzIzLDExIEBAIGNvbmZpZyBSQU1fUkszMzk5
Cj4gICAJICBUaGlzIGVuYWJsZXMgcmFtIGRyaXZlcnMgc3VwcG9ydCBmb3IgdGhlIHBsYXRmb3Jt
cyBiYXNlZCBvbgo+ICAgCSAgUm9ja2NoaXAgUkszMzk5IFNvQy4KPiAgIAo+ICtjb25maWcgUkFN
X1JLMzM5OV9MUEREUjQKPiArCWJvb2wgIkxQRERSNCBzdXBwb3J0IGZvciBSb2NrY2hpcCBSSzMz
OTkiCj4gKwlkZXBlbmRzIG9uIFJBTV9SSzMzOTkKPiArCWhlbHAKPiArCSAgVGhpcyBlbmFibGVz
IExQRERSNCBzZHJhbSBjb2RlIHN1cHBvcnQgZm9yIHRoZSBwbGF0Zm9ybXMgYmFzZWQKPiArCSAg
b24gUm9ja2NoaXAgUkszMzk5IFNvQy4KPiArCj4gICBlbmRpZiAjIFJBTV9ST0NLQ0hJUAoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
