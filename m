Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4D115220B
	for <lists+linux-rockchip@lfdr.de>; Tue,  4 Feb 2020 22:45:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=q1l5mUlPp6iYMW6GsFEDlBWMGe84b/sfJXe1Z4x82Q0=; b=hFP
	5BO0J5UStgUNeWb9XO0XzKhydErWmYN3MKDJvMyw1Mw8D4VUgoTsbr1GBdPh4BmgABe5AzZgzM4Tx
	uaTzbJYV3HJLnUaVvoDkWUyIf7JxlPlqQY27An8Cv6HgrFbHkDtVpdH7XekohR4YUTTOUIKQ1ySCV
	MmC95h538SaBz/rD79IZtwjmLh3RwQa3dKmDNK7XVleuOAYVTmYkRDjOiCQGVQd/l9OI4kE0H/9Po
	laW12FekuUzwPViCseBVrbnhQPOeThZI2gFg2XW1d1E8YD4T8nv8XCAHL8tiqyEYFELeVudJxX1Qk
	b4IDS9Xcs0AvYKdbHR76gEyI2f8yR6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz60c-0004FH-Rj; Tue, 04 Feb 2020 21:45:26 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz60Z-0004EE-UJ
 for linux-rockchip@lists.infradead.org; Tue, 04 Feb 2020 21:45:25 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a02:810a:113f:ad1c:28d4:5c9b:1c04:c661])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 832102902FB;
 Tue,  4 Feb 2020 21:45:10 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] media: staging: rkisp1: don't lock media's graph_mutex when
 calling rkisp1_create_links
Date: Tue,  4 Feb 2020 22:44:44 +0100
Message-Id: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_134524_106914_E0EB3668 
X-CRM114-Status: GOOD (  10.42  )
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

The function rkisp1_create_links calls media_entity_get_fwnode_pad
and media_create_pad_link in the mc api. Those calls don't require
locking the graph_mutex so remove the locking.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-dev.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index 9d866396a5de..64e61ab29143 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -219,19 +219,17 @@ static int rkisp1_subdev_notifier_complete(struct v4l2_async_notifier *notifier)
 		container_of(notifier, struct rkisp1_device, notifier);
 	int ret;
 
-	mutex_lock(&rkisp1->media_dev.graph_mutex);
 	ret = rkisp1_create_links(rkisp1);
 	if (ret)
-		goto unlock;
+		return ret;
+
 	ret = v4l2_device_register_subdev_nodes(&rkisp1->v4l2_dev);
 	if (ret)
-		goto unlock;
+		return ret;
 
 	dev_dbg(rkisp1->dev, "Async subdev notifier completed\n");
 
-unlock:
-	mutex_unlock(&rkisp1->media_dev.graph_mutex);
-	return ret;
+	return 0;
 }
 
 static int rkisp1_fwnode_parse(struct device *dev,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
