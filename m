Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 909E066090
	for <lists+linux-rockchip@lfdr.de>; Thu, 11 Jul 2019 22:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Dk83yvsKRiRi/Jf07jBnTLPpvGVn2Lv5iqYl3iwmM0=; b=WHqj0sEfyOQSyU
	2BLobxux6chaujXXWE+ycz8LjEgvXQK1ussuYi1r8UiCf7fEXm5ipnP7UYVSRX6jxYPNH7I2TmoSJ
	58ZMAy2ZaVj1hAi7ZydnhI2cqcudSnn8G0ib+8sfK5V3dTC35djD78dfUZdqo2o7YGRdOcx2dqr3H
	SzKChKNme7L1AeMBAKsR+TdvXP5VHEg1U8a+j38lhf+WWhOPnRVwJLS2TXd4oAuoov4l3OLZtcHki
	WL1WsPIgGU9zjKS/U5JF/W0aXE29f+wIm+F8QNV/SZb8SxFl/tCssq03P5zBtYo7dzk4vSs5Ye/Yj
	xp2f14BdnpbZM9mYMesw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlfer-0001nz-Kh; Thu, 11 Jul 2019 20:27:13 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlfen-0001kI-5a
 for linux-rockchip@lists.infradead.org; Thu, 11 Jul 2019 20:27:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 3A27E28BA04
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org,
	Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v4 3/4] media: v4l2-ctrl: Validate VP8 stateless decoder
 controls
Date: Thu, 11 Jul 2019 17:26:43 -0300
Message-Id: <20190711202644.27909-4-ezequiel@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190711202644.27909-1-ezequiel@collabora.com>
References: <20190711202644.27909-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_132709_426385_1E888560 
X-CRM114-Status: UNSURE (   8.85  )
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

Only one field needs to be validated: 'num_dct_parts'.
This field is used to iterate over the user-provided array
'dct_part_sizes'.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
Changes from v3:
* Zero padding fields, as pointed out by Hans.

Changes from v2:
* New patch
---
 drivers/media/v4l2-core/v4l2-ctrls.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index b2c9f5816c4a..055558ed6322 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls.c
@@ -1633,10 +1633,15 @@ static void std_log(const struct v4l2_ctrl *ctrl)
 })
 
 /* Validate a new control */
+
+#define zero_padding(s) \
+	memset(&s.padding, 0, sizeof(s.padding))
+
 static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 				 union v4l2_ctrl_ptr ptr)
 {
 	struct v4l2_ctrl_mpeg2_slice_params *p_mpeg2_slice_params;
+	struct v4l2_ctrl_vp8_frame_header *p_vp8_frame_header;
 	void *p = ptr.p + idx * ctrl->elem_size;
 
 	switch ((u32)ctrl->type) {
@@ -1696,6 +1701,22 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 		break;
 
 	case V4L2_CTRL_TYPE_VP8_FRAME_HEADER:
+		p_vp8_frame_header = p;
+
+		switch (p_vp8_frame_header->num_dct_parts) {
+		case 1:
+		case 2:
+		case 4:
+		case 8:
+			break;
+		default:
+			return -EINVAL;
+		}
+		zero_padding(p_vp8_frame_header->segment_header);
+		zero_padding(p_vp8_frame_header->lf_header);
+		zero_padding(p_vp8_frame_header->quant_header);
+		zero_padding(p_vp8_frame_header->entropy_header);
+		zero_padding(p_vp8_frame_header->coder_state);
 		break;
 	default:
 		return -EINVAL;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
