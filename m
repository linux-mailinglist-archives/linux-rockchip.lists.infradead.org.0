Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 438A18A736
	for <lists+linux-rockchip@lfdr.de>; Mon, 12 Aug 2019 21:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QW8DwmgF8X7EYDcNGIBzwX75E2r+YTpMoWxuaTS5SSM=; b=PnWJUVF3YduJB5
	ro3Y8G8q8TbBHlXnjtsKrYtV3M7qRhDvfEg+tA3X967HZ2gLs4jcQ+jHZNRcMuCSn/xX/68ZQ2cDh
	n5ys+yCiNpdRHE3Kwzncdbu4MKVZPKax1uzgYEFp9rHomQuTPa3zwBLprniDc5ytWn09jpImwJcBG
	21vlwYgDggs3FLWdGHXuWVfY/l0/pT1t8BkRQRbVB8sRHg4rjCKefu6yJGx5ghqj6lI5yxqSF0QEs
	9V3xFFzNJAD5RAz7iBREJQc+YmYB0uD3P4jEz+FAxcALr1AylncnxzsBDQtJrg1WqSmnmp1U67bFI
	cRFRRQVMw9QPJpwso2BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxG6v-0005b3-GE; Mon, 12 Aug 2019 19:36:05 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxG6r-0005Yb-SU
 for linux-rockchip@lists.infradead.org; Mon, 12 Aug 2019 19:36:03 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id BF806285296
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v5 05/11] media: uapi: h264: Get rid of the p0/b0/b1 ref-lists
Date: Mon, 12 Aug 2019 16:35:16 -0300
Message-Id: <20190812193522.10911-6-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190812193522.10911-1-ezequiel@collabora.com>
References: <20190812193522.10911-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_123602_074420_C9B14C60 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: fbuergisser@chromium.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@collabora.com>

Those lists can be extracted from the dpb, let's simplify userspace
life and build that list kernel-side (generic helpers will be provided
for drivers that need this list).

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Tested-by: Philipp Zabel <p.zabel@pengutronix.de>
---
Changes in v5:
* New patch.
Changes in v4:
* Add R-b
* Remove the reflist from the struct
Changes in v3:
* None
Changes in v2:
* None
---
 Documentation/media/uapi/v4l/ext-ctrls-codec.rst | 9 ---------
 include/media/h264-ctrls.h                       | 3 ---
 2 files changed, 12 deletions(-)

diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
index ec0078e299a5..63796b39da43 100644
--- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
+++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
@@ -1942,15 +1942,6 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
     * - __u16
       - ``nal_ref_idc``
       - NAL reference ID value coming from the NAL Unit header
-    * - __u8
-      - ``ref_pic_list_p0[32]``
-      - Backward reference list used by P-frames in the original bitstream order
-    * - __u8
-      - ``ref_pic_list_b0[32]``
-      - Backward reference list used by B-frames in the original bitstream order
-    * - __u8
-      - ``ref_pic_list_b1[32]``
-      - Forward reference list used by B-frames in the original bitstream order
     * - __s32
       - ``top_field_order_cnt``
       - Picture Order Count for the coded top field
diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
index 31555c99f64a..2de438393025 100644
--- a/include/media/h264-ctrls.h
+++ b/include/media/h264-ctrls.h
@@ -203,9 +203,6 @@ struct v4l2_ctrl_h264_decode_params {
 	struct v4l2_h264_dpb_entry dpb[16];
 	__u16 num_slices;
 	__u16 nal_ref_idc;
-	__u8 ref_pic_list_p0[32];
-	__u8 ref_pic_list_b0[32];
-	__u8 ref_pic_list_b1[32];
 	__s32 top_field_order_cnt;
 	__s32 bottom_field_order_cnt;
 	__u32 flags; /* V4L2_H264_DECODE_PARAM_FLAG_* */
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
