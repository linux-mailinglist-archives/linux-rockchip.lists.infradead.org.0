Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6F45EC67
	for <lists+linux-rockchip@lfdr.de>; Wed,  3 Jul 2019 21:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oftM3Dco9ZmisVwQJNLafLwX7NsMpCyPNXwEZXBo6G0=; b=rkm33eCJaFc8Rb
	wL7IJAMX9NwZ/rhGSWUlvB0a6S7tG219nlDtTPg2/hZZ6y9vOWk4LcQANWzu6v8XLdusCILBdcXui
	K3838br1q0QCRodSUrWlFM5MrgSLs+1HRVHlxQl5GV+9XBWsTA6nwSrTfA0YeWZYU+V+0oIamukp9
	n1elZRwiH1hc2QoOVdjJUcHYHWgLhMLLpeB0G6a5XKNh6SnfigqMJnc8WlRttxN9/qsymEH4HzXqe
	NfcQPB1ziWPrZIC//ZeJ/FYr1UyGcexgeMIFUB5zObmDRiVDoXVEfli7c0FVvS8ZuYKA2zSwDa33Z
	bBBBIZhjYZy9+rG69+Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikeM-000441-Qv; Wed, 03 Jul 2019 19:10:38 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hikda-0002DS-OT; Wed, 03 Jul 2019 19:09:52 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 69D0828AB67
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v7 02/14] media: doc: add document for rkisp1 meta buffer
 format
Date: Wed,  3 Jul 2019 16:08:58 -0300
Message-Id: <20190703190910.32633-3-helen.koike@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703190910.32633-1-helen.koike@collabora.com>
References: <20190703190910.32633-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_120951_070520_BB04AE91 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, Jacob Chen <jacob-chen@rock-chips.com>,
 jacob2.chen@rock-chips.com, jeffy.chen@rock-chips.com, zyc@rock-chips.com,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 Helen Koike <helen.koike@collabora.com>, Yong Zhi <yong.zhi@intel.com>,
 hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, zhengsq@rock-chips.com, mchehab@kernel.org,
 ezequiel@collabora.com, Guennadi Liakhovetski <g.liakhovetski@gmx.de>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Jacob Chen <jacob2.chen@rock-chips.com>

This commit add document for rkisp1 meta buffer format

Signed-off-by: Jacob Chen <jacob-chen@rock-chips.com>
Acked-by: Hans Verkuil <hans.verkuil@cisco.com>
[update for upstream]
Signed-off-by: Helen Koike <helen.koike@collabora.com>

---

Changes in v7:
- s/correspond/corresponding
- s/use/uses
- s/docuemnt/document

 Documentation/media/uapi/v4l/meta-formats.rst |  2 ++
 .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    | 20 +++++++++++++++++++
 .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      | 18 +++++++++++++++++
 3 files changed, 40 insertions(+)
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst

diff --git a/Documentation/media/uapi/v4l/meta-formats.rst b/Documentation/media/uapi/v4l/meta-formats.rst
index b10ca9ee3968..5de621fea3cc 100644
--- a/Documentation/media/uapi/v4l/meta-formats.rst
+++ b/Documentation/media/uapi/v4l/meta-formats.rst
@@ -24,3 +24,5 @@ These formats are used for the :ref:`metadata` interface only.
     pixfmt-meta-uvc
     pixfmt-meta-vsp1-hgo
     pixfmt-meta-vsp1-hgt
+    pixfmt-meta-rkisp1-params
+    pixfmt-meta-rkisp1-stat
diff --git a/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst b/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
new file mode 100644
index 000000000000..61b81331f820
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
@@ -0,0 +1,20 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _v4l2-meta-fmt-rkisp1-params:
+
+*******************************
+V4L2_META_FMT_RK_ISP1_PARAMS
+*******************************
+
+Rockchip ISP1 Parameters Data
+
+Description
+===========
+
+This format describes input parameters for the Rockchip ISP1.
+
+It uses c-struct :c:type:`rkisp1_isp_params_cfg`, which is defined in
+the ``linux/rkisp1-config.h`` header file, see it for details.
+
+The parameters consist of multiple modules.
+The module won't be updated if the corresponding bit was not set in module_*_update.
diff --git a/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst b/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
new file mode 100644
index 000000000000..5496e1d42273
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
@@ -0,0 +1,18 @@
+.. -*- coding: utf-8; mode: rst -*-
+
+.. _v4l2-meta-fmt-rkisp1-stat:
+
+*******************************
+V4L2_META_FMT_RK_ISP1_STAT_3A
+*******************************
+
+Rockchip ISP1 Statistics Data
+
+Description
+===========
+
+This format describes image color statistics information generated by the Rockchip
+ISP1.
+
+It uses c-struct :c:type:`rkisp1_stat_buffer`, which is defined in
+the ``linux/cifisp_stat.h`` header file, see it for details.
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
