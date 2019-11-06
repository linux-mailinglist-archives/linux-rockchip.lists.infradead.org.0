Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0333F15B9
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 Nov 2019 13:03:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2xBVXattg0RRKdDcEKWSO6xW1AnmQxEZOrzvcutXB0=; b=hzaYCiQ4uXyB4G
	TFFjhMjoaPfwgd8S3Y7Mxu8VdMTvFg6yPX7Z1epPP27SEEFk1njnjQwnIS+fw82HZTmM0VStDdGzi
	ljFB+NK2NeKlGDCaz7U1YRx3R00gXOI7XVSK8GMrDfwl8cKZfSNYcV5G6OsaZe3LSvpmI47qwReAd
	6HJU7lGKbLSTSjmFk2S3ECRvNmX95j4mhoWElnPRhttazGifEaZhl9GKqKWow5+DGGkXIQWApgMIx
	28cRdN5jESaGQHKtKUwTJ7Le1qyqgrpqjXAxVrSv/XPqTbN83geUY5OM4+NW5rGU1QLJIa2JQ5xuw
	R5vZTortiMcvEX2ximLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSK22-0003ZQ-PJ; Wed, 06 Nov 2019 12:03:26 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSK1D-0002nI-Ab; Wed, 06 Nov 2019 12:02:40 +0000
Received: from floko.floko.floko (unknown
 [IPv6:2804:431:c7f1:970a:5c8b:9def:467e:dc3f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B364628FC0C;
 Wed,  6 Nov 2019 12:02:28 +0000 (GMT)
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v9 4/4] MAINTAINERS: add entry for Rockchip ISP1 driver
Date: Wed,  6 Nov 2019 09:01:32 -0300
Message-Id: <20191106120132.6876-5-helen.koike@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191106120132.6876-1-helen.koike@collabora.com>
References: <20191106120132.6876-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_040235_510433_DEDBC031 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: eddie.cai.linux@gmail.com, kernel@collabora.com, heiko@sntech.de,
 gregkh@linuxfoundation.org, jeffy.chen@rock-chips.com, zyc@rock-chips.com,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 Helen Koike <helen.koike@collabora.com>, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 zhengsq@rock-chips.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for the rockchip isp1 driver.

Signed-off-by: Helen Koike <helen.koike@collabora.com>
---

 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index ea0dcc0b9763..ce162e2236d9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13933,6 +13933,12 @@ F:	drivers/hid/hid-roccat*
 F:	include/linux/hid-roccat*
 F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
 
+ROCKCHIP ISP V1 DRIVER
+M:	Helen Koike <helen.koike@collabora.com>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+F:	drivers/staging/media/rkisp1/
+
 ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
 M:	Jacob Chen <jacob-chen@iotwrt.com>
 M:	Ezequiel Garcia <ezequiel@collabora.com>
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
