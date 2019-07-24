Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3509737A2
	for <lists+linux-rockchip@lfdr.de>; Wed, 24 Jul 2019 21:17:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yWHxZLqTr1zjxCSAZRDjnzkc78j4XYmdPbR2PS82/us=; b=WMb8JPfeIhihnO
	hkdjnuX5IbGd97SgTMNFOTrwsrmfyiT6knRgf2bY3a+OFiLr8c3zsmz8NxV+hROOm//7jpXL4LQHx
	XpnKre90GhYZPhpgfMZGaUqpdm13QQu/mpkOL4I++MWmKHIipZVe12mjbXCrN/Eb4Y2J3N0/fs8Gf
	cqFrB4z35Odt4I2Rnujm5lBa5AGh5Y+p5DqaDCQryP4jgU9byYCO5ZFsNgpmWzOCj7OhClGWI8PJU
	Ls5ffhmNbMxZZ9MoOUQVQFVMfTo+zeZpovJQcc1QGxQt1FFWlHovBPYNh5JtUfL0UMsRZ1sd3tEeC
	8czskscUNZnFqfFUvxig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMlk-0000fq-FZ; Wed, 24 Jul 2019 19:17:44 +0000
Received: from mail.stikonas.eu ([82.71.3.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMlg-0000e4-T3
 for linux-rockchip@lists.infradead.org; Wed, 24 Jul 2019 19:17:42 +0000
Received: from pine.stikonas.eu (localhost [127.0.0.1])
 by mail.stikonas.eu (Postfix) with ESMTP id 8CA7B279E55C;
 Wed, 24 Jul 2019 20:17:26 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=stikonas.eu; s=mail;
 t=1563995846; bh=FRj2t7+Iz6ingSN9qRhCrBNK4Jwq36wEsma9h40OM64=;
 h=From:To:Cc:Subject:Date;
 b=anCcGbrAo42LH6xloxmoNhrh+1DiReg4lRGcWcYVMk9qyUW/NC+qo8PWWr7e93Dm3
 JqJLkzCAjbS4HtQv0Gq6zBdaW7bPaSqPpG/lSs6oR/bZJtPno8IKfk06DkLrSBMjwa
 WQFd5u4VjWh7icaAVJyquSMVIP2hpDCyI4V3r44A=
Received: from localhost.localdomain ([2a02:8010:6548:0:a53b:4510:10cb:97c4])
 by pine.stikonas.eu with ESMTPSA id SjTKHsauOF23LAAAtWO0jw
 (envelope-from <andrius@stikonas.eu>); Wed, 24 Jul 2019 20:17:26 +0100
From: =?UTF-8?q?Andrius=20=C5=A0tikonas?= <andrius@stikonas.eu>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: Add PWM fan for RockPro64
Date: Wed, 24 Jul 2019 20:17:15 +0100
Message-Id: <20190724191715.7668-1-andrius@stikonas.eu>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_121741_441135_E19D8B95 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?q?Andrius=20=C5=A0tikonas?= <andrius@stikonas.eu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Um9ja1BybzY0IGhhcyBhIGRlZGljYXRlZCBjaXJjdWl0IGZvciBkcml2aW5nIGEgMTJWIGZhbiBm
cm9tIFBXTTEuCgpBdCB0aGUgbW9tZW50IHRoaXMgbWFrZXMgZmFuIHNwaW4gYXQgZnVsbCBzcGVl
ZC4gZmFuY29udHJvbCBjYW4gYmUgdXNlZAp0byBjb250cm9sIGZhbiBzcGVlZC4gRS5nLiB0aGUg
Zm9sbG93aW5nIGNvbmZpZyBmaWxlIHdvcmtzIHdlbGw6CgpJTlRFUlZBTD0xMApERVZQQVRIPWh3
bW9uMD1kZXZpY2VzL3BsYXRmb3JtL3B3bS1mYW4KREVWTkFNRT1od21vbjA9cHdtZmFuCkZDVEVN
UFM9aHdtb24wL2RldmljZS9wd20xPS4uL3RoZXJtYWwvdGhlcm1hbF96b25lMC90ZW1wCk1JTlRF
TVA9aHdtb24wL2RldmljZS9wd20xPTQwCk1BWFRFTVA9aHdtb24wL2RldmljZS9wd20xPTYwCk1J
TlNUQVJUPWh3bW9uMC9kZXZpY2UvcHdtMT0xMDAKTUlOU1RPUD1od21vbjAvZGV2aWNlL3B3bTE9
NzAKCkluIHRoZSBmdXR1cmUgaXQgd291bGQgYmUgbmljZSB0byBkZWZpbmUgdHJpcCBwb2ludHMg
aW4gZHRzIGZpbGUsCnNvIHRoYXQga2VybmVsIGNvdWxkIGFkanVzdCBmYW4gc3BlZWQgaXRzZWxm
LgoKU2lnbmVkLW9mZi1ieTogQW5kcml1cyDFoHRpa29uYXMgPGFuZHJpdXNAc3Rpa29uYXMuZXU+
Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cyB8
IDEyICsrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRz
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cwppbmRl
eCBlYjU1OTQwNjIwMDYuLjAyY2Y1ZDBkYmFlZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCkBAIC0xNjksNiArMTY5LDE0IEBACiAJ
CXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE0MDAwMDA+OwogCQl2aW4tc3VwcGx5ID0gPCZ2
Y2M1djBfc3lzPjsKIAl9OworCisJZmFuOiBwd20tZmFuIHsKKwkJY29tcGF0aWJsZSA9ICJwd20t
ZmFuIjsKKwkJI2Nvb2xpbmctY2VsbHMgPSA8Mj47CisJCWZhbi1zdXBwbHkgPSA8JnZjYzEydl9k
Y2luPjsKKwkJcHdtcyA9IDwmcHdtMSAwIDUwMDAwIDA+OworCX07CisKIH07CiAKICZjcHVfbDAg
ewpAQCAtNjAyLDYgKzYxMCwxMCBAQAogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKKyZwd20xIHsK
KwlzdGF0dXMgPSAib2theSI7Cit9OworCiAmcHdtMiB7CiAJc3RhdHVzID0gIm9rYXkiOwogfTsK
LS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
