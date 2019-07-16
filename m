Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7CF6A915
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:03:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M5EoScxj+QTV6lJtL/muuk/47dBiLjq51UhDRfEkeIA=; b=gbtAhjohdveivA9yNPYyycjZB
	Jt41P3PM1XanyqFs3jhfoWiTVKxy+VsfNDk3R2k1ARif6hVwd+o8Q4B0WoGRF3RhigVqHgvIvXYDK
	LaXM7LEczokCDTgVFAu0utMAe20G15JZ/BbM1/FDXLy8hpvH7pIG0sRwKKY/9G2fvB2ewYCOw64qt
	ZTUhxz+YKZcFomzKvF4GYPHyRR2xAeQN37hABq+i/JdgH6G/pvD7LpmQvZGrxddrRHFhOMF8r52Nd
	E6P83LFF6LeSlgmx5ry/bzvhba5IsAAb2OCaCZqyi4aF47pMC8wENMR5UJS814JKe7WoYmtv3v+Mi
	FhenuikGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN6q-0006JU-5m; Tue, 16 Jul 2019 13:03:08 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN6m-0006Iu-W7
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:03:06 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id CF1E11D2;
 Tue, 16 Jul 2019 21:03:01 +0800 (CST)
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
 P8795T139710320080640S1563282173176748_; 
 Tue, 16 Jul 2019 21:03:00 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7dcd70982930332c7ae8f55e09382d25>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 15/57] ram: rk3399: Add cs1_col enc macro
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-16-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <cfde61bf-4957-9c3b-1719-26d979600ea8@rock-chips.com>
Date: Tue, 16 Jul 2019 21:02:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-16-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_060305_234972_D13F442B 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.206 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBkcmFtIGNv
bmZpZyBtYWNybyBmb3IgaGFuZGxpbmcgY3MxIGNvbHVtbi4KPgo+IFNpZ25lZC1vZmYtYnk6IEph
Z2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlv
dU1pbiBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8
S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAg
YXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaCB8IDMgKysr
Cj4gICBkcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyAgICAgICAgICAgICAgIHwg
MSArCj4gICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmggYi9hcmNo
L2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oCj4gaW5kZXggOWNk
OWYzYjk2OS4uZjVjOTlmZWE4YiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9h
cmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oCj4gKysrIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20v
YXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaAo+IEBAIC0xMTMsNiArMTEzLDkgQEAgc3RydWN0
IHNkcmFtX2Jhc2VfcGFyYW1zIHsKPiAgIAkJCQkgICAgICg0ICsgMiAqIChjaCkpOyBcCj4gICAJ
CX0gd2hpbGUgKDApCj4gICAKPiArI2RlZmluZSBTWVNfUkVHX0NTMV9DT0xfU0hJRlQoY2gpCSgw
ICsgMiAqIChjaCkpCj4gKyNkZWZpbmUgU1lTX1JFR19FTkNfQ1MxX0NPTChuLCBjaCkgICAgICAo
KChuKSAtIDkpIDw8IFNZU19SRUdfQ1MxX0NPTF9TSElGVChjaCkpCj4gKwo+ICAgLyogR2V0IHNk
cmFtIHNpemUgZGVjb2RlIGZyb20gcmVnICovCj4gICBzaXplX3Qgcm9ja2NoaXBfc2RyYW1fc2l6
ZShwaHlzX2FkZHJfdCByZWcpOwo+ICAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tj
aGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMK
PiBpbmRleCAxMjIyZGEzOWMyLi4wZjI4MTYzZDZlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFt
L3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2Ry
YW1fcmszMzk5LmMKPiBAQCAtMTEwMSw2ICsxMTAxLDcgQEAgc3RhdGljIHZvaWQgZHJhbV9hbGxf
Y29uZmlnKHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICAJCWlmIChpbmZvLT5jYXBfaW5mby5j
czFfcm93KQo+ICAgCQkJU1lTX1JFR19FTkNfQ1MxX1JPVyhpbmZvLT5jYXBfaW5mby5jczFfcm93
LCBzeXNfcmVnMiwKPiAgIAkJCQkJICAgIHN5c19yZWczLCBjaGFubmVsKTsKPiArCQlzeXNfcmVn
MyB8PSBTWVNfUkVHX0VOQ19DUzFfQ09MKGluZm8tPmNhcF9pbmZvLmNvbCwgY2hhbm5lbCk7Cj4g
ICAKPiAgIAkJZGRyX21zY2hfcmVncyA9IGRyYW0tPmNoYW5bY2hhbm5lbF0ubXNjaDsKPiAgIAkJ
bm9jX3RpbWluZyA9ICZwYXJhbXMtPmNoW2NoYW5uZWxdLm5vY190aW1pbmdzOwoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
