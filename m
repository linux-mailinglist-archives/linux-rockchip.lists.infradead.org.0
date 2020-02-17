Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 510AD161B66
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Feb 2020 20:16:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dniowPb4tbVgViluOw1Sh08GvxcGKWQ4+zn7yQ7JeHQ=; b=Bj9J4CxGh+qkWAjw92ZsgJkLiE
	Au79GcNTbfOhtXUJmcw82tfAs0DCvdSsnCA15tmUkkNWD+mSgvN1vLpUUw//RD50cNQT4CriVqadK
	rnvsJaYEgC87RKn2s9bUjyLgRYdFIOnlvQdt0Gxt2GKwVVsDq/E1W71ekBlxaLnxdq1ClG98iqLKe
	w95CVxvO4dQmcnI7MdpY1oU/EuT0Q7KZPSrJ19/ksb5SLMqTGynQVNXcN1FUL44d+zqi1EC7UWur3
	vDgLRF8smdyKtJQrGEPCm2mYQOTavOmq+CO4nVMNdxLwafHRLOraWBAKBpVVw2dKHU8jZFs0jePoZ
	pVcDXO9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3lsk-0002gb-Fg; Mon, 17 Feb 2020 19:16:38 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3lsg-0002eV-KY
 for linux-rockchip@lists.infradead.org; Mon, 17 Feb 2020 19:16:36 +0000
Received: from localhost.localdomain
 (p200300CB87166A0024B68010760D030E.dip0.t-ipconnect.de
 [IPv6:2003:cb:8716:6a00:24b6:8010:760d:30e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 114F3291A2B;
 Mon, 17 Feb 2020 19:16:33 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 2/2] media: staging: rkisp1: replace the call to
 v4l2_async_notifier_parse_fwnode_endpoints_by_port
Date: Mon, 17 Feb 2020 20:16:19 +0100
Message-Id: <20200217191619.28976-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200217191619.28976-1-dafna.hirschfeld@collabora.com>
References: <20200217191619.28976-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_111634_931155_A8770688 
X-CRM114-Status: GOOD (  16.63  )
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

don't call 'v4l2_async_notifier_parse_fwnode_endpoints_by_port'
in order to register async subdevices. Instead call
'v4l2_fwnode_endpoint_parse' to parse the remote endpoints
and then register each async subdev with
'v4l2_async_notifier_add_fwnode_remote_subdev'

Also remove the relevant item in the TODO file

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/TODO         |  3 -
 drivers/staging/media/rkisp1/rkisp1-dev.c | 96 ++++++++++++++---------
 2 files changed, 57 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
index 03cd9a4e70f7..8c4d50b5b5fc 100644
--- a/drivers/staging/media/rkisp1/TODO
+++ b/drivers/staging/media/rkisp1/TODO
@@ -1,7 +1,4 @@
 * Fix serialization on subdev ops.
-* Don't use v4l2_async_notifier_parse_fwnode_endpoints_by_port().
-e.g. isp_parse_of_endpoints in drivers/media/platform/omap3isp/isp.c
-cio2_parse_firmware in drivers/media/pci/intel/ipu3/ipu3-cio2.c.
 * Fix pad format size for statistics and parameters entities.
 * Use threaded interrupt for rkisp1_stats_isr(), remove work queue.
 * Fix checkpatch errors.
diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index 72ab08a4e42d..922f7bb83530 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -234,35 +234,6 @@ static int rkisp1_subdev_notifier_complete(struct v4l2_async_notifier *notifier)
 	return ret;
 }
 
