Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAED1F063A
	for <lists+linux-rockchip@lfdr.de>; Sat,  6 Jun 2020 12:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7aMv+Xx3/x07IP/PelDaFPaYXShQ51+4FfYtSF1Ycwc=; b=Lwiv7dAXWpd4x8bhHwBGbYCwCq
	koP0WXDFAzSWmv9EWDQdhukzxKNoXtTb2j35jxvlxDsiLg4lZvo5MkezUlVVwB9+D+xcNH3AJmnz1
	EHWneQy32mHR1nZ8IRVFSf70MR1Tq8Lcln91vspNAsrST9a+TCd09Z7SfK5AZvRKtv4wARBPnaZR8
	btC+yDfTtymlpPIarGcRUprlb3hMzsu9DZIk/HZfVtuQR+LxtGnn5gOHugDGNKSLKVk81GiYPK7qI
	OPrMvLL+NoeLDcyKrU5W+Upd0DrGiu39a7k3Ijy7zun00fA8Y6gBC05gn3J1l6UHg2O5AJU4BhLcr
	zKRY6yGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhWUg-0002ir-Rp; Sat, 06 Jun 2020 10:56:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhWUb-0002gN-Vg
 for linux-rockchip@lists.infradead.org; Sat, 06 Jun 2020 10:56:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id B4E58263992
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH v4l-utils 1/4] v4l2-ctl: vidcap: Add support for the CSC API
Date: Sat,  6 Jun 2020 12:55:35 +0200
Message-Id: <20200606105538.30147-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200606105538.30147-1-dafna.hirschfeld@collabora.com>
References: <20200606105538.30147-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_035602_167930_BEF8E90C 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, p.zabel@pengutronix.de,
 dafna3@gmail.com, tfiga@chromium.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 sakari.ailus@linux.intel.com, skhan@linuxfoundation.org, kernel@collabora.com,
 ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

With the CSC API, capture drivers can allow userspace to request
to set the quantization or the ycbcr_enc/hsv_enc fields of the
pixelformat. This patch adds supports for this feature.
when calling 'v4l2-ctl --set-fmt-video' on capture devices
userspace can ask to change the quantization or the ycbcr/hsv_enc
of the format if the driver supports it.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 utils/v4l2-compliance/v4l2-test-formats.cpp |  3 ++-
 utils/v4l2-ctl/v4l2-ctl-vidcap.cpp          | 22 +++++++++++++++++++--
 2 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/utils/v4l2-compliance/v4l2-test-formats.cpp b/utils/v4l2-compliance/v4l2-test-formats.cpp
index e1b00f3c..085f4986 100644
--- a/utils/v4l2-compliance/v4l2-test-formats.cpp
+++ b/utils/v4l2-compliance/v4l2-test-formats.cpp
@@ -264,7 +264,8 @@ static int testEnumFormatsType(struct node *node, unsigned type)
 			return fail("drivers must never set the emulated flag\n");
 		if (fmtdesc.flags & ~(V4L2_FMT_FLAG_COMPRESSED | V4L2_FMT_FLAG_EMULATED |
 				      V4L2_FMT_FLAG_CONTINUOUS_BYTESTREAM |
-				      V4L2_FMT_FLAG_DYN_RESOLUTION))
+				      V4L2_FMT_FLAG_DYN_RESOLUTION | V4L2_FMT_FLAG_CSC_YCBCR_ENC |
+				      V4L2_FMT_FLAG_CSC_HSV_ENC | V4L2_FMT_FLAG_CSC_QUANTIZATION))
 			return fail("unknown flag %08x returned\n", fmtdesc.flags);
 		if (!(fmtdesc.flags & V4L2_FMT_FLAG_COMPRESSED))
 			fail_on_test(fmtdesc.flags & (V4L2_FMT_FLAG_CONTINUOUS_BYTESTREAM |
diff --git a/utils/v4l2-ctl/v4l2-ctl-vidcap.cpp b/utils/v4l2-ctl/v4l2-ctl-vidcap.cpp
index 80312b51..5cb529c8 100644
--- a/utils/v4l2-ctl/v4l2-ctl-vidcap.cpp
+++ b/utils/v4l2-ctl/v4l2-ctl-vidcap.cpp
@@ -21,6 +21,7 @@ static struct v4l2_frmsizeenum frmsize; /* list frame sizes */
 static struct v4l2_frmivalenum frmival; /* list frame intervals */
 static unsigned set_fmts;
 static __u32 width, height, pixfmt, field, flags;
+static __u32 ycbcr, quantization;
 static __u32 bytesperline[VIDEO_MAX_PLANES];
 static __u32 sizeimage[VIDEO_MAX_PLANES];
 
@@ -101,7 +102,7 @@ static void print_video_fields(int fd)
 
 void vidcap_cmd(int ch, char *optarg)
 {
-	__u32 colorspace, xfer_func, ycbcr, quantization;
+	__u32 colorspace, xfer_func;
 	char *value, *subs;
 	bool be_pixfmt;
 
@@ -112,7 +113,7 @@ void vidcap_cmd(int ch, char *optarg)
 				xfer_func, ycbcr, quantization, flags, bytesperline,
 				sizeimage);
 		if (!set_fmts ||
-		    (set_fmts & (FmtColorspace | FmtYCbCr | FmtQuantization | FmtXferFunc))) {
+		    (set_fmts & (FmtColorspace | FmtXferFunc))) {
 			vidcap_usage();
 			std::exit(EXIT_FAILURE);
 		}
@@ -220,6 +221,15 @@ int vidcap_get_and_update_fmt(cv4l_fd &_fd, struct v4l2_format &vfmt)
 				vfmt.fmt.pix_mp.plane_fmt[i].sizeimage =
 					sizeimage[i];
 		}
+
+		if (set_fmts & FmtYCbCr) {
+			vfmt.fmt.pix_mp.flags |= V4L2_PIX_FMT_FLAG_SET_CSC;
+			vfmt.fmt.pix_mp.ycbcr_enc = ycbcr;
+		}
+		if (set_fmts & FmtQuantization) {
+			vfmt.fmt.pix_mp.flags |= V4L2_PIX_FMT_FLAG_SET_CSC;
+			vfmt.fmt.pix_mp.quantization = quantization;
+		}
 	} else {
 		if (set_fmts & FmtWidth)
 			vfmt.fmt.pix.width = width;
@@ -249,6 +259,14 @@ int vidcap_get_and_update_fmt(cv4l_fd &_fd, struct v4l2_format &vfmt)
 		}
 		if (set_fmts & FmtSizeImage)
 			vfmt.fmt.pix.sizeimage = sizeimage[0];
+		if (set_fmts & FmtYCbCr) {
+			vfmt.fmt.pix.flags |= V4L2_PIX_FMT_FLAG_SET_CSC;
+			vfmt.fmt.pix.ycbcr_enc = ycbcr;
+		}
+		if (set_fmts & FmtQuantization) {
+			vfmt.fmt.pix.flags |= V4L2_PIX_FMT_FLAG_SET_CSC;
+			vfmt.fmt.pix.quantization = quantization;
+		}
 	}
 
 	if ((set_fmts & FmtPixelFormat) &&
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
