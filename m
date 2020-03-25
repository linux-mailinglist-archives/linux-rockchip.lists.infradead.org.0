Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3031932FA
	for <lists+linux-rockchip@lfdr.de>; Wed, 25 Mar 2020 22:44:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7mfEijsy7CXP3A5YHwiUwoSusAoUdpIwAltpvMeUq0k=; b=FuqilvnY2hcJMd
	q4W/Mv3yAUtbVZVKVoYqCVo1QXLDk754TvvDHbwDGBhq7HYqpcEu/UvQP+eGnBHGRAagkMF0TC+JC
	YzItKgN8z47d2jTWpavXZrFA0WFFc/PDhznvmbURU977bCXx2xg1DtuNyRxmkAJJ/wH+s6uqEenei
	PfgT3tz/GB4FJaIfDLS/rgVUTAThuJEHiy4Mt0F16kPiDlwPwbbEzUzNMrALwdbeKuAcFYS0mR4h9
	MqWK2y6+jFp1VqgNUQsvxfFTWYzomsEMumWfUfUPJCJLyqOxI0fYUnMIPIcG1mCu2JOG8e2B1IbCq
	BEp4BoymocKu7RDoKAVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHDoo-0001rt-3A; Wed, 25 Mar 2020 21:44:10 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHDok-0001rT-Ug
 for linux-rockchip@lists.infradead.org; Wed, 25 Mar 2020 21:44:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 5013B2931C5
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH v4l-utils] v4l2-compliance: don't test pad's dimensions if
 it's MEDIA_PAD_FL_METADATA
Date: Wed, 25 Mar 2020 22:43:57 +0100
Message-Id: <20200325214357.30722-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_144407_119031_91C17B30 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Pads with the flag MEDIA_PAD_FL_METADATA transmit metadata
which has no dimension, so don't test the width and hight
returned by S/G_FMT for that pads.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
This patch completes the patchset sent to linux-media:
"media: staging: rkisp1: Fix formats for metadata pads"
https://patchwork.kernel.org/project/linux-media/list/?series=261673
It compiles only when the media.h file is synced with
this patchset so that the flag MEDIA_PAD_FL_METADATA
is added.

 utils/v4l2-compliance/v4l2-test-subdevs.cpp | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/utils/v4l2-compliance/v4l2-test-subdevs.cpp b/utils/v4l2-compliance/v4l2-test-subdevs.cpp
index 489639fb..ca527529 100644
--- a/utils/v4l2-compliance/v4l2-test-subdevs.cpp
+++ b/utils/v4l2-compliance/v4l2-test-subdevs.cpp
@@ -305,11 +305,13 @@ int testSubDevFrameInterval(struct node *node, unsigned pad)
 	return 0;
 }
 
-static int checkMBusFrameFmt(struct node *node, struct v4l2_mbus_framefmt &fmt)
+static int checkMBusFrameFmt(struct node *node, struct v4l2_mbus_framefmt &fmt, unsigned pad)
 {
 	fail_on_test(check_0(fmt.reserved, sizeof(fmt.reserved)));
-	fail_on_test(fmt.width == 0 || fmt.width > 65536);
-	fail_on_test(fmt.height == 0 || fmt.height > 65536);
+	if (!(node->pads[pad].flags & MEDIA_PAD_FL_METADATA)) {
+		fail_on_test(fmt.width == 0 || fmt.width > 65536);
+		fail_on_test(fmt.height == 0 || fmt.height > 65536);
+	}
 	fail_on_test(fmt.code == 0 || fmt.code == ~0U);
 	fail_on_test(fmt.field == ~0U);
 	if (!node->is_passthrough_subdev) {
@@ -353,7 +355,7 @@ int testSubDevFormat(struct node *node, unsigned which, unsigned pad)
 	fail_on_test(check_0(fmt.reserved, sizeof(fmt.reserved)));
 	fail_on_test(fmt.which != which);
 	fail_on_test(fmt.pad != pad);
-	fail_on_test(checkMBusFrameFmt(node, fmt.format));
+	fail_on_test(checkMBusFrameFmt(node, fmt.format, pad));
 	s_fmt = fmt;
 	memset(s_fmt.reserved, 0xff, sizeof(s_fmt.reserved));
 	memset(s_fmt.format.reserved, 0xff, sizeof(s_fmt.format.reserved));
@@ -366,7 +368,7 @@ int testSubDevFormat(struct node *node, unsigned which, unsigned pad)
 		return 0;
 	}
 	fail_on_test(check_0(s_fmt.reserved, sizeof(s_fmt.reserved)));
-	fail_on_test(checkMBusFrameFmt(node, s_fmt.format));
+	fail_on_test(checkMBusFrameFmt(node, s_fmt.format, pad));
 	fail_on_test(s_fmt.format.width != fmt.format.width);
 	fail_on_test(s_fmt.format.height != fmt.format.height);
 	fail_on_test(s_fmt.format.code != fmt.format.code);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
