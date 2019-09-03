Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AFAA726A
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 20:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=syfP3ngV0StGMp0/wGwLliBgu7Kj24zb4c5bIiOZcnA=; b=Lz5Y25uc0ITrk9
	CmfbzxVzBMOSveEQ5jzfL4d2rptan/YakJXReA8X8SHJs3VpjPN+wjaJpuxobjBJEb0TIUmFALAae
	UnH5QZGCC9dGEHNdUbP+YHL7ZVjZw0eb1a4wcXCoAbd1a0jlqNKIljHKwzpT8m3KG6aM/Aa/JH9M9
	lPTf1kHRZHChx1g2NfLwdva9OT0z6cZFhQdT2f/ED7Ufz82L7aW/PWEorouD4hLcsvh88lj7bGxuC
	+lysK7ZJuLfriFMrBCvZJ1TLBoATgtIVAZYp89C80nOB1k6yMdYkGpOnOZzOWGwqejO+bcGPS5wjt
	8CDbxuaiMCkKZxfKxxcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5DMu-0001m4-W5; Tue, 03 Sep 2019 18:17:29 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5DMs-0001lh-E9
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 18:17:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5A40F28A0A2
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 0/4] Enable Hantro G1 post-processor
Date: Tue,  3 Sep 2019 15:17:07 -0300
Message-Id: <20190903181711.7559-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_111726_610818_C38100BF 
X-CRM114-Status: GOOD (  11.01  )
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
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi all,

This series enables the post-processor support available
on the Hantro G1 VPU. The post-processor block can be
pipelined with the decoder hardware, allowing to perform
operations such as color conversion, scaling, rotation,
cropping, among others.

The decoder hardware needs its own set of NV12 buffers
(the native decoder format), and the post-processor is the
owner of the CAPTURE buffers. This allows the application
get processed (scaled, converted, etc) buffers, completely
transparently.

This feature is implemented by exposing other CAPTURE pixel
formats to the application (ENUM_FMT). When the application
sets a pixel format other than NV12, the driver will enable
and use the post-processor transparently.

Patches 1 to 3 cleanup and organize the code to allow easier
integration of the post-processor. Then patch 4 introduces
the new pixel formats and enables the post-processor itself.

I am aware it's still early for v5.5, yet I'm posting this
series to get feedback and allow others to tests.
Also, keep in mind these patches are conflict with Jonas'
recent series.

This is tested on RK3288 platforms with MPEG-2, VP8 and H264 streams,
decoding to RGB and YUV-packed surfaces.

Thanks,
Ezequiel

Ezequiel Garcia (4):
  media: hantro: Simplify macroblock macros
  media: hantro: Simplify buffer helpers
  media: hantro: Add helper for the H264 motion vectors allocation
  media: hantro: Support color conversion via post-processing

 drivers/staging/media/hantro/Makefile         |   1 +
 drivers/staging/media/hantro/hantro.h         |  49 ++-
 drivers/staging/media/hantro/hantro_drv.c     |  27 +-
 .../staging/media/hantro/hantro_g1_h264_dec.c |   9 +-
 .../media/hantro/hantro_g1_mpeg2_dec.c        |  14 +-
 .../staging/media/hantro/hantro_g1_vp8_dec.c  |  13 +-
 .../staging/media/hantro/hantro_h1_jpeg_enc.c |   4 +-
 drivers/staging/media/hantro/hantro_h264.c    |  26 +-
 drivers/staging/media/hantro/hantro_hw.h      |  15 +-
 .../staging/media/hantro/hantro_postproc.c    | 316 ++++++++++++++++++
 drivers/staging/media/hantro/hantro_v4l2.c    |  25 +-
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |  37 +-
 drivers/staging/media/hantro/rk3399_vpu_hw.c  |  12 +-
 .../media/hantro/rk3399_vpu_hw_jpeg_enc.c     |   4 +-
 .../media/hantro/rk3399_vpu_hw_mpeg2_dec.c    |  11 +-
 .../media/hantro/rk3399_vpu_hw_vp8_dec.c      |  12 +-
 16 files changed, 483 insertions(+), 92 deletions(-)
 create mode 100644 drivers/staging/media/hantro/hantro_postproc.c

-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
