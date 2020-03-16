Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F05E5187362
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Mar 2020 20:33:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VWH1bL+nAddMh6J+GZ9Fi6RojLLSrR+nOpOhh6YmadU=; b=r+3UwF5meIna46
	oTRJ1MjHHgndvMBDYthWElcwhG7D/192mpBu9+BMCy/+/+tqTrJiSVyYoETkY5dBhzjkwpRJJjveX
	TD065Wwh5FhIed7eSsl/t34Ni5eztBrkY38vJRyr30y07CvmOndpSHAZnDCN2lbHaBWMm2ejfWgtC
	tHRagglIQNbPizDa/zyHJeZm9xl3ptgbZ/kWHufVQyl6TrwWUcyZZZ303jr78pVJq3gnVjbsw8NBJ
	YqnNwHysbBSBwD68pHLIwp4aVIbsOWjRTWz79b+g5hBQyUC/w+YFbg5xXHz3Xp9y6pEdwS1nzluk/
	eEH5/hUQLvCWlgYDR1xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDvUM-0003g6-DM; Mon, 16 Mar 2020 19:33:26 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDvUI-0003em-VF
 for linux-rockchip@lists.infradead.org; Mon, 16 Mar 2020 19:33:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id CAFCD293369
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 0/4] media: add v4l2_pipeline_stream_{enable,disable} helpers
Date: Mon, 16 Mar 2020 16:33:01 -0300
Message-Id: <20200316193305.428378-1-helen.koike@collabora.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_123323_144290_F114882C 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 hans.verkuil@cisco.com, niklas.soderlund@ragnatech.se, mchehab@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

Media drivers need to iterate through the pipeline and call .s_stream()
callbacks in the subdevices.

Instead of repeating code, add helpers for this.

These helpers will go walk through the pipeline only visiting entities
that participates in the stream, i.e. it follow link from sink to source
(and not the opposite).

Which means that in a topology like this https://bit.ly/3b2MxjI
calling v4l2_pipeline_stream_enable() from rkisp1_mainpath won't call
.s_stream(true) for rkisp1_resizer_selfpath.

stream_count variable was added in v4l2_subdevice to handle nested calls
to the helpers.
This is useful when the driver allows streaming from more then one
capture device sharing subdevices.

This patch came from the error I was facing when multistreaming from
rkisp1 driver, where stopping one capture would call s_stream(false) in
the pipeline, causing a stall in the second capture device.

Also, the vimc patch https://patchwork.kernel.org/patch/10948833/ won't
be required with this patchset.

This patchset was tested on rkisp1 and vimc drivers.

Other cleanup might be possible (but I won't add in this patchset as I
don't have the hw to test):
	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/omap3isp/isp.c#n697
	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/qcom/camss/camss-video.c#n430
	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/stm32/stm32-dcmi.c#n680
	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/xilinx/xilinx-dma.c#n97

Overview of patches:
====================

Patch 1/4 adds a new iterator function to follow links from sink to
source only.

Path 2/4 adds the helpers in v4l2-common.c, allowing nested calls by
adding stream_count in the subdevice struct.

Patch 3/4 cleanup rkisp1 driver to use the helpers.

Patch 4/4 cleanup vimc driver to use the helpers.


Helen Koike (4):
  media: mc-entity.c: add media_graph_walk_next_stream()
  media: v4l2-common: add helper functions to call s_stream() callbacks
  media: staging: rkisp1: use v4l2_pipeline_stream_{enable,disable}
    helpers
  media: vimc: use v4l2_pipeline_stream_{enable,disable} helpers

 drivers/media/mc/mc-entity.c                  | 34 ++++++-
 drivers/media/platform/vimc/vimc-capture.c    | 28 ++++--
 drivers/media/platform/vimc/vimc-streamer.c   | 49 +--------
 drivers/media/v4l2-core/v4l2-common.c         | 99 +++++++++++++++++++
 drivers/staging/media/rkisp1/rkisp1-capture.c | 74 +-------------
 include/media/media-entity.h                  | 15 +++
 include/media/v4l2-common.h                   | 30 ++++++
 include/media/v4l2-subdev.h                   |  2 +
 8 files changed, 204 insertions(+), 127 deletions(-)

-- 
2.25.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
