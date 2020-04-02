Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A83719CA71
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 21:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y88lAFNQIyOEd0uzcA7WvAndaox3qodjj01b+DrKLhg=; b=sz3QKZPMjQqjFB
	P4TKjyJ75oTGMlA1Hf/1FFXYn3Uqc2RgzweZTffiioH0DrF9qRTz2CaeoVwkdT7rCyh59Vy++Qwln
	Yp7jTLN+5mid31kO1tgwS8OBS54W9nTvBkvZeSoJzrTOHMDSyzVLRXHxC9MKkzkjpQtZq14rmtcyH
	xPkGPEbMtK+F2s/sBPXmNdwD7Jj5fs5zmvpdfRyYw9QgOu0VwmWvdGiCVp2GIH9nld2XWsp+4M43U
	M76kudnfziDuKsZWWbyFdOvNSrhHhQtDGIbx9SspOlbsi5yk17pQX/wSy+gsNOdUEcNSIF6rpoWlL
	rrn3ZoA2h6rDVm6mZozQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK5mL-0005q0-PZ; Thu, 02 Apr 2020 19:45:29 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK5mI-0005nq-7v
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 19:45:27 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id AA618295BF1
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] phy-rockchip-dphy-rx0: Drop unneeded CONFIG_OF
 dependency
Date: Thu,  2 Apr 2020 16:45:03 -0300
Message-Id: <20200402194504.5331-3-ezequiel@collabora.com>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200402194504.5331-1-ezequiel@collabora.com>
References: <20200402194504.5331-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_124526_421818_4244115D 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Ezequiel Garcia <ezequiel@collabora.com>,
 Helen Koike <helen.koike@collabora.com>, kernel@collabora.com,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The driver is perfectly capable of being built without CONFIG_OF.
Remove this dependency, which is useful for compile-only tests.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
---
 drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig b/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
index bd0147624de1..fb74df829371 100644
--- a/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
+++ b/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
@@ -2,7 +2,7 @@
 
 config PHY_ROCKCHIP_DPHY_RX0
 	tristate "Rockchip MIPI Synopsys DPHY RX0 driver"
-	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	select GENERIC_PHY_MIPI_DPHY
 	select GENERIC_PHY
 	help
-- 
2.26.0.rc2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
