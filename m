Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C406A2FC
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FoHjWvcOhKl4LFRG39Lg/ZVza0zUYVh1pAj/D5QW/rU=; b=rJbWW4T0qJFVwU0WC965SQBkr
	O5gQ4ENaJmWw219c96kmhe3Pn82ju3V+6EDeEp6SDLYzqofq8ZtBn75ag0hT83Hl78qZ4ajHOiuI5
	ItvQfVYZGahiFAveoRy/1B4+HtZA0yIO8uwycrhQ2T7HwOY4FnKO958zSi9po/wNWV/lOKxBtPzSd
	j9bSVe/ZsaWAb076CyBNH1B5jd0jOy48BDY6eCRyR0yE1LXZwURl+HR/Dhid7dloa2MOwontZuaLC
	X5oS7FU82fYLYMPbB1BYgYAbxvtJPnxpHOpJPNyovwqQmzVxGIdXSKTX/c9B8gd6cK7zg4N6W+7HU
	XHDdkzsuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHyA-0003Lp-0X; Tue, 16 Jul 2019 07:33:50 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHy6-0003L9-EX
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:33:47 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id 29CCD2B8;
 Tue, 16 Jul 2019 15:33:44 +0800 (CST)
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
 P41746T139672195925760S1563262421607277_; 
 Tue, 16 Jul 2019 15:33:43 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a5d990394141e69116520c82715a65fa>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 11/15] ram: rk3399:
 s/rk3399_base_params/sdram_base_params
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
 <20190715182110.21336-12-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <2c4d9c31-9547-8a3c-2bf9-a127c0ba3a5e@rock-chips.com>
Date: Tue, 16 Jul 2019 15:33:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182110.21336-12-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_003346_669350_1CD6200D 
X-CRM114-Status: GOOD (  12.62  )
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjIxLCBKYWdhbiBUZWtpIHdyb3RlOgo+IE1vc3Qgb2YgdGhl
IGRkciBwYXJhbWV0ZXJzIGFyZSBjb21tb24gaW4gcmszMzk5X2Jhc2VfcGFyYW1zCj4gc3RydWN0
dXJlIGFuZCB3aGljaCB3b3VsZCByZXVzZSBpdCBpbiBhbm90aGVyIGNvbnRyb2xsZXIgbGlrZQo+
IHB4MzAgaW4gZnV0dXJlLgo+Cj4gU28sIHJlbmFtZSB0aGUgc3RydWN0dXJlIGZyb20gcmszMzk5
X2Jhc2VfcGFyYW1zIGludG8KPiBzZHJhbV9iYXNlX3BhcmFtcy4KPgo+IFNpZ25lZC1vZmYtYnk6
IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IFlvdU1pbiBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFu
ZyA8S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+
ICAgYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9yazMzOTkuaCB8IDQg
KystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
Pgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFt
X3JrMzM5OS5oIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9yazMz
OTkuaAo+IGluZGV4IDY4MzA5M2Q0Y2EuLjU2MTRiOTRlY2IgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9h
cm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9yazMzOTkuaAo+ICsrKyBiL2FyY2gv
YXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fcmszMzk5LmgKPiBAQCAtOTYsNyAr
OTYsNyBAQCBzdHJ1Y3QgcmszMzk5X3NkcmFtX2NoYW5uZWwgewo+ICAgCXN0cnVjdCByazMzOTlf
bXNjaF90aW1pbmdzIG5vY190aW1pbmdzOwo+ICAgfTsKPiAgIAo+IC1zdHJ1Y3QgcmszMzk5X2Jh
c2VfcGFyYW1zIHsKPiArc3RydWN0IHNkcmFtX2Jhc2VfcGFyYW1zIHsKPiAgIAl1bnNpZ25lZCBp
bnQgZGRyX2ZyZXE7Cj4gICAJdW5zaWduZWQgaW50IGRyYW10eXBlOwo+ICAgCXVuc2lnbmVkIGlu
dCBudW1fY2hhbm5lbHM7Cj4gQEAgLTEwNiw3ICsxMDYsNyBAQCBzdHJ1Y3QgcmszMzk5X2Jhc2Vf
cGFyYW1zIHsKPiAgIAo+ICAgc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJhbXMgewo+ICAgCXN0cnVj
dCByazMzOTlfc2RyYW1fY2hhbm5lbCBjaFsyXTsKPiAtCXN0cnVjdCByazMzOTlfYmFzZV9wYXJh
bXMgYmFzZTsKPiArCXN0cnVjdCBzZHJhbV9iYXNlX3BhcmFtcyBiYXNlOwo+ICAgCXN0cnVjdCBy
azMzOTlfZGRyX3BjdGxfcmVncyBwY3RsX3JlZ3M7Cj4gICAJc3RydWN0IHJrMzM5OV9kZHJfcGlf
cmVncyBwaV9yZWdzOwo+ICAgCXN0cnVjdCByazMzOTlfZGRyX3B1YmxfcmVncyBwaHlfcmVnczsK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
