Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3A99BE95
	for <lists+linux-rockchip@lfdr.de>; Sat, 24 Aug 2019 17:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNZRzi94sQ0ytX2DIdiNotIfQUrWM+MWsX7uldm1Uhs=; b=Lo5WFmH9aB1PI8
	hK8Uf/2fkkwG0qJRgnhWhPXwkUwn+Sbx96zNQ8mB4MCkqljP35nS81dOBWurSW+WcxQz4ubXYNerE
	LEHFWMBXlj+l5goXq/i3v3IFBUj5I1dpQzuxFjDCVavjh7wwSnhwCCDfUoMvPTOq1KIbPTOpoMh2D
	pCj3jWwnJO8v+vNsLdeyjyfwttSZYR6EkhSfxP6ChvqIrRM4wD9vnQCwHmiDfxPTfofcoQLqVLq/n
	/ko6rQbZbWBIKpw5sA7HkMIpo1Uirrx3Aj+8Ys1k1dAyBau5ov34gJErEYoWzk4r/GOckVNh9ysOy
	dOl/mBA1aphBPaBRGX/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Y6i-0005Qa-RE; Sat, 24 Aug 2019 15:37:36 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Y6e-0005Nt-9v
 for linux-rockchip@lists.infradead.org; Sat, 24 Aug 2019 15:37:33 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id D642777EAE6; Sat, 24 Aug 2019 17:37:30 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Patrick Havelange <patrick.havelange@essensium.com>
Subject: [PATCH v3 2/6] pwm: let pwm_get_state() return the last implemented
 state
Date: Sat, 24 Aug 2019 17:37:03 +0200
Message-Id: <20190824153707.13746-3-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190824153707.13746-1-uwe@kleine-koenig.org>
References: <20190824153707.13746-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_083732_739550_2D4E06F8 
X-CRM114-Status: UNSURE (   9.58  )
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
Cc: linux-pwm@vger.kernel.org, kernel@pengutronix.de,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

V2hlbiBwd21fYXBwbHlfc3RhdGUoKSBpcyBjYWxsZWQgdGhlIGxvd2xldmVsIGRyaXZlciB1c3Vh
bGx5IGhhcyB0bwphcHBseSBzb21lIHJvdW5kaW5nIGJlY2F1c2UgdGhlIGhhcmR3YXJlIGRvZXNu
J3Qgc3VwcG9ydCBuYW5vc2Vjb25kCnJlc29sdXRpb24uIFNvIGxldCBwd21fZ2V0X3N0YXRlKCkg
cmV0dXJuIHRoZSBhY3R1YWxseSBpbXBsZW1lbnRlZCBzdGF0ZQppbnN0ZWFkIG9mIHRoZSBsYXN0
IGFwcGxpZWQgb25lIGlmIHBvc3NpYmxlLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7Zu
aWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4KLS0tCiBkcml2ZXJzL3B3bS9jb3JlLmMgfCA5ICsr
KysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL2NvcmUuYyBiL2RyaXZlcnMvcHdtL2NvcmUuYwppbmRl
eCA3MjM0N2NhNGE2NDcuLjkyMzMzYjg5YmYwMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vY29y
ZS5jCisrKyBiL2RyaXZlcnMvcHdtL2NvcmUuYwpAQCAtNDczLDcgKzQ3MywxNCBAQCBpbnQgcHdt
X2FwcGx5X3N0YXRlKHN0cnVjdCBwd21fZGV2aWNlICpwd20sIHN0cnVjdCBwd21fc3RhdGUgKnN0
YXRlKQogCQlpZiAoZXJyKQogCQkJcmV0dXJuIGVycjsKIAotCQlwd20tPnN0YXRlID0gKnN0YXRl
OworCQkvKgorCQkgKiAuYXBwbHkgbWlnaHQgaGF2ZSB0byByb3VuZCBzb21lIHZhbHVlcyBpbiAq
c3RhdGUsIGlmIHBvc3NpYmxlCisJCSAqIHJlYWQgdGhlIGFjdHVhbGx5IGltcGxlbWVudGVkIHZh
bHVlIGJhY2suCisJCSAqLworCQlpZiAoY2hpcC0+b3BzLT5nZXRfc3RhdGUpCisJCQljaGlwLT5v
cHMtPmdldF9zdGF0ZShjaGlwLCBwd20sICZwd20tPnN0YXRlKTsKKwkJZWxzZQorCQkJcHdtLT5z
dGF0ZSA9ICpzdGF0ZTsKIAl9IGVsc2UgewogCQkvKgogCQkgKiBGSVhNRTogcmVzdG9yZSB0aGUg
aW5pdGlhbCBzdGF0ZSBpbiBjYXNlIG9mIGVycm9yLgotLSAKMi4yMC4xCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
