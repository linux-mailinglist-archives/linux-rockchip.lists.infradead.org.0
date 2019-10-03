Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B837DCAEDD
	for <lists+linux-rockchip@lfdr.de>; Thu,  3 Oct 2019 21:09:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c1pCgADEdpEzhKchdAGkFdS2+hOQp3OkCMaKcIl9EWk=; b=nSVhnbttMCsKFS
	7CkIk25Xkzj8XZpjucrt2k9R1ydJKam8ANUKQX2DX6eOuz7XyBj6fFcLweQ7UCqNE9DXKpbcccFYy
	cvhx/8FX5LrgtrYlhFdcJZ7XxiHr2BG3tCQ6dG6Bxo5Cxo/BtueI2E3mAS2ylpKJNsXTASTLkahq5
	imlWiahAP6zNgnH9FsNb3Q5XFTL1+YBMaQpEqYmc0wv3aBiaeqIIOj4xVvBKx0RLRtPCKancgvqR1
	o3F4uBtyvhdI6Wv82u+carfWeV6nCqDdAoG9V0Mg4SHQURPxGClJU4I5e9uw9DPmbFVOuYKWb5H1O
	uPlFxdYHBDGjn3rC1tMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG6TF-0004Ib-Ug; Thu, 03 Oct 2019 19:09:01 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG6TC-0004H0-Ph
 for linux-rockchip@lists.infradead.org; Thu, 03 Oct 2019 19:09:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 0B9C528C499
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 0/4] Enable Hantro G1 post-processor
Date: Thu,  3 Oct 2019 16:08:29 -0300
Message-Id: <20191003190833.29046-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_120859_096925_8B7D4B80 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi all,

The Hantro G1 VPU post-processor block can be pipelined with
the decoder hardware, allowing to perform operations such as
color conversion, scaling, rotation, cropping, among others.

When the post-processor is enabled, the decoder hardware
gets its own set of NV12 buffers (the native decoder format),
and the post-processor is the owner of the CAPTURE buffers.

This allows the application get processed
(scaled, converted, etc) buffers, completely transparently.

This feature is implemented by exposing the post-processed pixel
formats on ENUM_FMT. When the application sets a pixel format
other than NV12, and if the post-processor is MC-linked,
the driver will make use of it, transparently.

On this v2, the media controller API is now required
to "enable" (aka link, in topology jargon) the post-processor.
Therefore, applications now have to explicitly request this feature.

For instance, the post-processor is enabled using the media-ctl
tool:

media-ctl -l "'decoder':1 -> 'rockchip,rk3288-vpu-dec':0[0]"
media-ctl -l "'postproc':1 -> 'rockchip,rk3288-vpu-dec':0[1]"

v4l2-ctl -d 1 --list-formats
ioctl: VIDIOC_ENUM_FMT
	Type: Video Capture Multiplanar

	[0]: 'NV12' (Y/CbCr 4:2:0)
	[1]: 'YUYV' (YUYV 4:2:2)

Patches 1 and 2 are simply cleanups needed to easier integrate the
post-processor. Patch 2 is a bit invasive, but it's a step
forward towards merging the implementation for RK3399 and RK3288.

Patch 3 re-works the media-topology, making the decoder
a v4l2_subdevice, instead of a bare entity. This allows
to introduce a more accurate of the decoder+post-processor complex.

Patch 4 introduces the post-processing support.

This is tested on RK3288 platforms with MPEG-2, VP8 and
H264 streams, decoding to YUY2 surfaces. For now, this series
is only adding support for NV12-to-YUY2 conversion.

The design and implementation is quite different from v1:

* The decoder->post-processor topology is now exposed
  explicitly and applications need to configure the pipeline.
  By default, the decoder is enabled and the post-processor
  is disabled.

* RGB post-processing output has been dropped. We might
  add this in the future, but for now, it seems it would
  make the code more complex without a use-case in mind.
  RGB is much more memory-consuming so less attractive
  than YUV, and modern GPUs and display controllers support YUV.

* The post-processor implementation still supports RK3288
  only. However, a generic register infrastructure is introduced
  to make addition of other variants such as RK3399 really easy.

Ezequiel Garcia (4):
  media: hantro: Cleanup format negotiation helpers
  media: hantro: mpeg2_dec: Re-use common register macros
  media: hantro: Rework media topology
  media: hantro: Support color conversion via post-processing

 drivers/staging/media/hantro/Makefile         |   1 +
 drivers/staging/media/hantro/hantro.h         | 105 +++++-
 drivers/staging/media/hantro/hantro_drv.c     | 336 ++++++++++++++----
 .../staging/media/hantro/hantro_g1_h264_dec.c |   2 +-
 .../media/hantro/hantro_g1_mpeg2_dec.c        | 188 ++++------
 drivers/staging/media/hantro/hantro_g1_regs.h | 109 ++++--
 .../staging/media/hantro/hantro_g1_vp8_dec.c  |   2 +-
 drivers/staging/media/hantro/hantro_h264.c    |   6 +-
 drivers/staging/media/hantro/hantro_hw.h      |  13 +
 .../staging/media/hantro/hantro_postproc.c    | 141 ++++++++
 drivers/staging/media/hantro/hantro_v4l2.c    | 116 ++++--
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |  10 +
 12 files changed, 754 insertions(+), 275 deletions(-)
 create mode 100644 drivers/staging/media/hantro/hantro_postproc.c

-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
