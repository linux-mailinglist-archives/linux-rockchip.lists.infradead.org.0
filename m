Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B0D19FD93
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Apr 2020 20:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0UWXq51WSPZEh9dzIJY59BfhOotF7mdRZc9d2XZY1U=; b=LKNyT5nf/amBH7
	zClgFenqbV1aWMNRl6xhpBBGUL1lIUUDPJQedSf1s+o/GgmmaCabQTjjCzipsi06UTZdqDfGZ4Erd
	65oezNGICVqP057dQP1eKXpePwOhN0IWWVK66v4zVQ5qHwMHDv+E9VhTtEMFkrZdgynmarHU1+uVd
	dWwHcaFanP+Y+fb2OpePIQd4DL4KVvi2lWmfy07BAcWxrLqqE7G0yXrYdBtP6PfkezOaUNDJQ590u
	dCbnaPUh7ufWRO9eri4SkkLDoASUzrxBeALrjZsIJ7QV7MmoHl6GpYjaHu8aolYrSM7F7TZNsfJRT
	NCZ61DlxcLYwux4sAGGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLWrV-000479-Ik; Mon, 06 Apr 2020 18:52:45 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLWrR-000459-Dd
 for linux-rockchip@lists.infradead.org; Mon, 06 Apr 2020 18:52:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id D0CA7296B35
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 1/3] media: staging: rkisp1: replace rkisp1_fmt_pix_type
 with v4l2_pixel_encoding
Date: Mon,  6 Apr 2020 20:52:33 +0200
Message-Id: <20200406185235.21238-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200406185235.21238-1-dafna.hirschfeld@collabora.com>
References: <20200406185235.21238-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_115241_727780_2540C17D 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The enum rkisp1_fmt_pix_type that holds the pixel format
which is one of RGB, YUV, BAYER, can be replace by the
v4l2 enum v4l2_pixel_encoding.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 92 +++++++++----------
 drivers/staging/media/rkisp1/rkisp1-common.h  | 11 +--
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 42 ++++-----
 drivers/staging/media/rkisp1/rkisp1-resizer.c |  8 +-
 4 files changed, 73 insertions(+), 80 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 45d237a77ca4..8e8ea7ed8de3 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -87,133 +87,133 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 	/* yuv422 */
 	{
 		.fourcc = V4L2_PIX_FMT_YUYV,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVYU,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
 	}, {
 		.fourcc = V4L2_PIX_FMT_VYUY,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV422P,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV16,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV61,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVU422M,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	},
 	/* yuv420 */
 	{
 		.fourcc = V4L2_PIX_FMT_NV21,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV12,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV21M,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV12M,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV420,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVU420,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	},
 	/* yuv444 */
 	{
 		.fourcc = V4L2_PIX_FMT_YUV444M,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	},
 	/* yuv400 */
 	{
 		.fourcc = V4L2_PIX_FMT_GREY,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
 	},
 	/* raw */
 	{
 		.fourcc = V4L2_PIX_FMT_SRGGB8,
-		.fmt_type = RKISP1_FMT_BAYER,
+		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGRBG8,
-		.fmt_type = RKISP1_FMT_BAYER,
+		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGBRG8,
-		.fmt_type = RKISP1_FMT_BAYER,
+		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SBGGR8,
-		.fmt_type = RKISP1_FMT_BAYER,
+		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SRGGB10,
-		.fmt_type = RKISP1_FMT_BAYER,
+		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGRBG10,
-		.fmt_type = RKISP1_FMT_BAYER,
+		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGBRG10,
-		.fmt_type = RKISP1_FMT_BAYER,
+		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SBGGR10,
-		.fmt_type = RKISP1_FMT_BAYER,
+		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SRGGB12,
-		.fmt_type = RKISP1_FMT_BAYER,
+		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGRBG12,
-		.fmt_type = RKISP1_FMT_BAYER,
+		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGBRG12,
-		.fmt_type = RKISP1_FMT_BAYER,
+		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SBGGR12,
-		.fmt_type = RKISP1_FMT_BAYER,
+		.fmt_type = V4L2_PIXEL_ENC_BAYER,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
 	},
 };
