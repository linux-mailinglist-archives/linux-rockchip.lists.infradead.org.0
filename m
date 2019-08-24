Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6CB9BE97
	for <lists+linux-rockchip@lfdr.de>; Sat, 24 Aug 2019 17:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4clhCykBi4qgb+SqHMf5gKl9EIg77f362WQgdKDXtE=; b=PN2uefQnNV38Gz
	v3dcu90OIF3ysD/Fhas9EBWqe5/re5hrIDjEvX5Ly3008EJDj8fc04PTZKLh/R98ZtI9Q9+Eu0zK5
	vhbxjyIGigQdlEmtbNfcSRYZEfhiCwJBlEX6dRWmoKJRDtz242vgxQuP5J0OVrQtVtmJXjTPtf0CC
	cxHli+hkF/F4iHrcEmvHxQwzmGG+AzYKl2FyQkXKnX11KlHgt3ICN9zafQK9Ph2KOqzs1QVoEdoya
	tjJajijtLMovST6hfJR71ewFVAWknypj7pL/mnCCYBQqNRv1NF4qbPxtj+AaZuzhU/cJy0DWWhNrs
	BXzLWR679CJQUqMXXhqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Y6l-0005Tq-Sb; Sat, 24 Aug 2019 15:37:39 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Y6i-0005Qb-AN
 for linux-rockchip@lists.infradead.org; Sat, 24 Aug 2019 15:37:37 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 1371477EAE8; Sat, 24 Aug 2019 17:37:35 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Patrick Havelange <patrick.havelange@essensium.com>
Subject: [PATCH v3 3/6] pwm: rockchip: Don't update the state for the caller
 of pwm_apply_state()
Date: Sat, 24 Aug 2019 17:37:04 +0200
Message-Id: <20190824153707.13746-4-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190824153707.13746-1-uwe@kleine-koenig.org>
References: <20190824153707.13746-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_083736_638621_64BAC68F 
X-CRM114-Status: UNSURE (   8.09  )
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
Cc: linux-pwm@vger.kernel.org,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 kernel@pengutronix.de, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
ClRoZSBwd20tcm9ja2NoaXAgZHJpdmVyIGlzIG9uZSBvZiBvbmx5IHRocmVlIFBXTSBkcml2ZXJz
IHdoaWNoIHVwZGF0ZXMKdGhlIHN0YXRlIGZvciB0aGUgY2FsbGVyIG9mIHB3bV9hcHBseV9zdGF0
ZSgpLiBUaGlzIG1pZ2h0IGhhdmUKc3VycHJpc2luZyByZXN1bHRzIGlmIHRoZSBjYWxsZXIgcmV1
c2VzIHRoZSB2YWx1ZXMgZXhwZWN0aW5nIHRoZW0gdG8Kc3RpbGwgcmVwcmVzZW50IHRoZSBzYW1l
IHN0YXRlLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5p
Z0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL3B3bS9wd20tcm9ja2NoaXAuYyB8IDYgLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L3B3bS9wd20tcm9ja2NoaXAuYyBiL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jCmluZGV4IDUx
Yjk2Y2I3ZGQyNS4uY2M1MDJjOGQ3ZTljIDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tcm9j
a2NoaXAuYworKysgYi9kcml2ZXJzL3B3bS9wd20tcm9ja2NoaXAuYwpAQCAtMjEyLDEyICsyMTIs
NiBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3B3bV9hcHBseShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAs
IHN0cnVjdCBwd21fZGV2aWNlICpwd20sCiAJCQlnb3RvIG91dDsKIAl9CiAKLQkvKgotCSAqIFVw
ZGF0ZSB0aGUgc3RhdGUgd2l0aCB0aGUgcmVhbCBoYXJkd2FyZSwgd2hpY2ggY2FuIGRpZmZlciBh
IGJpdAotCSAqIGJlY2F1c2Ugb2YgcGVyaW9kL2R1dHlfY3ljbGUgYXBwcm94aW1hdGlvbi4KLQkg
Ki8KLQlyb2NrY2hpcF9wd21fZ2V0X3N0YXRlKGNoaXAsIHB3bSwgc3RhdGUpOwotCiBvdXQ6CiAJ
Y2xrX2Rpc2FibGUocGMtPnBjbGspOwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
