Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6B71A906F
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 Apr 2020 03:31:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aowk4yEj8XftDmSnFPUhP1bpFzQJ0JfLJtKPyaCi96k=; b=QrEZmv+F1ZReEU
	3ItNc1Syxmoe2a9XgLwudiD3FnkiwAV8OrKp4NMknq0fn6afX8+1RDRZXzfjdU0x8kYcqh0rMULB+
	6L/s648EbdDu4imu2cy4FKoPJ5H9mYLcL7TtVPujSDkOq3r0GEVSexEZhK9s90D04BlXV71rxW0os
	UfMVx250ergA/OlkDTQlyHqpStTJQJXU95Fhqn0qO1JdZEyJ7tjLUcmYoLGQln9JvJ3MqMDWxMGUB
	i+BEGtX0v18LOk4leetCn84IADz6UvPXg/QuwYJEfIHeSv+dWNdHXcxDMiRi1XG0BsDyX+wuusL//
	tPi/EaiQWDpJAkJxGClA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOWtL-0004Hg-O2; Wed, 15 Apr 2020 01:31:03 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOWtI-0004GT-F4
 for linux-rockchip@lists.infradead.org; Wed, 15 Apr 2020 01:31:02 +0000
Received: from floko.floko.floko (unknown
 [IPv6:2804:431:e7cc:79a2:b6f7:4033:5775:cc3a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id ACFE62A1BC8;
 Wed, 15 Apr 2020 02:30:54 +0100 (BST)
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 0/4] media: add v4l2_pipeline_stream_{enable,
 disable} helpers
Date: Tue, 14 Apr 2020 22:30:40 -0300
Message-Id: <20200415013044.1778572-1-helen.koike@collabora.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_183100_633372_7E7250ED 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mchehab@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 hans.verkuil@cisco.com, skhan@linuxfoundation.org,
 niklas.soderlund@ragnatech.se, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

Media drivers need to iterate through the pipeline and call .s_stream()
callbacks in the subdevices.

Instead of repeating code, add helpers for this.

These helpers will go walk through the pipeline only visiting entities
that participates in the stream, i.e. it follows links from sink to source
(and not the opposite).

Which means that in a topology like this https://bit.ly/3b2MxjI
calling v4l2_pipeline_stream_enable() from rkisp1_mainpath won't call
.s_stream(true) for rkisp1_resizer_selfpath.

stream_count variable was added in v4l2_subdevice to handle nested calls
to the helpers.
This is useful when the driver allows streaming from more then one
capture device sharing subdevices.

This patch came from the error I was facing when multistreaming from
rkisp1 driver, where stoping one capture would call s_stream(false) in
the pipeline, causing a stall in the second capture device.

Also, the vimc patch https://patchwork.kernel.org/patch/10948833/ won't
be required with this patchset.

This patchset was tested on rkisp1 and vimc drivers.

Other cleanup might be possible (but I won't add in this patchset as I
don't have the hw to test):
	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/qcom/camss/camss-video.c#n430
	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/omap3isp/isp.c#n697
	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/stm32/stm32-dcmi.c#n680
	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/xilinx/xilinx-dma.c#n97

Changes in V3:
====================
Following up Niklas' comments in V2 https://patchwork.kernel.org/patch/11473681/#23270823

* I removed the limitation in topologies with entities with multiple enabled
links to its sink pads in the topology.
Now it enables all subdevs in the pipeline that have an enabled link going
from sink to source while walking from the video device, so it can be
also useful for rcar-vin driver.

To implement this, I added back in the series the patch from v1:
    "media: mc-entity.c: add media_graph_walk_next_stream()"

* "size" was renamed to "max_size" in function v4l2_pipeline_subdevs_get()
to reflect the maximum number of elements that can fit in the subdevs array,
with proper documentation.

* v4l2_pipeline_subdevs_get() returns a negative number for error, instead
of returning 0 and printing a warning.

* I also add if defined(CONFIG_MEDIA_CONTROLLER) around helpers to avoid
compiling errors.

Overview of patches in V3:
--------------------------

Patch 1/4 adds a new iterator function to follow links from sink to
source only.

Path 2/4 adds the helpers in v4l2-common.c, allowing nested calls by
adding stream_count in the subdevice struct.

Patch 3/4 cleanup rkisp1 driver to use the helpers.

Patch 4/4 cleanup vimc driver to use the helpers.

Changes in V2:
====================
The first version was calling the s_stream() callbacks from sensor to
capture.

This was generating errors in the Scarlet Chromebook, when the sensor
was being enabled before the ISP.

It make sense to enable subdevices from capture to sensor instead (which
is what most drivers do already).

This v2 drops the changes from mc-entity.c, and re-implement helpers in
v4l2-common.c

Overview of patches in V2:
--------------------------

Path 1/3 adds the helpers in v4l2-common.c, allowing nested calls by
adding stream_count in the subdevice struct.

Patch 2/3 cleanup rkisp1 driver to use the helpers.

Patch 3/3 cleanup vimc driver to use the helpers.

Helen Koike (4):
  media: mc-entity.c: add media_graph_walk_next_stream()
  media: v4l2-common: add helper functions to call s_stream() callbacks
  media: staging: rkisp1: use v4l2_pipeline_stream_{enable,disable}
    helpers
  media: vimc: use v4l2_pipeline_stream_{enable,disable} helpers

 drivers/media/mc/mc-entity.c                  |  34 ++++-
 .../media/test_drivers/vimc/vimc-capture.c    |  28 ++--
 .../media/test_drivers/vimc/vimc-streamer.c   |  49 +------
 drivers/media/v4l2-core/v4l2-common.c         | 125 ++++++++++++++++++
 drivers/staging/media/rkisp1/rkisp1-capture.c |  76 +----------
 include/media/media-entity.h                  |  15 +++
 include/media/v4l2-common.h                   |  43 ++++++
 include/media/v4l2-subdev.h                   |   2 +
 8 files changed, 242 insertions(+), 130 deletions(-)

-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
