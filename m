Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED31175EFF
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Mar 2020 16:59:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vn4h6WWhtkugpiyae4gbXAXb2kDxjnYO2+ONetm1DD8=; b=pxVlGj1XnR/l9Z
	4ioxyqzWG6xJcHqhaTu/hpHLuYXVXqzeWTSigKHDX5OYiNq7rOE2IbSeIjdgAg4/pp/IKsN023Td7
	RPYRw98EtSEpaVdX9OPDRSlmJ3Y6N7DJOTYpi3vqr1sSxm4shyHUcyZTAe7jymnCRlvdCyShumRo6
	xIfjX+dVV4MbawVOyANOJkcVcO4BBZXo4+T6Dlsrl+rMxNETXoAEwJgImqpuSc3VZyCzbo426S1hT
	m84lY/XzMp0fiDQF22mU0Dz9AoJ9UaLJ8+k7iaeCSBmKoG+Clw0K0gT1nrpuDHkF9724l54DVZEDR
	rWJb4YBbgsl8MX6dePfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8nTF-0005p8-VL; Mon, 02 Mar 2020 15:59:05 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8nSc-0005DI-P6; Mon, 02 Mar 2020 15:58:29 +0000
X-Originating-IP: 90.89.41.158
Received: from localhost.localdomain
 (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 175FB1BF217;
 Mon,  2 Mar 2020 15:58:21 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>
Subject: [PATCH 2/2] arm64: dts: rockchip: Describe PX30 GPU
Date: Mon,  2 Mar 2020 16:58:08 +0100
Message-Id: <20200302155808.11273-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200302155808.11273-1-miquel.raynal@bootlin.com>
References: <20200302155808.11273-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_075826_985880_8005B807 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Daniel Vetter <daniel@ffwll.ch>, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

UFgzMCBTb0NzIGZlYXR1cmUgYW4gQVJNIEJpZnJvc3QgR1BVLgoKU2lnbmVkLW9mZi1ieTogTWlx
dWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KLS0tCgpIZWxsbywgdGhpcyBj
aGFuZ2UgaXMganVzdCBhZGRpbmcgYmFzaWMgR1BVIHN1cHBvcnQsIG1vcmUgd29yayBpcwpuZWVk
ZWQgb24gdGhlIGRldmZyZXEvb3BwIHNpZGUgdG8gYmUgc3VyZSBldmVyeXRoaW5nIHdvcmtzIGFu
ZCBpcwpwcm9wZXJseSBkZXNjcmliZWQuIEhlbmNlLCB0aGlzIHByb3Bvc2FsIGFpbXMgYXQgZGVz
Y3JpYmluZyB0aGUgSFcKYmxvY2sgb25seSwgbm90IGl0cyBoYWJpbGl0eSB0byBjaGFuZ2Ugdm9s
dGFnZXMvZnJlcXVlbmNpZXMuCgpUaGFua3MsCk1pcXXDqGwKCiBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3B4MzAuZHRzaSB8IDEzICsrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAx
MyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9weDMwLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAuZHRzaQppbmRl
eCBmOTk5ODhiMDgyNDQuLjc3ODBlNTMyZDMxYiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9weDMwLmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9weDMwLmR0c2kKQEAgLTk5Nyw2ICs5OTcsMTkgQEAKIAkJc3RhdHVzID0gImRpc2FibGVkIjsK
IAl9OwogCisJZ3B1OiBncHVAZmY0MDAwMDAgeworCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHB4
MzAtbWFsaSIsICJhcm0sbWFsaS1iaWZyb3N0IjsKKwkJcmVnID0gPDB4MCAweGZmNDAwMDAwIDB4
MCAweDQwMDA+OworCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDUgSVJRX1RZUEVfTEVWRUxfSElH
SD4sCisJCQkgICAgIDxHSUNfU1BJIDQ2IElSUV9UWVBFX0xFVkVMX0hJR0g+LAorCQkJICAgICA8
R0lDX1NQSSA0NyBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJaW50ZXJydXB0LW5hbWVzID0gImdw
dSIsICJtbXUiLCAiam9iIjsKKwkJY2xvY2tzID0gPCZjcnUgU0NMS19HUFU+OworCQljbG9jay1u
YW1lcyA9ICJjbGtfbWFsaSI7CisJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFBYMzBfUERfR1BV
PjsKKwkJc3RhdHVzID0gImRpc2FibGVkIjsKKwl9OworCiAJdm9wYjogdm9wQGZmNDYwMDAwIHsK
IAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxweDMwLXZvcC1iaWciOwogCQlyZWcgPSA8MHgwIDB4
ZmY0NjAwMDAgMHgwIDB4ZWZjPjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
