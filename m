Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B889BE93
	for <lists+linux-rockchip@lfdr.de>; Sat, 24 Aug 2019 17:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GtlotczkaGSrw50AI01g7jOyx/xKlGObTTkhwr9nO04=; b=GvPeQO2vTVFrEA
	tyZWtxTPzXgI0TAeIUbOE7Up4+0d/N4A55hisGbpyZ6iu788fQYp9R6IG+P0c4TGttqMCRrxrvEyU
	FSk2NXqcpn7WE6HrQtFdR4pt8oGefwXp6HgYb5x7Vd5BWBZqk/mhomuI8UuSKQk7A/TJmsy1bkL0Z
	KpB7Xn8lmoi1pDq9+b992ZJV5JEq8aSBcIz0d4sIvBSfdShTtLQuplDZ2j2peEaDUVejn8EgDIgPv
	RDSkK+HCKu2c1R6ds2Q9bhaWNdTRu0M9RnmtPj41Q9DcHGtsvsnKAEcOxh+4e4Y7/7vTazInH4dZS
	GzcF2czEZEan25tjb9Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Y6e-0005NV-36; Sat, 24 Aug 2019 15:37:32 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Y6Z-0005N7-Dq
 for linux-rockchip@lists.infradead.org; Sat, 24 Aug 2019 15:37:29 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id E152377EAE2; Sat, 24 Aug 2019 17:37:24 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Patrick Havelange <patrick.havelange@essensium.com>
Subject: [PATCH v3 0/6] pwm: ensure pwm_apply_state() doesn't modify the state
 argument
Date: Sat, 24 Aug 2019 17:37:01 +0200
Message-Id: <20190824153707.13746-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_083727_622933_7FD94A42 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-pwm@vger.kernel.org, kernel@pengutronix.de,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGVsbG8sCgp0aGlzIHNlcmllcyBldmVudHVhbGx5IGNoYW5nZXMgdGhlIHByb3RvdHlwZSBvZiBw
d21fYXBwbHlfc3RhdGUgdG8gdGFrZQphIGNvbnN0IHN0cnVjdCBwd21fc3RhdGUgKiwgc2VlIHRo
ZSBsYXN0IHBhdGNoIGZvciBhIHJhdGlvbmFsZS4KCkNoYW5nZXMgc2luY2UgdjIgYXBhcnQgZnJv
bSByZWJhc2luZyBhbmQgc28gY292ZXJpbmcgYSBmZXcgbW9yZSBkcml2ZXJzCmlzIG1haW5seSBh
ZGRyZXNzaW5nIHRoZSBjb25jZXJuIHRoYXQgYWZ0ZXIgc3RhdGUgd2FzIHJvdW5kZWQgYW5kCmFw
cGxpZWQgYXQgbGVhc3QgcHdtX2dldF9zdGF0ZSBzaG91bGQgcmV0dXJuIHRoZSByb3VuZGVkIHZh
bHVlcy4gU2VlCnBhdGNoIDIuCgpVd2UgS2xlaW5lLUvDtm5pZyAoNik6CiAgcHdtOiBpbnRyb2R1
Y2UgbG9jYWwgc3RydWN0IHB3bV9jaGlwIGluIHB3bV9hcHBseV9zdGF0ZSgpCiAgcHdtOiBsZXQg
cHdtX2dldF9zdGF0ZSgpIHJldHVybiB0aGUgbGFzdCBpbXBsZW1lbnRlZCBzdGF0ZQogIHB3bTog
cm9ja2NoaXA6IERvbid0IHVwZGF0ZSB0aGUgc3RhdGUgZm9yIHRoZSBjYWxsZXIgb2YKICAgIHB3
bV9hcHBseV9zdGF0ZSgpCiAgcHdtOiBzdW40aTogRG9uJ3QgdXBkYXRlIHRoZSBzdGF0ZSBmb3Ig
dGhlIGNhbGxlciBvZiBwd21fYXBwbHlfc3RhdGUoKQogIHB3bTogZnNsLWZ0bTogRG9uJ3QgdXBk
YXRlIHRoZSBzdGF0ZSBmb3IgdGhlIGNhbGxlciBvZgogICAgcHdtX2FwcGx5X3N0YXRlKCkKICBw
d206IGVuc3VyZSBwd21fYXBwbHlfc3RhdGUoKSBkb2Vzbid0IG1vZGlmeSB0aGUgc3RhdGUgYXJn
dW1lbnQKCiBkcml2ZXJzL3B3bS9jb3JlLmMgICAgICAgICAgICB8IDM5ICsrKysrKysrKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL3B3bS9wd20tYXRtZWwtaGxjZGMuYyB8ICAy
ICstCiBkcml2ZXJzL3B3bS9wd20tYXRtZWwuYyAgICAgICB8ICAyICstCiBkcml2ZXJzL3B3bS9w
d20tYmNtLWlwcm9jLmMgICB8ICAyICstCiBkcml2ZXJzL3B3bS9wd20tY3Jvcy1lYy5jICAgICB8
ICAyICstCiBkcml2ZXJzL3B3bS9wd20tZnNsLWZ0bS5jICAgICB8ICA4ICsrLS0tLS0KIGRyaXZl
cnMvcHdtL3B3bS1oaWJ2dC5jICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvcHdtL3B3bS1pbXgtdHBt
LmMgICAgIHwgIDQgKystLQogZHJpdmVycy9wd20vcHdtLWlteDI3LmMgICAgICAgfCAgMiArLQog
ZHJpdmVycy9wd20vcHdtLWp6NDc0MC5jICAgICAgfCAgMiArLQogZHJpdmVycy9wd20vcHdtLWxw
c3MuYyAgICAgICAgfCAgMiArLQogZHJpdmVycy9wd20vcHdtLW1lc29uLmMgICAgICAgfCAgNCAr
Ky0tCiBkcml2ZXJzL3B3bS9wd20tcmNhci5jICAgICAgICB8ICAyICstCiBkcml2ZXJzL3B3bS9w
d20tcm9ja2NoaXAuYyAgICB8IDEwICsrLS0tLS0tLQogZHJpdmVycy9wd20vcHdtLXNpZml2ZS5j
ICAgICAgfCAgMiArLQogZHJpdmVycy9wd20vcHdtLXN0bTMyLWxwLmMgICAgfCAgMiArLQogZHJp
dmVycy9wd20vcHdtLXN0bTMyLmMgICAgICAgfCAgNCArKy0tCiBkcml2ZXJzL3B3bS9wd20tc3Vu
NGkuYyAgICAgICB8IDEwICsrLS0tLS0tLQogZHJpdmVycy9wd20vcHdtLXp4LmMgICAgICAgICAg
fCAgMiArLQogaW5jbHVkZS9saW51eC9wd20uaCAgICAgICAgICAgfCAgNCArKy0tCiAyMCBmaWxl
cyBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspLCA1OCBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
