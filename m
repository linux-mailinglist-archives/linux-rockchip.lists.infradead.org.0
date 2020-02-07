Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7C315541E
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Feb 2020 10:00:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I2Z/ly21zBd0aegj1i0yg8NQEqBuHob2my5L4+QtI/s=; b=crD6oSG4xSCFNQKNROKiboTltl
	5DtpJM2PRNsy0IuLcAApoZa+hc8PWOrdPxv8I6T8bOc7j0TOALhi8LYTpSQUSK1jlAm8TlrMYmjst
	XIVdeSGQYpwZBVByIb3y0f3peYbH0Jq1IIc88ejxSycBCJ/4kZGG94G3WQ5A6XaK1U73VyvyUW1Ht
	0wnKIbuV7IwblVHdb6Jlf8jzc/T189v/9oBH+q5xoCHoj9nOJ7kHAUEblCTV1QID2viCTwQKFD/H/
	VofjsVq4YJI0szDDtTuOeNnFxugkLJbDYq+LF9CUXfm8egoR3Gq5L21pvM0Ja0ECXi7bQ+lGsaqsc
	DTlVyRdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izzUj-00059w-GR; Fri, 07 Feb 2020 09:00:13 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izzUf-0004nr-Sk
 for linux-rockchip@lists.infradead.org; Fri, 07 Feb 2020 09:00:11 +0000
Received: from localhost.localdomain
 (p200300CB87166A00301E621E2266094E.dip0.t-ipconnect.de
 [IPv6:2003:cb:8716:6a00:301e:621e:2266:94e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 634CF295A84;
 Fri,  7 Feb 2020 09:00:05 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 1/4] media: staging: rkisp1: change function to return void
 instead of int
Date: Fri,  7 Feb 2020 09:59:48 +0100
Message-Id: <20200207085951.5226-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200207085951.5226-1-dafna.hirschfeld@collabora.com>
References: <20200207085951.5226-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_010010_053107_64B6D91B 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com, kernel@collabora.com,
 ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

There are functions that return int but actually return always 0.
Change them to return void and then there is no need to check
for error return value.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-isp.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index 2b0513e826fe..56bd95d01f65 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -504,7 +504,7 @@ static int rkisp1_config_cif(struct rkisp1_device *rkisp1)
 	return 0;
 }
 
-static int rkisp1_isp_stop(struct rkisp1_device *rkisp1)
+static void rkisp1_isp_stop(struct rkisp1_device *rkisp1)
 {
 	u32 val;
 
@@ -540,8 +540,6 @@ static int rkisp1_isp_stop(struct rkisp1_device *rkisp1)
 		     RKISP1_CIF_IRCL_MIPI_SW_RST | RKISP1_CIF_IRCL_ISP_SW_RST,
 		     RKISP1_CIF_IRCL);
 	rkisp1_write(rkisp1, 0x0, RKISP1_CIF_IRCL);
-
-	return 0;
 }
 
 static void rkisp1_config_clk(struct rkisp1_device *rkisp1)
@@ -555,7 +553,7 @@ static void rkisp1_config_clk(struct rkisp1_device *rkisp1)
 	rkisp1_write(rkisp1, val, RKISP1_CIF_ICCL);
 }
 
-static int rkisp1_isp_start(struct rkisp1_device *rkisp1)
+static void rkisp1_isp_start(struct rkisp1_device *rkisp1)
 {
 	struct rkisp1_sensor_async *sensor = rkisp1->active_sensor;
 	u32 val;
@@ -580,8 +578,6 @@ static int rkisp1_isp_start(struct rkisp1_device *rkisp1)
 	 * the MIPI interface and before starting the sensor output.
 	 */
 	usleep_range(1000, 1200);
-
-	return 0;
 }
 
 /* ----------------------------------------------------------------------------
@@ -956,9 +952,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 	int ret = 0;
 
 	if (!enable) {
-		ret = rkisp1_isp_stop(rkisp1);
-		if (ret)
-			return ret;
+		rkisp1_isp_stop(rkisp1);
 		rkisp1_mipi_csi2_stop(rkisp1->active_sensor);
 		return 0;
 	}
@@ -981,9 +975,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 	if (ret)
 		return ret;
 
-	ret = rkisp1_isp_start(rkisp1);
-	if (ret)
-		rkisp1_mipi_csi2_stop(rkisp1->active_sensor);
+	rkisp1_isp_start(rkisp1);
 
 	return ret;
 }
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
