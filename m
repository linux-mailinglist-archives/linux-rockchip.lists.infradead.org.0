Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 837499BE94
	for <lists+linux-rockchip@lfdr.de>; Sat, 24 Aug 2019 17:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29Un/j1LyDc7Q0BJXp3FEKem8C2lsUyRRt+1pgknrZQ=; b=cLeqP4osbZ8kTO
	9jEws6o96JipFn1koVmSfXy95u1MuGnKp/dQyXhGBgTLUDuxaEchdM/6s0BKFMsODvDmdB0NYSCre
	Uhc93r9d2k/pbrVCP3bpMyVL8tzig5G2eoHq6QVqQA1YQVZ32TGqTHp2d+yNoT47mJZDBkHMs3ek6
	wEUmT3eZb/VIhTpViY0fNpiHm2SsUS9oqZtdbdrPqQ3OxRFxmp8hbJWPO6xCXnMNImLENt9tFcGMN
	3MTKB8O0CmDLnSxstKuwtY/I4hx0Knr/LGHJROsJcLEf9fwqX5gvFrSdyQCTU5+VY86ogZ35M2k4y
	JtxcO9vY1fERcBjNUtmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Y6f-0005Ox-Vi; Sat, 24 Aug 2019 15:37:34 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Y6c-0005NR-CF
 for linux-rockchip@lists.infradead.org; Sat, 24 Aug 2019 15:37:31 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 23E3677EAE4; Sat, 24 Aug 2019 17:37:29 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Patrick Havelange <patrick.havelange@essensium.com>
Subject: [PATCH v3 1/6] pwm: introduce local struct pwm_chip in
 pwm_apply_state()
Date: Sat, 24 Aug 2019 17:37:02 +0200
Message-Id: <20190824153707.13746-2-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190824153707.13746-1-uwe@kleine-koenig.org>
References: <20190824153707.13746-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_083730_578626_2C339470 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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

