Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B61161921
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Feb 2020 18:51:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7O+B2mU2MGI6Cg0dMJGdrqDP5yiLbaUTDtmtWsDXvNs=; b=PXV
	gyRJaeEaJYZL8n6pLVbmSgvAblbUknbRTT3PVvZEesFjAbdM559HNNkmF8DwNWT6sPP1bN/1JvynS
	CfMxs4C76RecDnUgOpRhWP/vGyrvI5Ts4AgM6YVezVgVV9nqAWlFT4GnJtcZgCG1W4C+JkdO9MDEg
	MFj+nsBRjvek4Go81ZEcWyu2APGKPs1awqzO2XxzeXjPTLHTOvW5OEBS5Kp25jfZn2KbKhRkvsu4u
	kWn+x3pks/xJRNhjWut1L/BZQ4IOcLQfYfE+uyvdJ4Sqev6fFp1KDWqJeV5x55zKS9Qjvk1y7xR6G
	tp2OWLkOf+jHw0VROwD4DdJApbLxEOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3kYM-0007Pl-KD; Mon, 17 Feb 2020 17:51:30 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3kYJ-0007P0-6L
 for linux-rockchip@lists.infradead.org; Mon, 17 Feb 2020 17:51:28 +0000
Received: from localhost.localdomain
 (p200300CB87166A0024B68010760D030E.dip0.t-ipconnect.de
 [IPv6:2003:cb:8716:6a00:24b6:8010:760d:30e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A4C66293E78;
 Mon, 17 Feb 2020 17:51:23 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] media: staging: rkisp1: destroy subdevs' mutexes when
 unregistering
Date: Mon, 17 Feb 2020 18:51:13 +0100
Message-Id: <20200217175113.8216-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_095127_370449_FC4D1BDE 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com, kernel@collabora.com,
 ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

call 'mutex_destroy' on the locks of the subdevices 'isp' and 'resizer'
when unregistering and when failing to register.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
This patch is a follow-up patch for the patchset:
'media: staging: rkisp1: add serialization to the isp and resizer ops'

 drivers/staging/media/rkisp1/rkisp1-isp.c     | 5 ++++-
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 5 ++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index aa7a842f97f8..36c0251911c9 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -1051,7 +1051,7 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
 	mutex_init(&isp->ops_lock);
 	ret = media_entity_pads_init(&sd->entity, RKISP1_ISP_PAD_MAX, pads);
 	if (ret)
-		return ret;
+		goto err_destroy_mutex;
 
 	ret = v4l2_device_register_subdev(v4l2_dev, sd);
 	if (ret) {
@@ -1064,6 +1064,8 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
 
 err_cleanup_media_entity:
 	media_entity_cleanup(&sd->entity);
+err_destroy_mutex:
+	mutex_destroy(&isp->ops_lock);
 
 	return ret;
 }
@@ -1074,6 +1076,7 @@ void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
 
 	v4l2_device_unregister_subdev(sd);
 	media_entity_cleanup(&sd->entity);
+	mutex_destroy(&rkisp1->isp.ops_lock);
 }
 
 /* ----------------------------------------------------------------------------
diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 87799fbf0363..0b4385153920 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -695,6 +695,7 @@ static void rkisp1_rsz_unregister(struct rkisp1_resizer *rsz)
 {
 	v4l2_device_unregister_subdev(&rsz->sd);
 	media_entity_cleanup(&rsz->sd.entity);
+	mutex_destroy(&rsz->ops_lock);
 }
 
 static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
@@ -727,7 +728,7 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
 	mutex_init(&rsz->ops_lock);
 	ret = media_entity_pads_init(&sd->entity, 2, pads);
 	if (ret)
-		return ret;
+		goto err_destroy_mutex;
 
 	ret = v4l2_device_register_subdev(&rsz->rkisp1->v4l2_dev, sd);
 	if (ret) {
@@ -740,6 +741,8 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
 
 err_cleanup_media_entity:
 	media_entity_cleanup(&sd->entity);
+err_destroy_mutex:
+	mutex_destroy(&rsz->ops_lock);
 
 	return ret;
 }
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
