Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A920D0FEA
	for <lists+linux-rockchip@lfdr.de>; Wed,  9 Oct 2019 15:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GJb4kPeaFtT6cGY/CCWHfjWyaIoCJPLOduASAi21Xyg=; b=PpZtoeDD3xnbef
	ZwjeVwvuQYMNqIONfb0fE3HRLMX5JUoZmngpjFdlEDSGNESSk1+Cn6fItjmbplZ77OPkiUIu977fg
	pCbvAwToX/6MUDHZ3aJHJJU/bRciATfKWvntAMqHtLcECJRSyh5oAMrmlTf5KARyQTf71jUZCidKx
	OIcqZ5fivj1sX19qjL/FpjAWKIffm6WqpoI3IHyiEPPILzD/KKrpcACPYrUt9cKWWyArWLFuCVY+d
	T5wtxfR8Yf5EuNvztryBRe7jn44zQFTov/sxI30HnOPNwIEUEc5c868IGu+WxbrvJ6ePTbyoN7Syk
	94WHYhWvmkuaZwt3MJTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIBuf-0006lt-3w; Wed, 09 Oct 2019 13:21:57 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIBuT-0006SW-Bu; Wed, 09 Oct 2019 13:21:47 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iIBuK-00073l-3s; Wed, 09 Oct 2019 14:21:36 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iIBuJ-0004nR-DB; Wed, 09 Oct 2019 14:21:35 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] drm/rockchip: include rockchip_drm_drv.h
Date: Wed,  9 Oct 2019 14:21:34 +0100
Message-Id: <20191009132134.18384-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_062145_554281_0CEDAA61 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Ben Dooks <ben.dooks@codethink.co.uk>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SW5jbHVkZSByb2NrY2hpcF9kcm1fZHJ2LmggZm9yIGRlZmluaXRpb24gb2Ygdm9wX3BsYXRmb3Jt
X2RyaXZlcgp0byBhdm9pZCB0aGUgZm9sbG93aW5nIHNwYXJzZSB3YXJuaW5nOgoKZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcF9yZWcuYzo5ODI6MjQ6IHdhcm5pbmc6IHN5bWJv
bCAndm9wX3BsYXRmb3JtX2RyaXZlcicgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0
YXRpYz8KClNpZ25lZC1vZmYtYnk6IEJlbiBEb29rcyA8YmVuLmRvb2tzQGNvZGV0aGluay5jby51
az4KLS0tCkNjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgpDYzogIkhlaWtvIFN0
w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPgpDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4
LmllPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgpDYzogZHJpLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1rZXJu
ZWxAdmdlci5rZXJuZWwub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlw
X3ZvcF9yZWcuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcF9yZWcuYyBiL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3BfcmVnLmMKaW5kZXggZDE0OTRiZTE0NDcx
Li4zMzNkOGYyNDcwYWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF92b3BfcmVnLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3Zv
cF9yZWcuYwpAQCAtMTYsNiArMTYsNyBAQAogCiAjaW5jbHVkZSAicm9ja2NoaXBfZHJtX3ZvcC5o
IgogI2luY2x1ZGUgInJvY2tjaGlwX3ZvcF9yZWcuaCIKKyNpbmNsdWRlICJyb2NrY2hpcF9kcm1f
ZHJ2LmgiCiAKICNkZWZpbmUgX1ZPUF9SRUcob2ZmLCBfbWFzaywgX3NoaWZ0LCBfd3JpdGVfbWFz
aywgX3JlbGF4ZWQpIFwKIAkJeyBcCi0tIAoyLjIzLjAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
