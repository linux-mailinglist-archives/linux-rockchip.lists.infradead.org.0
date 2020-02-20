Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 893EA166300
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Feb 2020 17:32:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFy8ePqod93eEdVInFSE2MeV3Y7I9yuBq4gKQs3vux8=; b=VKF1klqDORPBZQ
	XmE4dEHHosdbnAzF4/U2FtPockXh5OnSjIC3MlnEcg9vfOsAP9/Nc5aTJMxw+58hN1FBU+x/V5A7W
	bIAkRtKQGP7p5TaKBACG31yr93XZth/8TbTsTxFxqlA0EQqslsiMEgf+1Jfu0W9vCgXyktZ1+u3kA
	Hl+layJZrSwgRoeSxjOPBf9aMHiQI0GmKw9ZIjLcOrOmH8gb91mv+NBbrGuqXPNDAamMk8BgY87EB
	A0097gT3N2mqmh2n+ImdfTPpqq+EPmo7H9AtMuLOjyM5yrMaEIjRHbE6fXaKNxwW2lMI/y1EROy2c
	zHsW83gglCZOKn5IaEQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4okl-0001Ye-Is; Thu, 20 Feb 2020 16:32:43 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4oih-0007fh-Q9
 for linux-rockchip@lists.infradead.org; Thu, 20 Feb 2020 16:30:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 9F3142951E3
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/6] media: uapi: h264: Add DPB entry field reference flags
Date: Thu, 20 Feb 2020 13:30:11 -0300
Message-Id: <20200220163016.21708-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200220163016.21708-1-ezequiel@collabora.com>
References: <20200220163016.21708-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_083036_019487_18797C52 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Tomasz Figa <tfiga@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Jonas Karlman <jonas@kwiboo.se>

Using the field information attached to v4l2 buffers is not enough to
determine the type of field referenced by a DPB entry: the decoded
frame might contain the full picture (both top and bottom fields)
but the reference only point to one of them.
Let's add new V4L2_H264_DPB_ENTRY_FLAG_ flags to express that.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
[Keep only 2 flags and add some details about they mean]
Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 Documentation/media/uapi/v4l/ext-ctrls-codec.rst | 16 ++++++++++++++++
 include/media/h264-ctrls.h                       |  2 ++
 2 files changed, 18 insertions(+)

diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
index 28313c0f4e7c..d4fc5f25aa14 100644
--- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
+++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
@@ -2028,6 +2028,22 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
     * - ``V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM``
       - 0x00000004
       - The DPB entry is a long term reference frame
+    * - ``V4L2_H264_DPB_ENTRY_FLAG_FIELD``
+      - 0x00000008
+      - The DPB entry is a field reference, which means only one of the field
+        will be used when decoding the new frame/field. When not set the DPB
+        entry is a frame reference (both fields will be used). Note that this
+        flag does not say anything about the number of fields contained in the
+        reference frame, it just describes the one used to decode the new
+        field/frame
+    * - ``V4L2_H264_DPB_ENTRY_FLAG_BOTTOM_FIELD``
+      - 0x00000010
+      - The DPB entry is a bottom field reference (only the bottom field of the
+        reference frame is needed to decode the new frame/field). Only valid if
+        V4L2_H264_DPB_ENTRY_FLAG_FIELD is set. When
+        V4L2_H264_DPB_ENTRY_FLAG_FIELD is set but
+        V4L2_H264_DPB_ENTRY_FLAG_BOTTOM_FIELD is not, that means the
+        DPB entry is a top field reference
 
 ``V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE (enum)``
     Specifies the decoding mode to use. Currently exposes slice-based and
diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
index e877bf1d537c..1c6ff7d63bca 100644
--- a/include/media/h264-ctrls.h
+++ b/include/media/h264-ctrls.h
@@ -185,6 +185,8 @@ struct v4l2_ctrl_h264_slice_params {
 #define V4L2_H264_DPB_ENTRY_FLAG_VALID		0x01
 #define V4L2_H264_DPB_ENTRY_FLAG_ACTIVE		0x02
 #define V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM	0x04
+#define V4L2_H264_DPB_ENTRY_FLAG_FIELD		0x08
+#define V4L2_H264_DPB_ENTRY_FLAG_BOTTOM_FIELD	0x10
 
 struct v4l2_h264_dpb_entry {
 	__u64 reference_ts;
-- 
2.25.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
