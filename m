Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E86060861
	for <lists+linux-rockchip@lfdr.de>; Fri,  5 Jul 2019 16:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/oy/A+E4AMLWJJ19FhmJhauCCnZ51NAOtkTPlEhEDZ4=; b=NAefLpLLnGBukq
	H5ECNh6G0AUOpRUOWwGOLudu1knnHzs93WqlIDjAuB+XaE6sIysVZKHKLiOc1FVUETBIXwJBaLnY9
	D89PdCOyEuuVUwyp+VqUNF1ogG0Tevg89bkztJWu4gkJD6nJqQ4HbgfXegBmV8N651i41746ADN/i
	vYKJDDeMTRboBIThY9axwN4MiJtX09dZaDvNFbJ4RjLvxr8n6RwsiG40sQUe8mYz+n/TcRUt0pJus
	L1Am4AdmLvoTnc/SQA4Wgr1LMCudpjCAFtelpDRtSX+RRnVAi2YYTrCVubcbLUnwV05ERSP3Eo/6W
	tJy25BFNtkyLc2+spgpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPZP-0006ci-PG; Fri, 05 Jul 2019 14:52:15 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPZM-0006bx-37
 for linux-rockchip@lists.infradead.org; Fri, 05 Jul 2019 14:52:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id ACA3228B494
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org,
	Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v3 1/4] media: v4l2-ctrl: Move compound control validation
Date: Fri,  5 Jul 2019 11:50:47 -0300
Message-Id: <20190705145050.25911-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190705145050.25911-1-ezequiel@collabora.com>
References: <20190705145050.25911-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_075212_395212_D884F25E 
X-CRM114-Status: UNSURE (   9.97  )
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

Rework std_validate moving the compound controls to
its own validation function.

While here, fix the pointer math to account the index parameter.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
Changes from v2:
* New patch
---
 drivers/media/v4l2-core/v4l2-ctrls.c | 126 +++++++++++++++------------
 1 file changed, 69 insertions(+), 57 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index 371537dd8cd3..739418aa9108 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls.c
@@ -1629,10 +1629,77 @@ static void std_log(const struct v4l2_ctrl *ctrl)
 })
 
 /* Validate a new control */
+static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
+				 union v4l2_ctrl_ptr ptr)
+{
+	struct v4l2_ctrl_mpeg2_slice_params *p_mpeg2_slice_params;
+	void *p = ptr.p + idx * ctrl->elem_size;
+
+	switch ((u32)ctrl->type) {
+	case V4L2_CTRL_TYPE_MPEG2_SLICE_PARAMS:
+		p_mpeg2_slice_params = p;
+
+		switch (p_mpeg2_slice_params->sequence.chroma_format) {
+		case 1: /* 4:2:0 */
+		case 2: /* 4:2:2 */
+		case 3: /* 4:4:4 */
+			break;
+		default:
+			return -EINVAL;
+		}
+
+		switch (p_mpeg2_slice_params->picture.intra_dc_precision) {
+		case 0: /* 8 bits */
+		case 1: /* 9 bits */
+		case 2: /* 10 bits */
+		case 3: /* 11 bits */
+			break;
+		default:
+			return -EINVAL;
+		}
+
+		switch (p_mpeg2_slice_params->picture.picture_structure) {
+		case 1: /* interlaced top field */
+		case 2: /* interlaced bottom field */
+		case 3: /* progressive */
+			break;
+		default:
+			return -EINVAL;
+		}
+
+		switch (p_mpeg2_slice_params->picture.picture_coding_type) {
+		case V4L2_MPEG2_PICTURE_CODING_TYPE_I:
+		case V4L2_MPEG2_PICTURE_CODING_TYPE_P:
+		case V4L2_MPEG2_PICTURE_CODING_TYPE_B:
+			break;
+		default:
+			return -EINVAL;
+		}
+
+		break;
+
+	case V4L2_CTRL_TYPE_MPEG2_QUANTIZATION:
+		break;
+
+	case V4L2_CTRL_TYPE_FWHT_PARAMS:
+		break;
+
+	case V4L2_CTRL_TYPE_H264_SPS:
+	case V4L2_CTRL_TYPE_H264_PPS:
+	case V4L2_CTRL_TYPE_H264_SCALING_MATRIX:
+	case V4L2_CTRL_TYPE_H264_SLICE_PARAMS:
+	case V4L2_CTRL_TYPE_H264_DECODE_PARAMS:
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int std_validate(const struct v4l2_ctrl *ctrl, u32 idx,
 			union v4l2_ctrl_ptr ptr)
 {
-	struct v4l2_ctrl_mpeg2_slice_params *p_mpeg2_slice_params;
 	size_t len;
 	u64 offset;
 	s64 val;
@@ -1695,63 +1762,8 @@ static int std_validate(const struct v4l2_ctrl *ctrl, u32 idx,
 			return -ERANGE;
 		return 0;
 
-	case V4L2_CTRL_TYPE_MPEG2_SLICE_PARAMS:
-		p_mpeg2_slice_params = ptr.p;
-
-		switch (p_mpeg2_slice_params->sequence.chroma_format) {
-		case 1: /* 4:2:0 */
-		case 2: /* 4:2:2 */
-		case 3: /* 4:4:4 */
-			break;
-		default:
-			return -EINVAL;
-		}
-
-		switch (p_mpeg2_slice_params->picture.intra_dc_precision) {
-		case 0: /* 8 bits */
-		case 1: /* 9 bits */
-		case 2: /* 10 bits */
-		case 3: /* 11 bits */
-			break;
-		default:
-			return -EINVAL;
-		}
-
-		switch (p_mpeg2_slice_params->picture.picture_structure) {
-		case 1: /* interlaced top field */
-		case 2: /* interlaced bottom field */
-		case 3: /* progressive */
-			break;
-		default:
-			return -EINVAL;
-		}
-
-		switch (p_mpeg2_slice_params->picture.picture_coding_type) {
-		case V4L2_MPEG2_PICTURE_CODING_TYPE_I:
-		case V4L2_MPEG2_PICTURE_CODING_TYPE_P:
-		case V4L2_MPEG2_PICTURE_CODING_TYPE_B:
-			break;
-		default:
-			return -EINVAL;
-		}
-
-		return 0;
-
-	case V4L2_CTRL_TYPE_MPEG2_QUANTIZATION:
-		return 0;
-
-	case V4L2_CTRL_TYPE_FWHT_PARAMS:
-		return 0;
-
-	case V4L2_CTRL_TYPE_H264_SPS:
-	case V4L2_CTRL_TYPE_H264_PPS:
-	case V4L2_CTRL_TYPE_H264_SCALING_MATRIX:
-	case V4L2_CTRL_TYPE_H264_SLICE_PARAMS:
-	case V4L2_CTRL_TYPE_H264_DECODE_PARAMS:
-		return 0;
-
 	default:
-		return -EINVAL;
+		return std_validate_compound(ctrl, idx, ptr);
 	}
 }
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
