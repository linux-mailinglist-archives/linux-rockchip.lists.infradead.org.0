Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2AB85FC8
	for <lists+linux-rockchip@lfdr.de>; Thu,  8 Aug 2019 12:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=40629I31mq5flANvs9DjR2UERdCmGFmprA1MjxNKm0Q=; b=El68LE1hzuCvOL
	VVMvDz39U0FkDEpoEdeVCiQzICsfsrqyJn9WKUGhQMwSoH8UXlkEfP0ODegtFpi+J4iYfp3tgaiQr
	dMHLtltLDPWecb2L2rzgCEDj5uDvYdg+Zh09P8XmuVvrKQGDcpqxsVzv7OdqBC9PPWAggUsSIXu4w
	i3/eddUUQUg18KODcGtsTSQMdn04wU5vQrXqVv8WVrJTNJY0tp5sewfrwXH7cJwMAdXSaA8W/iYAT
	5QNjfTaiBPdVPXTHu3U1iL5fieAblZ6PZtGSCW8RplKEG41e5HWfrIc7t8fxJkayeAtozB+QwOGvs
	A1hwkT0o+wnfBfIDrL6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfl0-0004Qw-Ob; Thu, 08 Aug 2019 10:34:54 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfku-0004Q0-Op
 for linux-rockchip@lists.infradead.org; Thu, 08 Aug 2019 10:34:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 4B82A28B682
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 00/11] media: hantro: Add support for H264 decoding
Date: Thu,  8 Aug 2019 07:34:21 -0300
Message-Id: <20190808103432.12062-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_033449_080152_82932750 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: fbuergisser@chromium.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series is consolidating the two recent H264 series submitted
by Boris [1] [2]. Given some patches from [2]  have been merged (namely,
helpers for the Hantro driver), the series contains the remanining
bits required to support H264 on Hantro G1 VPU.

* Patch 1 adds support for the sort_r() variant and has
  been posted separately by Rasmus. It would be good to merge this patch
  via the media tree, ideally as soon as possible, to avoid the
  synchronisation burden that might appear if we decide to delay it.

* Patch 2 to 4 extends the H264 uAPI, introducing frame-based vs slice-based
  decoding granularity, and also support for different NALU start codes.
  Currently, Annex B and no start codes are the supported options.

  With the introduction of the start code control, the H264 parsed
  slices pixel format should be renamed, dropping the _RAW suffix,
  which is now meaningless.

* Patch 5 removes the P0/B0/B1 ref lists from the decode_params control.
  These lists are no longer needed since we build them on the
  kernel side based on the DPB.

* Patch 6 and 7 exposes the proper decoding mode and start code
  on the cedrus driver. The driver functionality is not changed,
  and only the Cedrus support is now being properly exposed to
  userspace.

* Patch 8 is needed to properly propagate the OUTPUT buffer timestamp to
  the CAPTURE buffer one, which is required for intra-frame references.

* Patches 9 to 11 adds H264 support for Hantro G1 and then enable
  H264 decoding on RK3288.

This series has been tested using MPV/Ffmpeg, on Rockchip RK3288
for Hantro and Allwinner H3 boards for Cedrus.

[1] https://www.mail-archive.com/linux-media@vger.kernel.org/msg148299.html
[2] https://lkml.org/lkml/2019/6/19/379

Boris Brezillon (3):
  media: uapi: h264: Add the concept of decoding mode
  media: uapi: h264: Get rid of the p0/b0/b1 ref-lists
  media: hantro: Move copy_metadata() before doing a decode operation

Ezequiel Garcia (4):
  media: uapi: h264: Rename pixel format
  media: uapi: h264: Add the concept of start code
  media: cedrus: Cleanup control initialization
  media: cedrus: Specify the required H264 start code

Hertz Wong (3):
  media: hantro: Add core bits to support H264 decoding
  media: hantro: Add support for H264 decoding on G1
  media: hantro: Enable H264 decoding on rk3288

Rasmus Villemoes (1):
  lib/sort.c: implement sort() variant taking context argument

 .../media/uapi/v4l/ext-ctrls-codec.rst        |  83 ++-
 .../media/uapi/v4l/pixfmt-compressed.rst      |   4 +-
 drivers/media/v4l2-core/v4l2-ctrls.c          |  18 +
 drivers/media/v4l2-core/v4l2-ioctl.c          |   2 +-
 drivers/staging/media/hantro/Makefile         |   2 +
 drivers/staging/media/hantro/hantro.h         |   9 +-
 drivers/staging/media/hantro/hantro_drv.c     |  50 +-
 .../staging/media/hantro/hantro_g1_h264_dec.c | 292 ++++++++
 drivers/staging/media/hantro/hantro_h264.c    | 649 ++++++++++++++++++
 drivers/staging/media/hantro/hantro_hw.h      |  56 ++
 drivers/staging/media/hantro/hantro_v4l2.c    |  10 +
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |  21 +-
 drivers/staging/media/sunxi/cedrus/cedrus.c   |  65 +-
 drivers/staging/media/sunxi/cedrus/cedrus.h   |   3 +-
 .../staging/media/sunxi/cedrus/cedrus_dec.c   |   2 +-
 .../staging/media/sunxi/cedrus/cedrus_video.c |   6 +-
 include/linux/sort.h                          |   5 +
 include/media/h264-ctrls.h                    |  22 +-
 lib/sort.c                                    |  34 +-
 19 files changed, 1279 insertions(+), 54 deletions(-)
 create mode 100644 drivers/staging/media/hantro/hantro_g1_h264_dec.c
 create mode 100644 drivers/staging/media/hantro/hantro_h264.c

-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
