Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D8E1F0638
	for <lists+linux-rockchip@lfdr.de>; Sat,  6 Jun 2020 12:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H7dxgYDzMRKa6daddaHXFHSllyxfT7XDOBoZ9eKFIG4=; b=eX91Aw7lUHPIFJenf8kLyW//xp
	nMNkAcp/iq2WhyC7nhrDmCpA+iNG3EJCHzSqs1IujubQqxbpCIywc7cA3QyH5IyOM71ozslNU98AU
	I/qpU0d8CgJA3yUEM/2gh5ndnYvQun9VjMYsgSRFzS9qmAke3LupEBIv7c01Sw54fihpeHD14DTny
	HjmdBCiMKA8SUNzTrXchqLwuunYwuBCQZiYi6+PQrhkP08jtL8btXMSyumiopba9ADgSRv0kKozw4
	0smdjLN9Upj8E8bvTIuPJrwrXYNURF97mraxX1FUdRNqZtTSh3ThVWckbrmcx/G/T/OO1HZrwl5wS
	ecYX2tCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhWUg-0002iQ-AC; Sat, 06 Jun 2020 10:56:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhWUb-0002gM-Vh
 for linux-rockchip@lists.infradead.org; Sat, 06 Jun 2020 10:56:03 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 649DC27E7B5
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH v4l-utils 2/4] v4l2: common: add the flags V4L2_FMT_FLAG_CSC*
 to the list that maps flags to str
Date: Sat,  6 Jun 2020 12:55:36 +0200
Message-Id: <20200606105538.30147-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200606105538.30147-1-dafna.hirschfeld@collabora.com>
References: <20200606105538.30147-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_035602_163430_0A557EEE 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
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

Replace the array fmtdesc_def with a macro 'FMTDESC_DEF'
The macro is used to to create two arrays 'fmtdesc_def_ycbcr',
'fmtdesc_def_hsv' that map the format flags to strings.
The function 'fmtdesc2s' is changed to get a parameter 'is_hsv'
that decides which array to use.
The new CSC flags V4L2_FMT_FLAG_CSC* are added to the arries.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 utils/common/v4l2-info.cpp  | 24 ++++++++++++++++--------
 utils/common/v4l2-info.h    |  2 +-
 utils/v4l2-ctl/v4l2-ctl.cpp | 16 ++++++++++++----
 3 files changed, 29 insertions(+), 13 deletions(-)

diff --git a/utils/common/v4l2-info.cpp b/utils/common/v4l2-info.cpp
index 0aac8504..73ee4252 100644
--- a/utils/common/v4l2-info.cpp
+++ b/utils/common/v4l2-info.cpp
@@ -365,17 +365,25 @@ std::string service2s(unsigned service)
 	return flags2s(service, service_def);
 }
 
-static const flag_def fmtdesc_def[] = {
-	{ V4L2_FMT_FLAG_COMPRESSED, "compressed" },
-	{ V4L2_FMT_FLAG_EMULATED, "emulated" },
-	{ V4L2_FMT_FLAG_CONTINUOUS_BYTESTREAM, "continuous-bytestream" },
-	{ V4L2_FMT_FLAG_DYN_RESOLUTION, "dyn-resolution" },
-	{ 0, NULL }
+#define FMTDESC_DEF(enc_type)							\
+static const flag_def fmtdesc_ ## enc_type ## _def[] = { 			\
+	{ V4L2_FMT_FLAG_COMPRESSED, "compressed" }, 				\
+	{ V4L2_FMT_FLAG_EMULATED, "emulated" }, 				\
+	{ V4L2_FMT_FLAG_CONTINUOUS_BYTESTREAM, "continuous-bytestream" }, 	\
+	{ V4L2_FMT_FLAG_DYN_RESOLUTION, "dyn-resolution" }, 			\
+	{ V4L2_FMT_FLAG_CSC_YCBCR_ENC, "csc-"#enc_type }, 			\
+	{ V4L2_FMT_FLAG_CSC_QUANTIZATION, "csc-quantization" }, 		\
+	{ 0, NULL } 								\
 };
 
-std::string fmtdesc2s(unsigned flags)
+FMTDESC_DEF(ycbcr)
+FMTDESC_DEF(hsv)
+
+std::string fmtdesc2s(unsigned flags, bool is_hsv)
 {
-	return flags2s(flags, fmtdesc_def);
+	if (is_hsv)
+		return flags2s(flags, fmtdesc_hsv_def);
+	return flags2s(flags, fmtdesc_ycbcr_def);
 }
 
 static const flag_def selection_targets_def[] = {
diff --git a/utils/common/v4l2-info.h b/utils/common/v4l2-info.h
index ce2600f0..5b34409c 100644
--- a/utils/common/v4l2-info.h
+++ b/utils/common/v4l2-info.h
@@ -51,7 +51,7 @@ std::string pixflags2s(unsigned flags);
 std::string service2s(unsigned service);
 
 /* Return v4l2_fmtdesc flags description */
-std::string fmtdesc2s(unsigned flags);
+std::string fmtdesc2s(unsigned flags, bool is_hsv);
 
 /* Return selection flags description */
 std::string selflags2s(__u32 flags);
diff --git a/utils/v4l2-ctl/v4l2-ctl.cpp b/utils/v4l2-ctl/v4l2-ctl.cpp
index e7b270cd..f7bc78fb 100644
--- a/utils/v4l2-ctl/v4l2-ctl.cpp
+++ b/utils/v4l2-ctl/v4l2-ctl.cpp
@@ -615,8 +615,12 @@ void print_video_formats(cv4l_fd &fd, __u32 type)
 	do {
 		printf("\t[%d]: '%s' (%s", fmt.index, fcc2s(fmt.pixelformat).c_str(),
 		       fmt.description);
-		if (fmt.flags)
-			printf(", %s", fmtdesc2s(fmt.flags).c_str());
+		if (fmt.flags) {
+			bool is_hsv = fmt.pixelformat == V4L2_PIX_FMT_HSV24 ||
+				      fmt.pixelformat == V4L2_PIX_FMT_HSV32;
+
+			printf(", %s", fmtdesc2s(fmt.flags, is_hsv).c_str());
+		}
 		printf(")\n");
 	} while (!fd.enum_fmt(fmt));
 }
@@ -634,8 +638,12 @@ void print_video_formats_ext(cv4l_fd &fd, __u32 type)
 	do {
 		printf("\t[%d]: '%s' (%s", fmt.index, fcc2s(fmt.pixelformat).c_str(),
 		       fmt.description);
-		if (fmt.flags)
-			printf(", %s", fmtdesc2s(fmt.flags).c_str());
+		if (fmt.flags) {
+			bool is_hsv = fmt.pixelformat == V4L2_PIX_FMT_HSV24 ||
+				      fmt.pixelformat == V4L2_PIX_FMT_HSV32;
+
+			printf(", %s", fmtdesc2s(fmt.flags, is_hsv).c_str());
+		}
 		printf(")\n");
 		if (fd.enum_framesizes(frmsize, fmt.pixelformat))
 			continue;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
