Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FAC73513
	for <lists+linux-rockchip@lfdr.de>; Wed, 24 Jul 2019 19:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jebw4unkh8mmbj1tVaxQ9NbiU4a7Yu9MvJZY/Gi/g14=; b=XaplTE2jgqeg0g
	xFStojttFkfJggNKkQ0p7Xr+re1o45gkJAiF3LhB/7qELQdFEUIJTl4hvV3Y6+Fhzj6Qj5aZZ07/B
	YAVIfbLJu/EQlfl/9IVaoqm5+JxngEY5gvE7yBZmXtagOA1wUoso70xQQZg/2k18M2I+2X+RIYn9I
	C/37wDDP06MKiGKFzgRDrdvn+BJGDdA7xzQDsLeQLv3z1b0VGd5ujFzMcP91l4735gnZSC0GtJLI4
	xKKWFsb+l7fqZmMT9Al7B78JVbuUE29D1UqCTOinaVavhjvCz8UVc3eo61icgDP9VA9hTp1JT4DiT
	aUGB0+1RBKKTA79Jhr7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKuc-0006Zq-Nm; Wed, 24 Jul 2019 17:18:46 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKtA-0003KU-VY
 for linux-rockchip@lists.infradead.org; Wed, 24 Jul 2019 17:17:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 2CDFB28B603
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org,
	Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH 0/7] hantro: Add RK3399 VP8 decoding support
Date: Wed, 24 Jul 2019 14:16:55 -0300
Message-Id: <20190724171702.9449-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_101717_164426_03BF2850 
X-CRM114-Status: UNSURE (   7.33  )
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

This series adds VP8 decoding support on RK3399 SoC.

I'm including a set of commits from Boris' recent H264 series [1].
These commits add some helpers that are also useful for RK3399 VP8,
and at the same time cleanup the driver nicely.

Finally, there's a fix by Francois Buergisser from Chromium team.

VP8 and MPEG-2 tested on RK3399 RockPi and RK3288 Rock2 boards.

[1] https://patchwork.kernel.org/cover/11003971/

Boris Brezillon (4):
  media: hantro: Simplify the controls creation logic
  media: hantro: Constify the control array
  media: hantro: Add hantro_get_{src,dst}_buf() helpers
  media: hantro: Add helpers to prepare/finish a run

Ezequiel Garcia (1):
  media: hantro: Move VP8 common code

Francois Buergisser (1):
  media: hantro: Set DMA max segment size

Jeffy Chen (1):
  media: hantro: Support RK3399 VP8 decoding

 drivers/staging/media/hantro/Makefile         |   1 +
 drivers/staging/media/hantro/hantro.h         |  15 +-
 drivers/staging/media/hantro/hantro_drv.c     |  53 +-
 .../media/hantro/hantro_g1_mpeg2_dec.c        |  14 +-
 .../staging/media/hantro/hantro_g1_vp8_dec.c  |  34 +-
 .../staging/media/hantro/hantro_h1_jpeg_enc.c |  11 +-
 drivers/staging/media/hantro/hantro_hw.h      |   7 +
 drivers/staging/media/hantro/hantro_vp8.c     |  15 +
 drivers/staging/media/hantro/rk3399_vpu_hw.c  |  22 +-
 .../media/hantro/rk3399_vpu_hw_jpeg_enc.c     |  12 +-
 .../media/hantro/rk3399_vpu_hw_mpeg2_dec.c    |  14 +-
 .../media/hantro/rk3399_vpu_hw_vp8_dec.c      | 597 ++++++++++++++++++
 12 files changed, 711 insertions(+), 84 deletions(-)
 create mode 100644 drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c

-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
