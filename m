Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D375114295
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Dec 2019 15:25:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jYa+knaeBwMWMZMGZYJIMtIMzmINaJd/IYKVERCfVd4=; b=hc6X3E3er4Gjk9
	iOk+7ZyzBAk20/pBF7Kvx0umDimapPRhqiIrr/qkmrQXVKwQJa94eMXiwigErOS4DW1KBrwdmkEdT
	NSv/2YQ+MqBwyA9nK7kUiy2dqvgVL2FPTXiw+xbccmd7/xXfTOoCUzYkQjv/Ko1Mqv0rj/ngx/6sl
	vey/Ui7NKkolRZ5RZSG1aX8uW/Febfchp1b8u3ol87q0IKRZ1sJaNMMpA1D9JpcBYGz7r9ODStOQZ
	+i+gKlFSXVIwlhlqt83NSEdmBk6YZBIjwVkX8S5hUxvrvqn+sBzGwbo2FQiULAgGPf9oRGDXIQ2PM
	loOMAAlyTRltXFoPhv5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ics4I-0003kM-AV; Thu, 05 Dec 2019 14:25:22 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ics4E-0003jQ-OG
 for linux-rockchip@lists.infradead.org; Thu, 05 Dec 2019 14:25:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 60AFC292243
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 0/4] Enable Hantro G1 post-processor
Date: Thu,  5 Dec 2019 11:24:39 -0300
Message-Id: <20191205142443.1298-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_062519_055379_C745ABF7 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
needs its own set of NV12 buffers (the native decoder format),
and the post-processor is the owner of the CAPTURE buffers,
allocated for the post-processed format.

This way, applications obtain post-processed
(scaled, converted, etc) buffers transparently.

This feature is implemented by exposing the post-processed pixel
formats on ENUM_FMT, ordered as "preferred pixelformat first":

v4l2-ctl -d 1 --list-formats
ioctl: VIDIOC_ENUM_FMT
	Type: Video Capture Multiplanar

	[0]: 'NV12' (Y/CbCr 4:2:0)
	[1]: 'YUYV' (YUYV 4:2:2)

The order of preference in ENUM_FMT can be used as a hint
by applications. This series updates the uAPI specification
accordingly.

When the application sets a pixel format other than NV12,
the post-processor is transparently enabled.

Patch 1 updates the uAPI specification.
Patch 2 and 3 are cleanups to easier integrate the post-processor.
Patch 4 introduces the post-processing support.

This is tested on RK3288 platforms with MPEG-2, VP8 and
H264 streams, decoding to YUY2 surfaces. For now, this series
is only adding support for NV12-to-YUY2 conversion.

Applies to media/master.

Changelog
---------

Changes v4:

* Make the post-proc queue as deep as the capture queue.
* Rework the mmio read/write/relaxed helpers to avoid impacting
  the VP8 implementation.
* Rename prepare/finish_run to avoid confusion.
* Remove HANTRO_PP_REG_WRITE unneeded checks. 
* Add a comment in vidioc_enum_fmt regarding the format enumeration
  order.

Changes v3:

* After discussing with Hans and Tomasz during the media summit
in ELCE, we decided to go back on the MC changes. The MC topology
is now untouched. This means the series is now similar to v1,
except we explicitly use the ENUM_FMT to hint about the post-processed
formats.

Changes v2:

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
  media: vidioc-enum-fmt.rst: clarify format preference
  media: hantro: Cleanup format negotiation helpers
  hantro: Rename {prepare,finish}_run to {start,end}_prepare_run
  media: hantro: Support color conversion via post-processing

 .../media/uapi/v4l/vidioc-enum-fmt.rst        |   4 +-
 drivers/staging/media/hantro/Makefile         |   1 +
 drivers/staging/media/hantro/hantro.h         |  66 +++++++-
 drivers/staging/media/hantro/hantro_drv.c     |  11 +-
 .../staging/media/hantro/hantro_g1_h264_dec.c |   4 +-
 .../media/hantro/hantro_g1_mpeg2_dec.c        |   6 +-
 drivers/staging/media/hantro/hantro_g1_regs.h |  53 +++++++
 .../staging/media/hantro/hantro_g1_vp8_dec.c  |   6 +-
 .../staging/media/hantro/hantro_h1_jpeg_enc.c |   4 +-
 drivers/staging/media/hantro/hantro_h264.c    |   2 +-
 drivers/staging/media/hantro/hantro_hw.h      |  17 ++-
 .../staging/media/hantro/hantro_postproc.c    | 142 ++++++++++++++++++
 drivers/staging/media/hantro/hantro_v4l2.c    | 109 +++++++++-----
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |  10 ++
 .../media/hantro/rk3399_vpu_hw_jpeg_enc.c     |   4 +-
 .../media/hantro/rk3399_vpu_hw_mpeg2_dec.c    |   4 +-
 .../media/hantro/rk3399_vpu_hw_vp8_dec.c      |   4 +-
 17 files changed, 384 insertions(+), 63 deletions(-)
 create mode 100644 drivers/staging/media/hantro/hantro_postproc.c

-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
