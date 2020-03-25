Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CB41932C1
	for <lists+linux-rockchip@lfdr.de>; Wed, 25 Mar 2020 22:35:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2D1JduLDO5muRl94t+9ODKTkHLCQvtWXHvgzc+XOfPM=; b=I5GXK0VNGN73wh
	R3kPHaPvJRgokoRkSMYHxj6XhPLVmKav53K/t7T/gWDdentqkWg7poFWKmvwb3Jg3IS/OO3gaCa2M
	BJENnF0koqOSrINIAzqcGcAe9MA1XB0rN9tI18hO2O8Z6mSSJr8lHpdX8i7wntRKox6qoAmXQjVru
	NSh/qPkV4fLshOajrnWWuFIgUcB43gWwB+8RddTdfpr72YQYzgx2Lmj2OrrT8xXc/xUY1X8q8ju5w
	+gfjzS/aBt0J1DHNfHzZ3F99+Xoq2ulRMziW4/drpfmcPZvKNKywNdYRROXnBhe2zuTOMn6YQm5QU
	HW64H38TLb3FpaWx68xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHDg2-0006gJ-Al; Wed, 25 Mar 2020 21:35:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHDfx-0006Lz-GH
 for linux-rockchip@lists.infradead.org; Wed, 25 Mar 2020 21:35:03 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 63A5B293EA9
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/7] v4l2-mem2mem: return CAPTURE buffer first
Date: Wed, 25 Mar 2020 18:34:32 -0300
Message-Id: <20200325213439.16509-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200325213439.16509-1-ezequiel@collabora.com>
References: <20200325213439.16509-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_143501_671937_D0D0A034 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Hans Verkuil <hverkuil@xs4all.nl>,
 devicetree@vger.kernel.org, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

When the request API is used, typically an OUTPUT (src) buffer
will be part of a request. A userspace process will be typically
blocked, waiting on the request file descriptor.

Returning the OUTPUT (src) buffer will wake-up such processes,
who will immediately attempt to dequeue the CAPTURE buffer,
only to find it's still unavailable.

Therefore, change v4l2_m2m_buf_done_and_job_finish returning
the CAPTURE (dst) buffer first, to avoid signalling the request
file descriptor prematurely, i.e. before the CAPTURE buffer is done.

When the request API is not used, this change should have
no impact.

Tested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/media/v4l2-core/v4l2-mem2mem.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
index 8986c31176e9..62ac9424c92a 100644
--- a/drivers/media/v4l2-core/v4l2-mem2mem.c
+++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
@@ -504,12 +504,21 @@ void v4l2_m2m_buf_done_and_job_finish(struct v4l2_m2m_dev *m2m_dev,
 
 	if (WARN_ON(!src_buf || !dst_buf))
 		goto unlock;
-	v4l2_m2m_buf_done(src_buf, state);
 	dst_buf->is_held = src_buf->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
 	if (!dst_buf->is_held) {
 		v4l2_m2m_dst_buf_remove(m2m_ctx);
 		v4l2_m2m_buf_done(dst_buf, state);
 	}
+	/*
+	 * If the request API is being used, returning the OUTPUT
+	 * (src) buffer will wake-up any process waiting on the
+	 * request file descriptor.
+	 *
+	 * Therefore, return the CAPTURE (dst) buffer first,
+	 * to avoid signalling the request file descriptor
+	 * before the CAPTURE buffer is done.
+	 */
+	v4l2_m2m_buf_done(src_buf, state);
 	schedule_next = _v4l2_m2m_job_finish(m2m_dev, m2m_ctx);
 unlock:
 	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
-- 
2.26.0.rc2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
