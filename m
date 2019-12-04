Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4529112681
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Dec 2019 10:07:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6ewiOw3BpUQDqP5BfPle6RdGvfBfTWDE4FYusJoXPEQ=; b=h8rD9nI9G5OIW2
	xyrHjQWjOcSIs7LYfGftqByApBZjetCsL7wbIaxuZq8IDFP/ZOtfNhdFbUChv2C/8twGMTsLVP/VJ
	S/MyNUAhYAMyfOfqCv+CMLb1scFoQQJ4lizbKJjR85zHqGAEcFmaP7jFqzu39hb9fo6Q4P0FK2zML
	fe18PU4G4wZgwXcnk0uEyP7buxVmzDyEO1C+z08ekzFr8ZqQwMxNwEYx58agSoVh9BCXWF0ysUs1/
	1OtOSerDRvxhsm11Qu1sf1f7YVYEE6EH5CTPk+MDDv9p0UbKQgNBPR2q8x9t5qfi7g9wy07XWNsy1
	1HvtrJHZGzJGPHcVviHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQcy-00081p-1B; Wed, 04 Dec 2019 09:07:20 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQcu-0007v1-2e
 for linux-rockchip@lists.infradead.org; Wed, 04 Dec 2019 09:07:17 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 3C25D200010;
 Wed,  4 Dec 2019 09:07:12 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko Stuebner <heiko@sntech.de>,
	<linux-rockchip@lists.infradead.org>
Subject: [PATCH] MAINTAINERS: rockchip: Track more files
Date: Wed,  4 Dec 2019 10:07:10 +0100
Message-Id: <20191204090710.11646-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_010716_252630_5BC1A8F3 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-kernel@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VGhlIGN1cnJlbnQgbGlzdCBtaXNzZXMgYSBsb3Qgb2YgZHJpdmVycyBub3QgcHJlZml4ZWQgb3Ig
c3VmZml4ZWQgYnkKInJvY2tjaGlwIi4gRm9yIGluc3RhbmNlLCB0aGVyZSBhcmUgcGxlbnR5IGRy
aXZlcnMgY2FsbGVkIHJrODA4IGFuZApyazgwNSB3aGljaCBhcmUgY3VycmVudGx5IG5vdCB0cmFj
a2VkIChjbGssIHJlZ3VsYXRvciwgcGluY3RybCwgUlRDLApNRkQsIGluY2x1ZGVzLCBiaW5kaW5n
cykuIEFkZCB0aGVtIHRvIHRoZSBsaXN0IHVuZGVyIHRoZSBSb2NrY2hpcAplbnRyeS4KClNpZ25l
ZC1vZmYtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+Ci0tLQoK
SGkgSGVpa28sCgpZb3UgYXJlIHJpZ2h0IHdlIHNob3VsZCB0cnkgdG8gY2hlY2sgbW9yZSBvZnRl
biB5b3VyIHRyZWUuIEFsc28sIGhlcmUKaXMgYSBwYXRjaCBzbyB0aGF0IHlvdSBhcmUgQ2MnZWQg
Zm9yIGFsbCBSb2NrY2hpcCByZWxhdGVkIHBhdGNoZXMKYmVjYXVzZSB0aGUgY3VycmVudCBsaXN0
IGlzIG5vdCBleGhhdXN0aXZlIGF0IGFsbCAobm90IHN1cmUgaXQgaXMKdm9sdW50YXJ5IG9yIG5v
dCB0aG91Z2gpLgoKQ2hlZXJzLApNaXF1w6hsCgogTUFJTlRBSU5FUlMgfCA0ICsrKysKIDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01B
SU5UQUlORVJTCmluZGV4IGNiYTEwOTU1NDdmZC4uYTk1NjRlNmNiODcyIDEwMDY0NAotLS0gYS9N
QUlOVEFJTkVSUworKysgYi9NQUlOVEFJTkVSUwpAQCAtMjE5OCwxMiArMjE5OCwxNiBAQCBMOgls
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCiBUOglnaXQgZ2l0Oi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L21taW5kL2xpbnV4LXJvY2tjaGlwLmdpdAog
UzoJTWFpbnRhaW5lZAogRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2kyYy9p
MmMtcmszeC50eHQKK0Y6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy8qLypyazgw
KgogRjoJYXJjaC9hcm0vYm9vdC9kdHMvcmszKgogRjoJYXJjaC9hcm0vYm9vdC9kdHMvcnYxMTA4
KgogRjoJYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC8KK0Y6CWluY2x1ZGUvKi8qL3JrODA4LmgKK0Y6
CWluY2x1ZGUvKi8qLyovcms4MDguaAogRjoJZHJpdmVycy9jbGsvcm9ja2NoaXAvCiBGOglkcml2
ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYwogRjoJZHJpdmVycy8qLypyb2NrY2hpcCoKK0Y6CWRy
aXZlcnMvKi8qcms4MCoKIEY6CWRyaXZlcnMvKi8qLypyb2NrY2hpcCoKIEY6CXNvdW5kL3NvYy9y
b2NrY2hpcC8KIE46CXJvY2tjaGlwCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
