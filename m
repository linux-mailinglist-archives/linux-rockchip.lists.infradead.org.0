Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F01094B7CE
	for <lists+linux-rockchip@lfdr.de>; Wed, 19 Jun 2019 14:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8C7S45wq+cCYRYhxfJemgJu0koub3BETFxL0dnTdcTA=; b=Tfjo2uUKgRuUcr
	BJdblTQWeNcove4Wb7XULRJbH4/8p9G+KCloEoFSrjv59ZFr7R8MgawnMNT+AYYK9L54qVizAgEht
	kOkTH2gQ9Np5iDtd07NGKcKrF9QIRnxKMs6dPE5p1XB7GllmMSmzMyfm+QfGeglCIYBmEXCmlakWD
	GhxLmJs5Q+OP90qPRG1sc9yCwAm8g4yQkzUGW+Q4v6WDmUuiUgNvoBvmjx/znCz/KiOhhxJZONLb7
	e/L/1WSPyuPiMuBQk5Z+qPLpqFRVIIwVdI2PKHwKodaiLerEFYslSu+Aq1q0GwFI/ro/rqyYgee+G
	Nf6EKbYP28gZSgK6HLmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZVK-00058F-5y; Wed, 19 Jun 2019 12:15:54 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZVD-00054V-S4
 for linux-rockchip@lists.infradead.org; Wed, 19 Jun 2019 12:15:49 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7767C26069F;
 Wed, 19 Jun 2019 13:15:44 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
Subject: [PATCH 0/9] media: hantro: Add support for H264 decoding
Date: Wed, 19 Jun 2019 14:15:31 +0200
Message-Id: <20190619121540.29320-1-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_051548_167148_762DC4DD 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello,

This patch series adds support H264 decoding support to the hantro
driver and doing some consilidation cleanup in the driver along the
way.

Some details about the patches forming this patchset:

* The first patch is adding support for the sort_r() variant and has
  been posted separately by Rasmus. I put it back there because Andrew
  told me to repost it with the patch series using this new variant.
  As mentioned in the patch itself, I'd like this patch to be merged
  as soon as possible to avoid the synchronisation burden that might
  appear if we decide to delay it.

* Patch 2 is needed to properly propagate the output buf timestamp to
  the capture buf one, which is required for intra-frame references.

* Patches 3 to 6 are consolidating the code by providing helpers that
  can be used by all hantro backend and simplifying the ctrl
  initialization logic. We also constify the controls array.

* Patches 7 to 8 are adding common H264 decoding bits and patch 9 is
  enabling H264 decoding on rk3288

Now, a few words about the dependencies. Unfortunately there are a lot,
and that'd be great to have some of them merged.

* This series is based on top of Ezequiel's VP8 work [1].
* It depends on [2] which defines/described the H264 decoding mode
  control.
* Depends on [3] since I'm using vb2_get_buffer() to retrieve a
  reference buffer
* The final dep is a fix I sent this morning allowing me to simplify the
  ctrl initialization logic

Regards,

Boris

Boris Brezillon (5):
  media: hantro: Move copy_metadata() before doing a decode operation
  media: hantro: Constify the control array
  media: hantro: Simplify the controls creation logic
  media: hantro: Add hantro_get_{src,dst}_buf() helpers
  media: hantro: Add helpers to prepare/finish a run

Hertz Wong (3):
  media: hantro: Add core bits to support H264 decoding
  media: hantro: Add support for H264 decoding on G1
  media: hantro: Enable H264 decoding on rk3288

Rasmus Villemoes (1):
  lib/sort.c: implement sort() variant taking context argument

 drivers/staging/media/hantro/Makefile         |   2 +
 drivers/staging/media/hantro/hantro.h         |  24 +-
 drivers/staging/media/hantro/hantro_drv.c     |  95 ++-
 .../staging/media/hantro/hantro_g1_h264_dec.c | 295 ++++++++
 .../media/hantro/hantro_g1_mpeg2_dec.c        |  14 +-
 .../staging/media/hantro/hantro_g1_vp8_dec.c  |  17 +-
 .../staging/media/hantro/hantro_h1_jpeg_enc.c |  11 +-
 drivers/staging/media/hantro/hantro_h264.c    | 638 ++++++++++++++++++
 drivers/staging/media/hantro/hantro_hw.h      |  55 ++
 drivers/staging/media/hantro/hantro_v4l2.c    |  15 +-
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |  21 +-
 .../media/hantro/rk3399_vpu_hw_jpeg_enc.c     |  12 +-
 .../media/hantro/rk3399_vpu_hw_mpeg2_dec.c    |  14 +-
 include/linux/sort.h                          |   5 +
 lib/sort.c                                    |  34 +-
 15 files changed, 1175 insertions(+), 77 deletions(-)
 create mode 100644 drivers/staging/media/hantro/hantro_g1_h264_dec.c
 create mode 100644 drivers/staging/media/hantro/hantro_h264.c

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
