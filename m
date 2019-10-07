Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3239CCEAED
	for <lists+linux-rockchip@lfdr.de>; Mon,  7 Oct 2019 19:47:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PXh9eO+9Ojnp8so60TNES8KsQrAxyzvNRqSu2piHkGk=; b=uwN3NBETbhZs4o
	yXRG2Djw3MFCwnOjlLoUlSMQ2sswimyI1buxdDbKuuNW9jFJkAgL0JSVI0co/dECc5kOHYv2nAnWS
	ars8J++4GDXz3JMlqCTLyAb89ezODgTsVnbjBvvHUYEuh5DPj/zMcRhfNWHEJ85cadvx5zbnUpRWo
	1MSamVUM6p/lpbJwpvPmwuP5C4CAvq/kM39AHNaGb8FmetMGvFejGepxIGrkceyCLHyTr+YHjCcon
	ZUjjyl0ChzR/6PkedepfkGPCnCANvI24goFzDTVt72AYS+fouPtkfjGJ9bMcx9rIuNcydzi737zNe
	Lrl+FY7j2onDsaLiFuyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHX6B-0003Yr-EX; Mon, 07 Oct 2019 17:47:07 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHX68-0003WU-JC
 for linux-rockchip@lists.infradead.org; Mon, 07 Oct 2019 17:47:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id D87EB28D41F
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 for 5.4 4/4] media: hantro: Fix picture order count table
 enable
Date: Mon,  7 Oct 2019 14:45:05 -0300
Message-Id: <20191007174505.10681-5-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191007174505.10681-1-ezequiel@collabora.com>
References: <20191007174505.10681-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_104704_763357_06704165 
X-CRM114-Status: UNSURE (   9.65  )
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
Cc: Douglas Anderson <dianders@chromium.org>, fbuergisser@chromium.org,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Francois Buergisser <fbuergisser@chromium.org>

The picture order count table only makes sense for profiles
higher than Baseline. This is confirmed by the H.264 specification
(See 8.2.1 Decoding process for picture order count), which
clarifies how POC are used for features not present in Baseline.

"""
Picture order counts are used to determine initial picture orderings
for reference pictures in the decoding of B slices, to represent picture
order differences between frames or fields for motion vector derivation
in temporal direct mode, for implicit mode weighted prediction in B slices,
and for decoder conformance checking.
"""

As a side note, this change matches various vendors downstream codebases,
including ChromiumOS and IMX VPU libraries.

Fixes: dea0a82f3d22 ("media: hantro: Add support for H264 decoding on G1")
Signed-off-by: Francois Buergisser <fbuergisser@chromium.org>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
v2:
* New patch.

 drivers/staging/media/hantro/hantro_g1_h264_dec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
index c92460407613..05576dbd39e2 100644
--- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
@@ -34,9 +34,9 @@ static void set_params(struct hantro_ctx *ctx)
 	reg = G1_REG_DEC_CTRL0_DEC_AXI_WR_ID(0x0);
 	if (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)
 		reg |= G1_REG_DEC_CTRL0_SEQ_MBAFF_E;
-	reg |= G1_REG_DEC_CTRL0_PICORD_COUNT_E;
 	if (sps->profile_idc > 66)
-		reg |= G1_REG_DEC_CTRL0_WRITE_MVS_E;
+		reg = G1_REG_DEC_CTRL0_PICORD_COUNT_E |
+		      G1_REG_DEC_CTRL0_WRITE_MVS_E;
 
 	if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY) &&
 	    (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD ||
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
