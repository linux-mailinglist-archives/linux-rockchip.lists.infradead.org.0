Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D0619D3A3
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 Apr 2020 11:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31X+R3GiOwuo5OD79+UE/opo+WukshtB0j+BGZyGw1U=; b=GmXxl7Pi6I3kFC
	ccS23tL5gEJO+Z77oVyjaqMeKT6754GEIrEpIiOWJhJ6+YpNq1+cryG0HKW3E9agM9ev0SscU+3HE
	rXIdEwtsLEAOwUcAuBvKF9c+tkoUCy7ZnhrwQbnFR6mhOzGxfD4+Oo9rkQ69EICfVsBehHOKTbT/B
	79EIK1bMngF9HCioJPJUS5JHv/gg83J/F/rsJqZnT1vN69TXLewm/Ix/LzCLgu2/k75jnhK3V/XcB
	aDQwr7eBJfANK+s1AxaUQ6jwLf72iG7MU//6Rs+w09dlEZsDQOCmmGykKQhSuyY/IVkZH+TO81qxc
	tJd6iTJeJPdYOJZLby4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIcD-00074G-UL; Fri, 03 Apr 2020 09:27:53 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIc9-00071Z-9P
 for linux-rockchip@lists.infradead.org; Fri, 03 Apr 2020 09:27:51 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a02:810a:1140:6758:20a2:167a:3b62:26be])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 86BED2984FB;
 Fri,  3 Apr 2020 10:27:47 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org, sakari.ailus@linux.intel.com
Subject: [PATCH v2 2/2] media: staging: rkisp1: cap: remove field fmt_type
 from struct rkisp1_capture_fmt_cfg
Date: Fri,  3 Apr 2020 11:27:38 +0200
Message-Id: <20200403092738.29831-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200403092738.29831-1-dafna.hirschfeld@collabora.com>
References: <20200403092738.29831-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_022749_591501_DD8C63C0 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

The pixel encoding can be retrieved from the cap->pix.info.
Therefore the field fmt_type can be removed from the
struct rkisp1_capture_fmt_cfg.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 51 +------------------
 1 file changed, 2 insertions(+), 49 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 8e8ea7ed8de3..0bef5faf068e 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -52,7 +52,6 @@ enum rkisp1_plane {
  */
 struct rkisp1_capture_fmt_cfg {
 	u32 fourcc;
-	u8 fmt_type;
 	u8 uv_swap;
 	u32 write_format;
 	u32 output_format;
@@ -87,133 +86,106 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 	/* yuv422 */
 	{
 		.fourcc = V4L2_PIX_FMT_YUYV,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVYU,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
 	}, {
 		.fourcc = V4L2_PIX_FMT_VYUY,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV422P,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV16,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV61,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVU422M,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	},
 	/* yuv420 */
 	{
 		.fourcc = V4L2_PIX_FMT_NV21,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV12,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV21M,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV12M,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV420,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVU420,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	},
 	/* yuv444 */
 	{
 		.fourcc = V4L2_PIX_FMT_YUV444M,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	},
 	/* yuv400 */
 	{
 		.fourcc = V4L2_PIX_FMT_GREY,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
 	},
 	/* raw */
 	{
 		.fourcc = V4L2_PIX_FMT_SRGGB8,
-		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGRBG8,
-		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGBRG8,
-		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SBGGR8,
-		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SRGGB10,
-		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGRBG10,
-		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGBRG10,
-		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SBGGR10,
-		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SRGGB12,
-		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGRBG12,
-		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGBRG12,
-		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SBGGR12,
-		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
 	},
 };
@@ -222,43 +194,36 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 	/* yuv422 */
 	{
 		.fourcc = V4L2_PIX_FMT_YUYV,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVYU,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 	}, {
 		.fourcc = V4L2_PIX_FMT_VYUY,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV422P,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV16,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV61,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVU422M,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
@@ -266,37 +231,31 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 	/* yuv420 */
 	{
 		.fourcc = V4L2_PIX_FMT_NV21,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV12,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV21M,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV12M,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV420,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVU420,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
@@ -304,7 +263,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 	/* yuv444 */
 	{
 		.fourcc = V4L2_PIX_FMT_YUV444M,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV444,
@@ -312,7 +270,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 	/* yuv400 */
 	{
 		.fourcc = V4L2_PIX_FMT_GREY,
-		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV400,
@@ -320,17 +277,14 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 	/* rgb */
 	{
 		.fourcc = V4L2_PIX_FMT_RGB24,
-		.fmt_type = V4L2_PIXEL_ENC_RGB,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB888,
 	}, {
 		.fourcc = V4L2_PIX_FMT_RGB565,
-		.fmt_type = V4L2_PIXEL_ENC_RGB,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB565,
 	}, {
 		.fourcc = V4L2_PIX_FMT_BGR666,
-		.fmt_type = V4L2_PIXEL_ENC_RGB,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB666,
 	},
@@ -504,13 +458,12 @@ static void rkisp1_sp_disable(struct rkisp1_capture *cap)
 
 static void rkisp1_mp_enable(struct rkisp1_capture *cap)
 {
-	const struct rkisp1_capture_fmt_cfg *isp_fmt = cap->pix.cfg;
 	u32 mi_ctrl;
 
 	rkisp1_mp_disable(cap);
 
 	mi_ctrl = rkisp1_read(cap->rkisp1, RKISP1_CIF_MI_CTRL);
-	if (isp_fmt->fmt_type == V4L2_PIXEL_ENC_BAYER)
+	if (v4l2_is_format_bayer(cap->pix.info))
 		mi_ctrl |= RKISP1_CIF_MI_CTRL_RAW_ENABLE;
 	/* YUV */
 	else
@@ -1265,7 +1218,7 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 		return -EPIPE;
 	}
 
-	if (cap->pix.cfg->fmt_type != isp->src_fmt->fmt_type) {
+	if (cap->pix.info->pixel_enc != isp->src_fmt->fmt_type) {
 		dev_err(cap->rkisp1->dev,
 			"format type mismatch in link '%s:%d->%s:%d'\n",
 			link->source->entity->name, link->source->index,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