@@ -222,43 +222,43 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 	/* yuv422 */
 	{
 		.fourcc = V4L2_PIX_FMT_YUYV,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVYU,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 	}, {
 		.fourcc = V4L2_PIX_FMT_VYUY,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV422P,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV16,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV61,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVU422M,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
@@ -266,37 +266,37 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 	/* yuv420 */
 	{
 		.fourcc = V4L2_PIX_FMT_NV21,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV12,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV21M,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV12M,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV420,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVU420,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
@@ -304,7 +304,7 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 	/* yuv444 */
 	{
 		.fourcc = V4L2_PIX_FMT_YUV444M,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV444,
@@ -312,7 +312,7 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 	/* yuv400 */
 	{
 		.fourcc = V4L2_PIX_FMT_GREY,
-		.fmt_type = RKISP1_FMT_YUV,
+		.fmt_type = V4L2_PIXEL_ENC_YUV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV400,
@@ -320,17 +320,17 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 	/* rgb */
 	{
 		.fourcc = V4L2_PIX_FMT_RGB24,
-		.fmt_type = RKISP1_FMT_RGB,
+		.fmt_type = V4L2_PIXEL_ENC_RGB,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB888,
 	}, {
 		.fourcc = V4L2_PIX_FMT_RGB565,
-		.fmt_type = RKISP1_FMT_RGB,
+		.fmt_type = V4L2_PIXEL_ENC_RGB,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB565,
 	}, {
 		.fourcc = V4L2_PIX_FMT_BGR666,
-		.fmt_type = RKISP1_FMT_RGB,
+		.fmt_type = V4L2_PIXEL_ENC_RGB,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB666,
 	},
@@ -510,7 +510,7 @@ static void rkisp1_mp_enable(struct rkisp1_capture *cap)
 	rkisp1_mp_disable(cap);
 
 	mi_ctrl = rkisp1_read(cap->rkisp1, RKISP1_CIF_MI_CTRL);
-	if (isp_fmt->fmt_type == RKISP1_FMT_BAYER)
+	if (isp_fmt->fmt_type == V4L2_PIXEL_ENC_BAYER)
 		mi_ctrl |= RKISP1_CIF_MI_CTRL_RAW_ENABLE;
 	/* YUV */
 	else
diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 18507f5b6f3c..c8625747c279 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -52,13 +52,6 @@ enum rkisp1_stream_id {
 	RKISP1_SELFPATH,
 };
 
-enum rkisp1_fmt_pix_type {
-	RKISP1_FMT_YUV,
-	RKISP1_FMT_RGB,
-	RKISP1_FMT_BAYER,
-	RKISP1_FMT_JPEG,
-};
-
 enum rkisp1_fmt_raw_pat_type {
 	RKISP1_RAW_RGGB = 0,
 	RKISP1_RAW_GRBG,
@@ -225,7 +218,7 @@ struct rkisp1_resizer {
 	struct media_pad pads[RKISP1_ISP_PAD_MAX];
 	struct v4l2_subdev_pad_config pad_cfg[RKISP1_ISP_PAD_MAX];
 	const struct rkisp1_rsz_config *config;
-	enum rkisp1_fmt_pix_type fmt_type;
+	enum v4l2_pixel_encoding fmt_type;
 	struct mutex ops_lock;
 };
 
@@ -278,7 +271,7 @@ struct rkisp1_device {
  */
 struct rkisp1_isp_mbus_info {
 	u32 mbus_code;
-	enum rkisp1_fmt_pix_type fmt_type;
+	enum v4l2_pixel_encoding fmt_type;
 	u32 mipi_dt;
 	u32 yuv_seq;
 	u8 bus_width;
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index a41c6ff14009..98a74603327a 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -61,116 +61,116 @@
 static const struct rkisp1_isp_mbus_info rkisp1_isp_formats[] = {
 	{
 		.mbus_code	= MEDIA_BUS_FMT_YUYV8_2X8,
-		.fmt_type	= RKISP1_FMT_YUV,
+		.fmt_type	= V4L2_PIXEL_ENC_YUV,
 		.direction	= RKISP1_DIR_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SRGGB10_1X10,
-		.fmt_type	= RKISP1_FMT_BAYER,
+		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
 		.bayer_pat	= RKISP1_RAW_RGGB,
 		.bus_width	= 10,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SBGGR10_1X10,
-		.fmt_type	= RKISP1_FMT_BAYER,
+		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
 		.bayer_pat	= RKISP1_RAW_BGGR,
 		.bus_width	= 10,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGBRG10_1X10,
-		.fmt_type	= RKISP1_FMT_BAYER,
+		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
 		.bayer_pat	= RKISP1_RAW_GBRG,
 		.bus_width	= 10,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGRBG10_1X10,
-		.fmt_type	= RKISP1_FMT_BAYER,
+		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
 		.bayer_pat	= RKISP1_RAW_GRBG,
 		.bus_width	= 10,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SRGGB12_1X12,
-		.fmt_type	= RKISP1_FMT_BAYER,
+		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
 		.bayer_pat	= RKISP1_RAW_RGGB,
 		.bus_width	= 12,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SBGGR12_1X12,
-		.fmt_type	= RKISP1_FMT_BAYER,
+		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
 		.bayer_pat	= RKISP1_RAW_BGGR,
 		.bus_width	= 12,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGBRG12_1X12,
-		.fmt_type	= RKISP1_FMT_BAYER,
+		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
 		.bayer_pat	= RKISP1_RAW_GBRG,
 		.bus_width	= 12,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGRBG12_1X12,
-		.fmt_type	= RKISP1_FMT_BAYER,
+		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
 		.bayer_pat	= RKISP1_RAW_GRBG,
 		.bus_width	= 12,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SRGGB8_1X8,
-		.fmt_type	= RKISP1_FMT_BAYER,
+		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
 		.bayer_pat	= RKISP1_RAW_RGGB,
 		.bus_width	= 8,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SBGGR8_1X8,
-		.fmt_type	= RKISP1_FMT_BAYER,
+		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
 		.bayer_pat	= RKISP1_RAW_BGGR,
 		.bus_width	= 8,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGBRG8_1X8,
-		.fmt_type	= RKISP1_FMT_BAYER,
+		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
 		.bayer_pat	= RKISP1_RAW_GBRG,
 		.bus_width	= 8,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_SGRBG8_1X8,
-		.fmt_type	= RKISP1_FMT_BAYER,
+		.fmt_type	= V4L2_PIXEL_ENC_BAYER,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
 		.bayer_pat	= RKISP1_RAW_GRBG,
 		.bus_width	= 8,
 		.direction	= RKISP1_DIR_SINK_SRC,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_YUYV8_1X16,
-		.fmt_type	= RKISP1_FMT_YUV,
+		.fmt_type	= V4L2_PIXEL_ENC_YUV,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
 		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_YCBYCR,
 		.bus_width	= 16,
 		.direction	= RKISP1_DIR_SINK,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_YVYU8_1X16,
-		.fmt_type	= RKISP1_FMT_YUV,
+		.fmt_type	= V4L2_PIXEL_ENC_YUV,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
 		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_YCRYCB,
 		.bus_width	= 16,
 		.direction	= RKISP1_DIR_SINK,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_UYVY8_1X16,
-		.fmt_type	= RKISP1_FMT_YUV,
+		.fmt_type	= V4L2_PIXEL_ENC_YUV,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
 		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_CBYCRY,
 		.bus_width	= 16,
 		.direction	= RKISP1_DIR_SINK,
 	}, {
 		.mbus_code	= MEDIA_BUS_FMT_VYUY8_1X16,
-		.fmt_type	= RKISP1_FMT_YUV,
+		.fmt_type	= V4L2_PIXEL_ENC_YUV,
 		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
 		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_CRYCBY,
 		.bus_width	= 16,
@@ -288,9 +288,9 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1)
 					    RKISP1_ISP_PAD_SINK_VIDEO,
 					    V4L2_SUBDEV_FORMAT_ACTIVE);
 
-	if (sink_fmt->fmt_type == RKISP1_FMT_BAYER) {
+	if (sink_fmt->fmt_type == V4L2_PIXEL_ENC_BAYER) {
 		acq_mult = 1;
-		if (src_fmt->fmt_type == RKISP1_FMT_BAYER) {
+		if (src_fmt->fmt_type == V4L2_PIXEL_ENC_BAYER) {
 			if (sensor->mbus.type == V4L2_MBUS_BT656)
 				isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_RAW_PICT_ITU656;
 			else
@@ -304,7 +304,7 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1)
 			else
 				isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_BAYER_ITU601;
 		}
-	} else if (sink_fmt->fmt_type == RKISP1_FMT_YUV) {
+	} else if (sink_fmt->fmt_type == V4L2_PIXEL_ENC_YUV) {
 		acq_mult = 2;
 		if (sensor->mbus.type == V4L2_MBUS_CSI2_DPHY) {
 			isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_ITU601;
@@ -357,7 +357,7 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1)
 		    RKISP1_CIF_ISP_PIC_SIZE_ERROR | RKISP1_CIF_ISP_FRAME_IN;
 	rkisp1_write(rkisp1, irq_mask, RKISP1_CIF_ISP_IMSC);
 
-	if (src_fmt->fmt_type == RKISP1_FMT_BAYER) {
+	if (src_fmt->fmt_type == V4L2_PIXEL_ENC_BAYER) {
 		rkisp1_params_disable(&rkisp1->params);
 	} else {
 		struct v4l2_mbus_framefmt *src_frm;
diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 87799fbf0363..eaf28d421676 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -14,7 +14,7 @@
 #define RKISP1_RSZ_MP_DEV_NAME	RKISP1_DRIVER_NAME "_resizer_mainpath"
 
 #define RKISP1_DEF_FMT MEDIA_BUS_FMT_YUYV8_2X8
-#define RKISP1_DEF_FMT_TYPE RKISP1_FMT_YUV
+#define RKISP1_DEF_FMT_TYPE V4L2_PIXEL_ENC_YUV
 
 #define RKISP1_MBUS_FMT_HDIV 2
 #define RKISP1_MBUS_FMT_VDIV 1
@@ -371,7 +371,7 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 	src_fmt = rkisp1_rsz_get_pad_fmt(rsz, NULL, RKISP1_RSZ_PAD_SRC,
 					 V4L2_SUBDEV_FORMAT_ACTIVE);
 
-	if (rsz->fmt_type == RKISP1_FMT_BAYER) {
+	if (rsz->fmt_type == V4L2_PIXEL_ENC_BAYER) {
 		rkisp1_rsz_disable(rsz, when);
 		return;
 	}
@@ -384,7 +384,7 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 	sink_c.width = sink_y.width / RKISP1_MBUS_FMT_HDIV;
 	sink_c.height = sink_y.height / RKISP1_MBUS_FMT_VDIV;
 
-	if (rsz->fmt_type == RKISP1_FMT_YUV) {
+	if (rsz->fmt_type == V4L2_PIXEL_ENC_YUV) {
 		struct rkisp1_capture *cap =
 			&rsz->rkisp1->capture_devs[rsz->id];
 		const struct v4l2_format_info *pixfmt_info =
@@ -498,7 +498,7 @@ static void rkisp1_rsz_set_sink_crop(struct rkisp1_resizer *rsz,
 	mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
 
 	if (rsz->id == RKISP1_MAINPATH &&
-	    mbus_info->fmt_type == RKISP1_FMT_BAYER) {
+	    mbus_info->fmt_type == V4L2_PIXEL_ENC_BAYER) {
 		sink_crop->left = 0;
 		sink_crop->top = 0;
 		sink_crop->width = sink_fmt->width;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
