Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 535AF183EC7
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Mar 2020 02:46:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wxA/KENgMjLt70P+tdl3g0uyGGG8zD+7m6twrtvx4Mc=; b=ptQ7nlEHW3U09u
	cw3sqRp+AZT+lmz09I4IbdvbpvqUqsMA0fiX3aYCSm4bqmKRrBdiQKKp1DOjc6mbcMU8BHn0f11wC
	5dsuhSf/aAX4flrBJzSzFdivhHmGWAlozARFx984+Pxc4YGiJVWGaBbkuZHFVINITDFZLtE4FKTKh
	Bln/s3+FvVj9dx9cMAf222C2xOrdg7fg87YC/aOfaOmeRlDk0nAq8e3tTrDozwBQdj9s3pZknV2Zv
	hYA1uDWn8Q5DjyBIM/CA2vvnAEnqDwn0ypo/RDLJnkEP3UTR89WgRKwgOtAr3DdJpbXxxZyMDLh66
	IFaIIl6MvwyAKOD3FYTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCZPW-0002rI-98; Fri, 13 Mar 2020 01:46:50 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCZPT-0002pV-FB
 for linux-rockchip@lists.infradead.org; Fri, 13 Mar 2020 01:46:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id BA6EE296404
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 1/3] media: staging: rkisp1: cap: fix return values from pm
 functions
Date: Thu, 12 Mar 2020 22:46:24 -0300
Message-Id: <20200313014626.3103091-2-helen.koike@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200313014626.3103091-1-helen.koike@collabora.com>
References: <20200313014626.3103091-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_184647_632907_249E0CA3 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mchehab@kernel.org, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 hans.verkuil@cisco.com, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

If no errors occurs, pm functions return usage counters, so they can
return positive numbers.
This happens when streaming from multiple capture devices (mainpath and
selfpath).

Fix simultaneous streaming from mainpath and selfpath by not failing
when pm usage counters returns a positive number.

Signed-off-by: Helen Koike <helen.koike@collabora.com>
---

 drivers/staging/media/rkisp1/rkisp1-capture.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 524e0dd38c1b..97091e5a6e6c 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -938,11 +938,11 @@ static void rkisp1_vb2_stop_streaming(struct vb2_queue *queue)
 	rkisp1_return_all_buffers(cap, VB2_BUF_STATE_ERROR);
 
 	ret = v4l2_pipeline_pm_use(&node->vdev.entity, 0);
-	if (ret)
+	if (ret < 0)
 		dev_err(rkisp1->dev, "pipeline close failed error:%d\n", ret);
 
 	ret = pm_runtime_put(rkisp1->dev);
-	if (ret)
+	if (ret < 0)
 		dev_err(rkisp1->dev, "power down failed error:%d\n", ret);
 
 	rkisp1_dummy_buf_destroy(cap);
@@ -995,12 +995,12 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 		goto err_ret_buffers;
 
 	ret = pm_runtime_get_sync(cap->rkisp1->dev);
-	if (ret) {
+	if (ret < 0) {
 		dev_err(cap->rkisp1->dev, "power up failed %d\n", ret);
 		goto err_destroy_dummy;
 	}
 	ret = v4l2_pipeline_pm_use(entity, 1);
-	if (ret) {
+	if (ret < 0) {
 		dev_err(cap->rkisp1->dev, "open cif pipeline failed %d\n", ret);
 		goto err_pipe_pm_put;
 	}
-- 
2.25.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