-static int rkisp1_fwnode_parse(struct device *dev,
-			       struct v4l2_fwnode_endpoint *vep,
-			       struct v4l2_async_subdev *asd)
-{
-	struct rkisp1_sensor_async *s_asd =
-			container_of(asd, struct rkisp1_sensor_async, asd);
-
-	if (vep->bus_type != V4L2_MBUS_CSI2_DPHY) {
-		dev_err(dev, "Only CSI2 bus type is currently supported\n");
-		return -EINVAL;
-	}
-
-	if (vep->base.port != 0) {
-		dev_err(dev, "The ISP has only port 0\n");
-		return -EINVAL;
-	}
-
-	s_asd->mbus_type = vep->bus_type;
-	s_asd->lanes = vep->bus.mipi_csi2.num_data_lanes;
-
-	/* Parallel bus is currently not supported */
-	s_asd->parallel_bus_flags = 0;
-
-	if (s_asd->lanes < 1 || s_asd->lanes > 4)
-		return -EINVAL;
-
-	return 0;
-}
-
 static const struct v4l2_async_notifier_operations rkisp1_subdev_notifier_ops = {
 	.bound = rkisp1_subdev_notifier_bound,
 	.unbind = rkisp1_subdev_notifier_unbind,
@@ -272,23 +243,70 @@ static const struct v4l2_async_notifier_operations rkisp1_subdev_notifier_ops =
 static int rkisp1_subdev_notifier(struct rkisp1_device *rkisp1)
 {
 	struct v4l2_async_notifier *ntf = &rkisp1->notifier;
-	struct device *dev = rkisp1->dev;
+	int next_id = 0;
 	int ret;
 
 	v4l2_async_notifier_init(ntf);
 
-	ret = v4l2_async_notifier_parse_fwnode_endpoints_by_port(dev, ntf,
-					sizeof(struct rkisp1_sensor_async),
-					0, rkisp1_fwnode_parse);
-	if (ret)
-		return ret;
+	while (1) {
+		struct v4l2_fwnode_endpoint vep = {
+			.bus_type = V4L2_MBUS_CSI2_DPHY
+		};
+		struct rkisp1_sensor_async *rk_asd = NULL;
+		struct fwnode_handle *ep;
 
-	if (list_empty(&ntf->asd_list))
-		return -ENODEV;
+		ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(rkisp1->dev),
+			0, next_id, FWNODE_GRAPH_ENDPOINT_NEXT);
 
-	ntf->ops = &rkisp1_subdev_notifier_ops;
+		if (!ep) {
+			if (next_id == 0)
+				dev_warn(rkisp1->dev, "no remote subdevice found\n");
+			break;
+		}
 
-	return v4l2_async_notifier_register(&rkisp1->v4l2_dev, ntf);
+		ret = v4l2_fwnode_endpoint_parse(ep, &vep);
+		if (ret)
+			goto err_parse;
+
+		rk_asd = kzalloc(sizeof(*rk_asd), GFP_KERNEL);
+		if (!rk_asd) {
+			ret = -ENOMEM;
+			goto err_parse;
+		}
+
+		rk_asd->lanes = vep.bus.mipi_csi2.num_data_lanes;
+		rk_asd->mbus_type = vep.bus_type;
+
+		/* Parallel bus is currently not supported */
+		rk_asd->parallel_bus_flags = 0;
+		ret = v4l2_async_notifier_add_fwnode_remote_subdev(ntf, ep,
+								   &rk_asd->asd);
+		if (ret)
+			goto err_parse;
+
+		dev_dbg(rkisp1->dev, "registered ep id %d with %d lanes\n",
+			vep.base.id, rk_asd->lanes);
+
+		next_id = vep.base.id + 1;
+
+		fwnode_handle_put(ep);
+
+		continue;
+err_parse:
+		fwnode_handle_put(ep);
+		kfree(rk_asd);
+		v4l2_async_notifier_cleanup(ntf);
+		return ret;
+	}
+
+	ntf->ops = &rkisp1_subdev_notifier_ops;
+	ret = v4l2_async_notifier_register(&rkisp1->v4l2_dev, ntf);
+	if (ret)
+		goto end;
+	return 0;
+end:
+	v4l2_async_notifier_cleanup(ntf);
+	return ret;
 }
 
 /* ----------------------------------------------------------------------------
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
