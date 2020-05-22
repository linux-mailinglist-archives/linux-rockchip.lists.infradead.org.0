Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94ED11DE163
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 May 2020 09:56:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=twoNu1a6pkdL/b04CaP+LCrOdx+C/nfx/3UqOMpMuQ0=; b=BiPAkz5ih/X4ek
	w61OetPXQwbKPVP9pPSWecnC4ICdNzro4YFqi68xZ6ujRsWVqzLJ68FZ+pbWdzF2/YeWwOTD/IzEf
	n+ZE8d82FbJxdNHBLiyUTvT32TS/hs9IqAprMCmwTMFjY6k+5AVSeXPOjlxBiw2xbCGEhODdJCQCc
	Ia8O9LYwWo1Z2Abphw0oeuZ0h1QA+dTclz7pj2coRhQ/yakl3fbO9P/pIft0o5/BXqwXnvCiBoUJn
	+t2QWgstd7V44YWNWU3TvcFUrzw0MjfQ0+//rN0f0Ovu2rQHaTt+bigFI1lgTUoIAsgM96NcovJ6M
	JZ62DxQhFc47jl36+p2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc2XT-0000oR-G0; Fri, 22 May 2020 07:56:19 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc2XK-0000iR-HQ
 for linux-rockchip@lists.infradead.org; Fri, 22 May 2020 07:56:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 6FDF72A0870
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH v4 0/5] media: add v4l2_pipeline_stream_{enable,disable}
Date: Fri, 22 May 2020 09:55:17 +0200
Message-Id: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_005610_834948_0A43FFAC 
X-CRM114-Status: GOOD (  16.77  )
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
Cc: niklas.soderlund@ragnatech.se--annotate, mchehab@kernel.org,
 dafna.hirschfeld@collabora.com, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com,
 skhan@linuxfoundation.org, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,
This is v4 of the patchset that was sent by Helen Koike.

Media drivers need to iterate through the pipeline and call .s_stream()
callbacks in the subdevices.

Instead of repeating code, add helpers for this.

These helpers will go walk through the pipeline only visiting entities
that participates in the stream, i.e. it follows links from sink to source
(and not the opposite).
For example, in a topology like this https://bit.ly/3b2MxjI
calling v4l2_pipeline_stream_enable() from rkisp1_mainpath won't call
.s_stream(true) for rkisp1_resizer_selfpath.

stream_count variable was added in v4l2_subdevice to handle nested calls
to the helpers.
This is useful when the driver allows streaming from more then one
capture device sharing subdevices.

This patchset was tested on rkisp1 and vimc drivers.

Other cleanup might be possible (but I won't add in this patchset as I
don't have the hw to test):
	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/qcom/camss/camss-video.c#n430
	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/omap3isp/isp.c#n697
	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/stm32/stm32-dcmi.c#n680
	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/xilinx/xilinx-dma.c#n97

Testing:
--------

SEN_DEV=/dev/v4l-subdev3
ISP_DEV=/dev/v4l-subdev0
RSZ_SP_DEV=/dev/v4l-subdev2
RSZ_MP_DEV=/dev/v4l-subdev1
CAP_SP_DEV=/dev/video1
CAP_MP_DEV=/dev/video0

WIDTH=1920
HEIGHT=1080
RAW_CODE=SRGGB10_1X10
YUV_CODE=YUYV8_2X8

v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=$RAW_CODE -d $SEN_DEV

v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=$RAW_CODE -d $ISP_DEV
v4l2-ctl --set-subdev-selection pad=0,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $ISP_DEV

v4l2-ctl --set-subdev-selection pad=2,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $ISP_DEV
v4l2-ctl --set-subdev-fmt pad=2,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $ISP_DEV

v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $RSZ_SP_DEV
v4l2-ctl --set-subdev-fmt pad=1,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $RSZ_SP_DEV

v4l2-ctl --set-subdev-selection pad=0,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $RSZ_SP_DEV

v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $RSZ_MP_DEV
v4l2-ctl --set-subdev-fmt pad=1,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $RSZ_MP_DEV

v4l2-ctl --set-subdev-selection pad=0,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $RSZ_MP_DEV

v4l2-ctl -v width=$WIDTH,height=$HEIGHT,pixelformat=NV12 -d $CAP_SP_DEV
v4l2-ctl -v width=$WIDTH,height=$HEIGHT,pixelformat=NV12 -d $CAP_MP_DEV

sleep 1

v4l2-ctl --stream-mmap --stream-count=100 -d $CAP_SP_DEV --stream-to=/tmp/test_sp.raw &
v4l2-ctl --stream-mmap --stream-count=100 -d $CAP_MP_DEV --stream-to=/tmp/test_mp.raw &

wait
echo "Completed"


Changes in v4:
==============
patch 1: fix coding style issues

patch 2:
- in function v4l2_pipeline_subdevs_get, use a local media_graph to walk on the topology so a lock is not needed
and also the pipe parameter is not needed.
- adding a function v4l2_subdevs_stream_disable to avoid code duplication
- change v4l2_pipeline_stream_disable to return an error code if failed
- don't add a new field to subdevice "stream_counter" when calling s_stream, since this counter is updated only in
the helper functions, and might be confusing that it is generally not an indication of the number of calls to s_stream.
Also, except of rkisp1, and vimc, it seems that the other drivers that might use the new helpers don't use a counter.

new added - patch 3: the call to media_pipeline_start should be called before calling s_stream on the subdevices in order
to validate the links and prevents them from changing, this patch fixes it.

patch 4: (use the helpers in rkisp1). The helpers now don't have a counter for the number of calls to s_stream, so rkisp1
should check if the other capture is streaming and in that case call s_stream only for its resizer.

patch 5: - (use the helpers in vimc)
- test the return value of v4l2_pipeline_stream_disable
- the call to the helerps now doesn't need the pipe parameter.

Overview of patches in V3:
--------------------------

Patch 1/5 adds a new iterator function in media-controller to follow links from sink to
source only.

Patch 2/5 adds the helpers in v4l2-common.c,

Patch 3/5 calles media_pipeline_start before calling s_stream on the subdevices

Patch 4/5 cleanup rkisp1 driver to use the helpers.

Patch 5/5 cleanup vimc driver to use the helpers.

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

Patch 1/4 adds a new iterator function in media-controller to follow links from sink to
source only.

Patch 2/4 adds the helpers in v4l2-common.c, allowing nested calls by
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

Dafna Hirschfeld (1):
  media: staging: rkisp1: validate links before powering and streaming

Helen Koike (4):
  media: mc-entity.c: add media_graph_walk_next_stream()
  media: v4l2-common: add helper functions to call s_stream() callbacks
  media: staging: rkisp1: cap: use v4l2_pipeline_stream_{enable,disable}
    helpers
  media: vimc: use v4l2_pipeline_stream_{enable,disable} helpers

 drivers/media/mc/mc-entity.c                  |  34 ++++-
 .../media/test-drivers/vimc/vimc-capture.c    |  31 +++--
 .../media/test-drivers/vimc/vimc-streamer.c   |  49 +------
 drivers/media/v4l2-core/v4l2-common.c         |  99 ++++++++++++++
 drivers/staging/media/rkisp1/rkisp1-capture.c | 125 ++++++------------
 include/media/media-entity.h                  |  15 +++
 include/media/v4l2-common.h                   |  39 ++++++
 7 files changed, 253 insertions(+), 139 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
