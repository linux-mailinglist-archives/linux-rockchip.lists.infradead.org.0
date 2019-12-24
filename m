Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F01112A1D1
	for <lists+linux-rockchip@lfdr.de>; Tue, 24 Dec 2019 14:41:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZrTmf4oNjsFBj4oVSjBjzK3Z9uHOelDZ9rkDhKBK84g=; b=kiGDTuOKwZWTyR
	JSrcxSLy+LNPEweyifhVHiMk+SRXbMNNQd1jZhm1eMkuFI/pjonw3t7Ibf79+Z09cbRNDS8eJZZbk
	UPbjUWbUqwihY2k38HIvcl3FFR7HOS6tlMzZ5WDkDIMY1AyQhCPldlsXOEqRPRd04v+39D+nXEvNh
	/UMiWcqnAJXDu0m86mAvfD1+LTFBkWRsFuiCHIqehjPaxnkiHWbi9w7CU3opM/pgymC5Qj2ZMhHV1
	2+4wJlfONx1SNfsugdtAJEidVqSLTx/u10bRTsek6AVbiqIe4Iy0EDHxHcYFHTTr5XOzOj0XaFRss
	zQJDFfQ16PKv3wcCJt7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijkRS-0000dJ-2e; Tue, 24 Dec 2019 13:41:42 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijkRN-0000ct-PX
 for linux-rockchip@lists.infradead.org; Tue, 24 Dec 2019 13:41:39 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id EFBDA240007;
 Tue, 24 Dec 2019 13:41:24 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko Stuebner <heiko@sntech.de>,
	<linux-rockchip@lists.infradead.org>
Subject: [PATCH v2] MAINTAINERS: Track Rockchip PMIC drivers
Date: Tue, 24 Dec 2019 14:41:22 +0100
Message-Id: <20191224134122.20385-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_054137_964479_9820DC23 
X-CRM114-Status: UNSURE (   5.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: resnulli.us]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: resnulli.us]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The current Rockchip section misses all the PMIC related drivers. They
are all prefixed rk8* and are as wide as clks, regulators, pinctrl,
RTCs, audio, etc.

Add a dedicated MAINTAINER's entry.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---

Changes since v1:
* Create a PMIC entry in MAINTAINERS.
* Track files with rk8 and not rk80.

 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 9d3a5c54a41d..d3f814212ba8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13943,6 +13943,17 @@ S:	Maintained
 F:	drivers/staging/media/hantro/
 F:	Documentation/devicetree/bindings/media/rockchip-vpu.txt
 
+ROCKCHIP PMIC DRIVERS
+M:	Heiko Stuebner <heiko@sntech.de>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+L:	linux-rockchip@lists.infradead.org
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
+S:	Maintained
+F:	Documentation/devicetree/bindings/*/*rk8*
+F:	include/*/*/rk8*
+F:	include/*/*/*/rk8*
+F:	drivers/*/*rk8*
+
 ROCKER DRIVER
 M:	Jiri Pirko <jiri@resnulli.us>
 L:	netdev@vger.kernel.org
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
