Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3A0D3BF1
	for <lists+linux-rockchip@lfdr.de>; Fri, 11 Oct 2019 11:10:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=foIqpYszsHdentQyukThI7fdQRKhyGBSvpeL5s64q8A=; b=DbXpd07QUIqCIL
	8PG0foGcpeqMcbJlIaGY52j2G5aWFu0iZqYISDZTMxRk2GwmGJjL16evQZgQGifw2iWKhfbwL/Nvw
	2HH17oU0bQFW6Vhv7cmyA3KBdypmQ4/hqezMnorCAjrxJFYCQETWVzFlgX3PUSUYwB4o/O2mOA1pT
	VO7x8hdpg3Ymfwd55vs1XqdnLHUDKnJHCoG9dF8tAtxR96iOOvu6XFG0WeAqw9zBXqdnYBYSbVKBN
	XbevkliYMl5TwESfDd7kpUwnd02gCAARAuCECGVxbJKMGhNgN3ncIZ4PAOXFLjF9J3XvAjp2Dx4RL
	Zbyb0la2e15PTUN2VzqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqwB-0007uI-M4; Fri, 11 Oct 2019 09:10:15 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqw7-0007sk-PH
 for linux-rockchip@lists.infradead.org; Fri, 11 Oct 2019 09:10:13 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6DA47290D4D;
 Fri, 11 Oct 2019 10:10:08 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
Subject: [PATCH v2 0/4] media: rockchip: Add the rkvdec driver
Date: Fri, 11 Oct 2019 11:09:35 +0200
Message-Id: <20191011090939.1377-1-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_021011_955678_73C8BD52 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello,

This is v2 of the rkvdec driver which was initially posted as part of
my RFC adding codec helpers.
For this version, I decided to get rid of the helper stuff which is
likely to take some more time to settle. The patchset now contains a
proper DT binding doc.

Note that this implementation is likely to be adjusted based on the
outcome of the 'scaling matrix order' [1] and 'dynamic resolution
changes' [2] discussions, but I thought it'd be worth posting this
version to start getting feeback.

Regards,

Boris

[1]https://patchwork.kernel.org/cover/11125207/
[2]https://lkml.org/lkml/2019/9/3/1033

Boris Brezillon (4):
  media: vb2: Add a helper to get the vb2 buffer attached to a request
  media: dt-bindings: rockchip: Document RK3399 Video Decoder bindings
  media: rockchip: Add the rkvdec driver
  arm64: dts: rockchip: rk3399: Define the rockchip Video Decoder node

 .../bindings/media/rockchip,vdec.yaml         |   71 ++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |   14 +-
 .../media/common/videobuf2/videobuf2-core.c   |   23 +
 drivers/staging/media/Kconfig                 |    2 +
 drivers/staging/media/Makefile                |    1 +
 drivers/staging/media/rockchip/Kconfig        |   16 +
 drivers/staging/media/rockchip/Makefile       |    2 +
 drivers/staging/media/rockchip/vdec/Kconfig   |   14 +
 drivers/staging/media/rockchip/vdec/Makefile  |    3 +
 .../staging/media/rockchip/vdec/rkvdec-h264.c |  960 +++++++++++++++
 .../staging/media/rockchip/vdec/rkvdec-regs.h |  306 +++++
 drivers/staging/media/rockchip/vdec/rkvdec.c  | 1089 +++++++++++++++++
 drivers/staging/media/rockchip/vdec/rkvdec.h  |  131 ++
 include/media/videobuf2-core.h                |   11 +
 14 files changed, 2642 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec.yaml
 create mode 100644 drivers/staging/media/rockchip/Kconfig
 create mode 100644 drivers/staging/media/rockchip/Makefile
 create mode 100644 drivers/staging/media/rockchip/vdec/Kconfig
 create mode 100644 drivers/staging/media/rockchip/vdec/Makefile
 create mode 100644 drivers/staging/media/rockchip/vdec/rkvdec-h264.c
 create mode 100644 drivers/staging/media/rockchip/vdec/rkvdec-regs.h
 create mode 100644 drivers/staging/media/rockchip/vdec/rkvdec.c
 create mode 100644 drivers/staging/media/rockchip/vdec/rkvdec.h

-- 
2.21.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
