Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2359BE98
	for <lists+linux-rockchip@lfdr.de>; Sat, 24 Aug 2019 17:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Iwh4bHQlpgCFQOZkKa3dkvGorsHlCsTsZlAQ1mlWDY=; b=A9iT0O2ipkEnNx
	IluOEASPPxoJcug3r+Sd/Lh30zGebiZ4azzAwHpnJh81eSSr52Zl8BqsDqG/d4SCrJ81AnGa0gQ2s
	Ya8YA8ZAYsog47KyuAwmCqWvc5ZTsDw6/DMbKXFiOpY9vtNgMAwMAWBPQTIGxkQSGZLfgb0SFSZas
	PRDhum1b+UJlbbzDmu0P84CC09VJa87215maT1Do52L4+VF4DZ2xnFiAAfGO/2RSo3tLGZ4/NxFJp
	6d2BDHJdvOxjR4ackWAiRHN2yTkRg57GhYqyOpDUgEVRXWu85Rh6Bs3RuJ2ksHNfwoMld/mWbZJ5A
	eBBSwO1vbYDgTiPlz84g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Y6n-0005VL-L5; Sat, 24 Aug 2019 15:37:41 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Y6j-0005SK-Q6
 for linux-rockchip@lists.infradead.org; Sat, 24 Aug 2019 15:37:39 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 9A62777EAEA; Sat, 24 Aug 2019 17:37:36 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Patrick Havelange <patrick.havelange@essensium.com>
Subject: [PATCH v3 4/6] pwm: sun4i: Don't update the state for the caller of
 pwm_apply_state()
Date: Sat, 24 Aug 2019 17:37:05 +0200
Message-Id: <20190824153707.13746-5-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190824153707.13746-1-uwe@kleine-koenig.org>
References: <20190824153707.13746-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_083737_996221_ADD88C68 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.130.110.236 listed in list.dnswl.org]
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
ClRoZSBwd20tc3VuNGkgZHJpdmVyIGlzIG9uZSBvZiBvbmx5IHRocmVlIFBXTSBkcml2ZXJzIHdo
aWNoIHVwZGF0ZXMgdGhlCnN0YXRlIGZvciB0aGUgY2FsbGVyIG9mIHB3bV9hcHBseV9zdGF0ZSgp
LiBUaGlzIG1pZ2h0IGhhdmUgc3VycHJpc2luZwpyZXN1bHRzIGlmIHRoZSBjYWxsZXIgcmV1c2Vz
IHRoZSB2YWx1ZXMgZXhwZWN0aW5nIHRoZW0gdG8gc3RpbGwKcmVwcmVzZW50IHRoZSBzYW1lIHN0
YXRlLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0Bw
ZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL3B3bS9wd20tc3VuNGkuYyB8IDYgLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9w
d20tc3VuNGkuYyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCmluZGV4IGRlNzhjODI0YmJmZC4u
MzkwMDdhN2MwZDgzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYworKysgYi9k
cml2ZXJzL3B3bS9wd20tc3VuNGkuYwpAQCAtMTkyLDEyICsxOTIsNiBAQCBzdGF0aWMgaW50IHN1
bjRpX3B3bV9jYWxjdWxhdGUoc3RydWN0IHN1bjRpX3B3bV9jaGlwICpzdW40aV9wd20sCiAJKmR0
eSA9IGRpdjsKIAkqcHJzY2xyID0gcHJlc2NhbGVyOwogCi0JZGl2ID0gKHU2NClwdmFsICogTlNF
Q19QRVJfU0VDICogKnByZDsKLQlzdGF0ZS0+cGVyaW9kID0gRElWX1JPVU5EX0NMT1NFU1RfVUxM
KGRpdiwgY2xrX3JhdGUpOwotCi0JZGl2ID0gKHU2NClwdmFsICogTlNFQ19QRVJfU0VDICogKmR0
eTsKLQlzdGF0ZS0+ZHV0eV9jeWNsZSA9IERJVl9ST1VORF9DTE9TRVNUX1VMTChkaXYsIGNsa19y
YXRlKTsKLQogCXJldHVybiAwOwogfQogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
