Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8AF90529
	for <lists+linux-rockchip@lfdr.de>; Fri, 16 Aug 2019 18:01:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gKmeekPstd0jYnI27Hu8m2L14Jo1u+4T4IUzxvrkcaU=; b=Yt1AeJCtCaktEy
	/ADM4xJu2VXSdrHzR80Wp6jq0APW8yb8J5fRv1cU0hChzPND5Bu6QAW4g3t1aEVTgE8zwQhB3T20P
	vDIZVDRO0KQSJqy3Mn7cR99IFqNnwkQVkEi/Iw4MhbBXph0njqHsKA5CNKSQ7dUSEP12Ze65JPMQr
	9PBjx96vcBZp0l1Gjo2jOxgxH7f4yJYnww6OqrCLRYn4LkENdZRBTJIdA5THRy1nT7KkzG14Fxg5c
	6ENsLXMp5IZclCgGyG3bE8oCKdJX3giimsEwcfSx6OnctuR1146PrEIYnrxpu83If/MOj4x7S33q+
	PFwH+tGGIo0AIi5maiAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyefk-0002Iz-Mn; Fri, 16 Aug 2019 16:01:48 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyefi-0002Ic-3n
 for linux-rockchip@lists.infradead.org; Fri, 16 Aug 2019 16:01:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id B77A6283C43
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v7 00/11] media: hantro: Add support for H264 decoding
Date: Fri, 16 Aug 2019 13:01:21 -0300
Message-Id: <20190816160132.7352-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_090146_288627_A1AA0BAD 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
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

Yet another small respin of H264 uAPI review and Hantro G1 H264
decoding support, addressing some last minute feedback from Hans.

It would be awesome if we can get this first part merged for v5.4.
We have lots of changes and improvements in the pipeline for this
driver!

Thanks,
Ezequiel

Boris Brezillon (3):
  media: uapi: h264: Add the concept of decoding mode
  media: uapi: h264: Get rid of the p0/b0/b1 ref-lists
  media: hantro: Move copy_metadata() before doing a decode operation

Ezequiel Garcia (4):
  media: uapi: h264: Rename pixel format
  media: uapi: h264: Add the concept of start code
  media: cedrus: Cleanup control initialization
  media: cedrus: Specify H264 startcode and decoding mode

Hertz Wong (3):
  media: hantro: Add core bits to support H264 decoding
  media: hantro: Add support for H264 decoding on G1
  media: hantro: Enable H264 decoding on rk3288

Rasmus Villemoes (1):
  lib/sort.c: implement sort() variant taking context argument

 .../media/uapi/v4l/ext-ctrls-codec.rst        |  99 ++-
 .../media/uapi/v4l/pixfmt-compressed.rst      |  11 +-
 drivers/media/v4l2-core/v4l2-ctrls.c          |  18 +
 drivers/media/v4l2-core/v4l2-ioctl.c          |   2 +-
 drivers/staging/media/hantro/Makefile         |   2 +
 drivers/staging/media/hantro/hantro.h         |   9 +-
 drivers/staging/media/hantro/hantro_drv.c     |  50 +-
 .../staging/media/hantro/hantro_g1_h264_dec.c | 292 ++++++++
 drivers/staging/media/hantro/hantro_h264.c    | 646 ++++++++++++++++++
 drivers/staging/media/hantro/hantro_hw.h      |  56 ++
 drivers/staging/media/hantro/hantro_v4l2.c    |  10 +
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |  21 +-
 drivers/staging/media/sunxi/cedrus/cedrus.c   |  63 +-
 drivers/staging/media/sunxi/cedrus/cedrus.h   |   3 +-
 .../staging/media/sunxi/cedrus/cedrus_dec.c   |   2 +-
 .../staging/media/sunxi/cedrus/cedrus_video.c |   6 +-
 include/linux/sort.h                          |   5 +
 include/media/h264-ctrls.h                    |  21 +-
 lib/sort.c                                    |  34 +-
 19 files changed, 1294 insertions(+), 56 deletions(-)
 create mode 100644 drivers/staging/media/hantro/hantro_g1_h264_dec.c
 create mode 100644 drivers/staging/media/hantro/hantro_h264.c

-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
