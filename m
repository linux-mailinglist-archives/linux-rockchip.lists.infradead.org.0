Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF32114294
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Dec 2019 15:25:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+dtSlZ3bEE+GAuOPfX9sLC+vMc1gFwS6+vXxAFVV58=; b=CEUBxc5Fzxx6se
	ZxOVbDRIDWiRhdiONecNgtiZRfwzemfbwE29DYFiWjoWM1SAhHX5MmokSeJR6J5M5kKtcVekObDaz
	5LlfJiNhqBBqkkdKkNnHSzoeUTWExS2DfTyYnlaCfZphTuVAEa1wd7sbOYKcZKJTPBBPrV5t0iZTt
	SnFzX4RV+tasZeOIYGd3yMorUy+ZeXuWaD/rgikYiILLeHgpd2hUDSK4Ln0jFwnVdOF4adt2KnGeg
	ItR0vIS8O2GeBjj66TWeKwVr1JNvlGzhc5oaTbrCObhW5ACgMns/i9vCV4x3eUNeKRNyZV93Z2Ago
	+P0on14+VPU71FJLRgBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ics4K-0003lo-VI; Thu, 05 Dec 2019 14:25:24 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ics4H-0003jx-6D
 for linux-rockchip@lists.infradead.org; Thu, 05 Dec 2019 14:25:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id B8D84292248
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 1/4] media: vidioc-enum-fmt.rst: clarify format preference
Date: Thu,  5 Dec 2019 11:24:40 -0300
Message-Id: <20191205142443.1298-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191205142443.1298-1-ezequiel@collabora.com>
References: <20191205142443.1298-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_062521_358652_C89C8A29 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

It has been decided to use the ENUM_FMT index value
as a hint for driver preference. This is defined purposedly
in a very liberal way, letting drivers define what "preference"
means.

For instance, the Hantro VPU driver indicates additional
processing to output a given format, and thus implicates
more CPU usage, which is enumerated after native (non-processed)
formats.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 Documentation/media/uapi/v4l/vidioc-enum-fmt.rst | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst b/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst
index 399ef1062bac..8ca6ab701e4a 100644
--- a/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst
+++ b/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst
@@ -44,7 +44,9 @@ To enumerate image formats applications initialize the ``type`` and
 the :ref:`VIDIOC_ENUM_FMT` ioctl with a pointer to this structure. Drivers
 fill the rest of the structure or return an ``EINVAL`` error code. All
 formats are enumerable by beginning at index zero and incrementing by
-one until ``EINVAL`` is returned.
+one until ``EINVAL`` is returned. If applicable, drivers shall return
+formats in preference order, where preferred formats are returned before
+(that is, with lower ``index`` value) less-preferred formats.
 
 .. note::
 
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
