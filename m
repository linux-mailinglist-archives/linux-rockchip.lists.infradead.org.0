Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB709BE9A
	for <lists+linux-rockchip@lfdr.de>; Sat, 24 Aug 2019 17:37:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtJ0HsKXq1UW4q92LQTDN8wQplDB/c/OQN+fqI8QSFI=; b=YoVaNpFIzbzF7X
	1wio7ruljFM/Ur4ILpciDaLXWS0czQf/HYAH0EAGkZMSEE0hNcbTnGhT8wctMEXSrcBqa5PBM/oOn
	ehBuevg+kIyRlBx9jcpCWujIzqKLTwFaQ19nLiajaOfVc6gzuFl3nl6F2zH3n/3y3BbTq1PwBdGJ9
	XuAJgnr+GaAHVHzQvlz3rT8YDm5tqOZtoVf0/X3w3QKjD/BhXki/AyV4Mxnu2KX8uqCYuvhmN4/Aw
	Psg3iCN8oqq3vXxmD3848KRvqaEp26M4fWYWapm8SNJVt6/OtQBiUNB2L5X64pORPPhACOS2q4AoE
	C7UH2HUjEejgWl9OMfcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Y6r-0005Zc-Ir; Sat, 24 Aug 2019 15:37:45 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Y6n-0005Vs-Lx
 for linux-rockchip@lists.infradead.org; Sat, 24 Aug 2019 15:37:43 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 7D21D77EAEC; Sat, 24 Aug 2019 17:37:40 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Patrick Havelange <patrick.havelange@essensium.com>
Subject: [PATCH v3 5/6] pwm: fsl-ftm: Don't update the state for the caller of
 pwm_apply_state()
Date: Sat, 24 Aug 2019 17:37:06 +0200
Message-Id: <20190824153707.13746-6-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190824153707.13746-1-uwe@kleine-koenig.org>
References: <20190824153707.13746-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_083741_926204_6177FA0F 
X-CRM114-Status: UNSURE (   7.82  )
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

VGhlIHB3bS1mc2wtZnRtIGRyaXZlciBpcyBvbmUgb2Ygb25seSB0aHJlZSBQV00gZHJpdmVycyB3
aGljaCB1cGRhdGVzCnRoZSBzdGF0ZSBmb3IgdGhlIGNhbGxlciBvZiBwd21fYXBwbHlfc3RhdGUo
KS4gVGhpcyBtaWdodCBoYXZlCnN1cnByaXNpbmcgcmVzdWx0cyBpZiB0aGUgY2FsbGVyIHJldXNl
cyB0aGUgdmFsdWVzIGV4cGVjdGluZyB0aGVtIHRvCnN0aWxsIHJlcHJlc2VudCB0aGUgc2FtZSBz
dGF0ZS4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5p
Zy5vcmc+Ci0tLQogZHJpdmVycy9wd20vcHdtLWZzbC1mdG0uYyB8IDQgLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLWZzbC1m
dG0uYyBiL2RyaXZlcnMvcHdtL3B3bS1mc2wtZnRtLmMKaW5kZXggOWQzMWEyMTcxMTFkLi4zYzk3
Mzg2MTdjZWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1mc2wtZnRtLmMKKysrIGIvZHJp
dmVycy9wd20vcHdtLWZzbC1mdG0uYwpAQCAtMjkyLDEwICsyOTIsNiBAQCBzdGF0aWMgaW50IGZz
bF9wd21fYXBwbHlfY29uZmlnKHN0cnVjdCBmc2xfcHdtX2NoaXAgKmZwYywKIAogCXJlZ21hcF91
cGRhdGVfYml0cyhmcGMtPnJlZ21hcCwgRlRNX1BPTCwgQklUKHB3bS0+aHdwd20pLCByZWdfcG9s
YXJpdHkpOwogCi0JbmV3c3RhdGUtPnBlcmlvZCA9IGZzbF9wd21fdGlja3NfdG9fbnMoZnBjLAot
CQkJCQkgICAgICAgZnBjLT5wZXJpb2QubW9kX3BlcmlvZCArIDEpOwotCW5ld3N0YXRlLT5kdXR5
X2N5Y2xlID0gZnNsX3B3bV90aWNrc190b19ucyhmcGMsIGR1dHkpOwotCiAJZnRtX3NldF93cml0
ZV9wcm90ZWN0aW9uKGZwYyk7CiAKIAlyZXR1cm4gMDsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