cHdtLT5jaGlwIGlzIGRlcmVmZXJlbmNlZCBzZXZlcmFsIHRpbWVzIGluIHRoZSBwd21fYXBwbHlf
c3RhdGUoKQpmdW5jdGlvbi4gSW50cm9kdWNpbmcgYSBsb2NhbCB2YXJpYWJsZSBmb3IgaXQgaGVs
cHMga2VlcGluZyBzb21lIGxpbmVzIGEKYml0IHNob3J0ZXIuCgpTaWduZWQtb2ZmLWJ5OiBVd2Ug
S2xlaW5lLUvDtm5pZyA8dXdlQGtsZWluZS1rb2VuaWcub3JnPgotLS0KIGRyaXZlcnMvcHdtL2Nv
cmUuYyB8IDI0ICsrKysrKysrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEzIGlu
c2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL2Nv
cmUuYyBiL2RyaXZlcnMvcHdtL2NvcmUuYwppbmRleCA4ZWRmYWMxNzM2NGUuLjcyMzQ3Y2E0YTY0
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vY29yZS5jCisrKyBiL2RyaXZlcnMvcHdtL2NvcmUu
YwpAQCAtNDU1LDYgKzQ1NSw3IEBAIEVYUE9SVF9TWU1CT0xfR1BMKHB3bV9mcmVlKTsKIGludCBw
d21fYXBwbHlfc3RhdGUoc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwgc3RydWN0IHB3bV9zdGF0ZSAq
c3RhdGUpCiB7CiAJaW50IGVycjsKKwlzdHJ1Y3QgcHdtX2NoaXAgKmNoaXA7CiAKIAlpZiAoIXB3
bSB8fCAhc3RhdGUgfHwgIXN0YXRlLT5wZXJpb2QgfHwKIAkgICAgc3RhdGUtPmR1dHlfY3ljbGUg
PiBzdGF0ZS0+cGVyaW9kKQpAQCAtNDY2LDggKzQ2Nyw5IEBAIGludCBwd21fYXBwbHlfc3RhdGUo
c3RydWN0IHB3bV9kZXZpY2UgKnB3bSwgc3RydWN0IHB3bV9zdGF0ZSAqc3RhdGUpCiAJICAgIHN0
YXRlLT5lbmFibGVkID09IHB3bS0+c3RhdGUuZW5hYmxlZCkKIAkJcmV0dXJuIDA7CiAKLQlpZiAo
cHdtLT5jaGlwLT5vcHMtPmFwcGx5KSB7Ci0JCWVyciA9IHB3bS0+Y2hpcC0+b3BzLT5hcHBseShw
d20tPmNoaXAsIHB3bSwgc3RhdGUpOworCWNoaXAgPSBwd20tPmNoaXA7CisJaWYgKGNoaXAtPm9w
cy0+YXBwbHkpIHsKKwkJZXJyID0gY2hpcC0+b3BzLT5hcHBseShjaGlwLCBwd20sIHN0YXRlKTsK
IAkJaWYgKGVycikKIAkJCXJldHVybiBlcnI7CiAKQEAgLTQ3Nyw3ICs0NzksNyBAQCBpbnQgcHdt
X2FwcGx5X3N0YXRlKHN0cnVjdCBwd21fZGV2aWNlICpwd20sIHN0cnVjdCBwd21fc3RhdGUgKnN0
YXRlKQogCQkgKiBGSVhNRTogcmVzdG9yZSB0aGUgaW5pdGlhbCBzdGF0ZSBpbiBjYXNlIG9mIGVy
cm9yLgogCQkgKi8KIAkJaWYgKHN0YXRlLT5wb2xhcml0eSAhPSBwd20tPnN0YXRlLnBvbGFyaXR5
KSB7Ci0JCQlpZiAoIXB3bS0+Y2hpcC0+b3BzLT5zZXRfcG9sYXJpdHkpCisJCQlpZiAoIWNoaXAt
Pm9wcy0+c2V0X3BvbGFyaXR5KQogCQkJCXJldHVybiAtRU5PVFNVUFA7CiAKIAkJCS8qCkBAIC00
ODYsMTIgKzQ4OCwxMiBAQCBpbnQgcHdtX2FwcGx5X3N0YXRlKHN0cnVjdCBwd21fZGV2aWNlICpw
d20sIHN0cnVjdCBwd21fc3RhdGUgKnN0YXRlKQogCQkJICogLT5hcHBseSgpLgogCQkJICovCiAJ
CQlpZiAocHdtLT5zdGF0ZS5lbmFibGVkKSB7Ci0JCQkJcHdtLT5jaGlwLT5vcHMtPmRpc2FibGUo
cHdtLT5jaGlwLCBwd20pOworCQkJCWNoaXAtPm9wcy0+ZGlzYWJsZShjaGlwLCBwd20pOwogCQkJ
CXB3bS0+c3RhdGUuZW5hYmxlZCA9IGZhbHNlOwogCQkJfQogCi0JCQllcnIgPSBwd20tPmNoaXAt
Pm9wcy0+c2V0X3BvbGFyaXR5KHB3bS0+Y2hpcCwgcHdtLAotCQkJCQkJCSAgIHN0YXRlLT5wb2xh
cml0eSk7CisJCQllcnIgPSBjaGlwLT5vcHMtPnNldF9wb2xhcml0eShjaGlwLCBwd20sCisJCQkJ
CQkgICAgICBzdGF0ZS0+cG9sYXJpdHkpOwogCQkJaWYgKGVycikKIAkJCQlyZXR1cm4gZXJyOwog
CkBAIC01MDAsOSArNTAyLDkgQEAgaW50IHB3bV9hcHBseV9zdGF0ZShzdHJ1Y3QgcHdtX2Rldmlj
ZSAqcHdtLCBzdHJ1Y3QgcHdtX3N0YXRlICpzdGF0ZSkKIAogCQlpZiAoc3RhdGUtPnBlcmlvZCAh
PSBwd20tPnN0YXRlLnBlcmlvZCB8fAogCQkgICAgc3RhdGUtPmR1dHlfY3ljbGUgIT0gcHdtLT5z
dGF0ZS5kdXR5X2N5Y2xlKSB7Ci0JCQllcnIgPSBwd20tPmNoaXAtPm9wcy0+Y29uZmlnKHB3bS0+
Y2hpcCwgcHdtLAotCQkJCQkJICAgICBzdGF0ZS0+ZHV0eV9jeWNsZSwKLQkJCQkJCSAgICAgc3Rh
dGUtPnBlcmlvZCk7CisJCQllcnIgPSBjaGlwLT5vcHMtPmNvbmZpZyhwd20tPmNoaXAsIHB3bSwK
KwkJCQkJCXN0YXRlLT5kdXR5X2N5Y2xlLAorCQkJCQkJc3RhdGUtPnBlcmlvZCk7CiAJCQlpZiAo
ZXJyKQogCQkJCXJldHVybiBlcnI7CiAKQEAgLTUxMiwxMSArNTE0LDExIEBAIGludCBwd21fYXBw
bHlfc3RhdGUoc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwgc3RydWN0IHB3bV9zdGF0ZSAqc3RhdGUp
CiAKIAkJaWYgKHN0YXRlLT5lbmFibGVkICE9IHB3bS0+c3RhdGUuZW5hYmxlZCkgewogCQkJaWYg
KHN0YXRlLT5lbmFibGVkKSB7Ci0JCQkJZXJyID0gcHdtLT5jaGlwLT5vcHMtPmVuYWJsZShwd20t
PmNoaXAsIHB3bSk7CisJCQkJZXJyID0gY2hpcC0+b3BzLT5lbmFibGUoY2hpcCwgcHdtKTsKIAkJ
CQlpZiAoZXJyKQogCQkJCQlyZXR1cm4gZXJyOwogCQkJfSBlbHNlIHsKLQkJCQlwd20tPmNoaXAt
Pm9wcy0+ZGlzYWJsZShwd20tPmNoaXAsIHB3bSk7CisJCQkJY2hpcC0+b3BzLT5kaXNhYmxlKGNo
aXAsIHB3bSk7CiAJCQl9CiAKIAkJCXB3bS0+c3RhdGUuZW5hYmxlZCA9IHN0YXRlLT5lbmFibGVk
OwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
