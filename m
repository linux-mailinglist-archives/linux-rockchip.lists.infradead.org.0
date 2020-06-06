Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3E61F0636
	for <lists+linux-rockchip@lfdr.de>; Sat,  6 Jun 2020 12:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ke7U0qjZMwDJZbhMraYwKH1B+tDX+N5YPxOiz2gl+/Q=; b=dT9S/jWA1OJkCSDR5C4IkI0eAE
	UWhouBvYAl5r5ryDUdHD5k5WV7VxXhVavsv4qYIrBQk0rY24JEHkslJwntwrijvMOnrcN1JehnttW
	dqc5m7pxjCUzACEZKNNpVGjGgJpxXibzzWCQ5l4Kd30+Aq8NEmIcvlefpp1fCw9p3gtQZNWhYUGF3
	XR1TU3NMIAnOVSNUxsS/tWDsV7h3AdLmLS76LbOENjMIM4udbDE/NZmf1Lx21po9v7wDa4jugQLOt
	3TdkuAZx5m0r54zTkZRIr/PU1xnsKRJGSq+inMPBPG78xCKF8yVZfAQEtvYtbLXqcyNKEOoKf5vt8
	mSq1hQRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhWUh-0002jV-Hb; Sat, 06 Jun 2020 10:56:07 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhWUb-0002gQ-VV
 for linux-rockchip@lists.infradead.org; Sat, 06 Jun 2020 10:56:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id B5B2727E950
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH v4l-utils 4/4] v4l2-ctl: subdev: Add the flags to the list of
 supported mbus formats
Date: Sat,  6 Jun 2020 12:55:38 +0200
Message-Id: <20200606105538.30147-5-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200606105538.30147-1-dafna.hirschfeld@collabora.com>
References: <20200606105538.30147-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_035602_174123_EC98DFB0 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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

Add a new function mbus2s to that prints a descriptive
string of the supported flags of the the v4l2_subdev_mbus_code_enum
Use this function in the print_mbus_code function.
Also add a macro MBUS_DEF(enc_type) to create the two
arries 'mbus_hsv_def' and mbus_ycbcr_def' that maps flags to
string according to the enc_type (ycbcr/hsv)

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 utils/common/v4l2-info.cpp         | 17 +++++++++++++++++
 utils/common/v4l2-info.h           |  4 ++++
 utils/v4l2-ctl/v4l2-ctl-subdev.cpp | 10 ++++++++--
 3 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/utils/common/v4l2-info.cpp b/utils/common/v4l2-info.cpp
index 73ee4252..ed4cf807 100644
--- a/utils/common/v4l2-info.cpp
+++ b/utils/common/v4l2-info.cpp
@@ -386,6 +386,23 @@ std::string fmtdesc2s(unsigned flags, bool is_hsv)
 	return flags2s(flags, fmtdesc_ycbcr_def);
 }
 
+#define MBUS_DEF(enc_type)						\
+static const flag_def mbus_ ## enc_type ## _def[] = { 			\
+	{ V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION, "csc-quantization" }, \
+	{ V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC, "csc-"#enc_type },	\
+	{ 0, NULL }							\
+};
+
+MBUS_DEF(ycbcr)
+MBUS_DEF(hsv)
+
+std::string mbus2s(unsigned flags, bool is_hsv)
+{
+	if (is_hsv)
+		return flags2s(flags, mbus_hsv_def);
+	return flags2s(flags, mbus_ycbcr_def);
+}
+
 static const flag_def selection_targets_def[] = {
 	{ V4L2_SEL_TGT_CROP_ACTIVE, "crop" },
 	{ V4L2_SEL_TGT_CROP_DEFAULT, "crop_default" },
diff --git a/utils/common/v4l2-info.h b/utils/common/v4l2-info.h
index 5b34409c..97c1e64a 100644
--- a/utils/common/v4l2-info.h
+++ b/utils/common/v4l2-info.h
@@ -8,6 +8,7 @@
 
 #include <string>
 #include <linux/videodev2.h>
+#include <linux/v4l2-subdev.h>
 
 /* Print capability information */
 void v4l2_info_capability(const v4l2_capability &cap);
@@ -50,6 +51,9 @@ std::string pixflags2s(unsigned flags);
 /* Return sliced vbi services description */
 std::string service2s(unsigned service);
 
+/* Return v4l2_subdev_mbus_code_enum flags description */
+std::string mbus2s(unsigned flags, bool is_hsv);
+
 /* Return v4l2_fmtdesc flags description */
 std::string fmtdesc2s(unsigned flags, bool is_hsv);
 
diff --git a/utils/v4l2-ctl/v4l2-ctl-subdev.cpp b/utils/v4l2-ctl/v4l2-ctl-subdev.cpp
index bc9ee101..7fde042a 100644
--- a/utils/v4l2-ctl/v4l2-ctl-subdev.cpp
+++ b/utils/v4l2-ctl/v4l2-ctl-subdev.cpp
@@ -573,10 +573,10 @@ static void print_mbus_code(__u32 code)
 		if (mbus_names[i].code == code)
 			break;
 	if (mbus_names[i].name)
-		printf("\t0x%04x: MEDIA_BUS_FMT_%s\n",
+		printf("\t0x%04x: MEDIA_BUS_FMT_%s",
 		       mbus_names[i].code, mbus_names[i].name);
 	else
-		printf("\t0x%04x\n", code);
+		printf("\t0x%04x", code);
 }
 
 static void print_mbus_codes(int fd, __u32 pad)
@@ -593,6 +593,12 @@ static void print_mbus_codes(int fd, __u32 pad)
 		if (ret)
 			break;
 		print_mbus_code(mbus_code.code);
+		if (mbus_code.flags) {
+			bool is_hsv = mbus_code.code == MEDIA_BUS_FMT_AHSV8888_1X32;
+
+			printf(", %s", mbus2s(mbus_code.flags, is_hsv).c_str());
+		}
+		printf("\n");
 		mbus_code.index++;
 	}
 }
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
