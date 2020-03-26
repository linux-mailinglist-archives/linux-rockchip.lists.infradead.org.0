Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A500319488F
	for <lists+linux-rockchip@lfdr.de>; Thu, 26 Mar 2020 21:16:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+AwuntQ8mfX3iwUmHzmobEfFKLDqIDL6VnVk/6LlQfA=; b=HMDdN9+4leY5l0
	ZUeEJDSSuDTADLxEGVabkbLyzW+PBXP2EXXr7kr411P/5j6ZSPK/r0gZYRcP3ODbwalLJHBe9uHG7
	TTzeFBTU0xKuW3wWlOdxa2f3NXgoqeI4tOqqlMdtwUBB3PhRW3HRGdS2U5joLuCyx+7/JkzS/ADPU
	sPagooATWWBqHEQb67NLi3gsDqWXiSpjzayhXkOJv4lX+feVEIvmkB8l7GuSx2OLQBqs344zxyVj6
	ZbJmKpQ9Y1w5miJnPtjo8oVIXB/dHraJbqYcSQ3CIacHQG4esk3g/u5hG2lILp4tJEDIV53ySxrXs
	896YnfElCjkCK+45Gu0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHYvg-0005S4-S9; Thu, 26 Mar 2020 20:16:40 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHYvb-0005Nn-50
 for linux-rockchip@lists.infradead.org; Thu, 26 Mar 2020 20:16:36 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a02:810a:113f:ad1c:b024:988e:8796:31a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 187DE297A76;
 Thu, 26 Mar 2020 20:16:33 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH 4/4] media: staging: rkisp1: cap: remove unsupported formats
Date: Thu, 26 Mar 2020 21:16:10 +0100
Message-Id: <20200326201610.31762-5-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326201610.31762-1-dafna.hirschfeld@collabora.com>
References: <20200326201610.31762-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_131635_326946_619F6EED 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

For Ycbcr packed formats only YUYV can be supported by
the driver. This patch removes the other formats.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 21 -------------------
 1 file changed, 21 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 2d274e8f565b..076335193f40 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -98,15 +98,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 		.fmt_type = RKISP1_FMT_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
-	}, {
-		.fourcc = V4L2_PIX_FMT_YVYU,
-		.fmt_type = RKISP1_FMT_YUV,
-		.uv_swap = 1,
-		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
-	}, {
-		.fourcc = V4L2_PIX_FMT_VYUY,
-		.fmt_type = RKISP1_FMT_YUV,
-		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV422P,
 		.fmt_type = RKISP1_FMT_YUV,
@@ -234,18 +225,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
-	}, {
-		.fourcc = V4L2_PIX_FMT_YVYU,
-		.fmt_type = RKISP1_FMT_YUV,
-		.uv_swap = 1,
-		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
-	}, {
-		.fourcc = V4L2_PIX_FMT_VYUY,
-		.fmt_type = RKISP1_FMT_YUV,
-		.uv_swap = 1,
-		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV422P,
 		.fmt_type = RKISP1_FMT_YUV,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
