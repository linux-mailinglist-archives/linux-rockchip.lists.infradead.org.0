Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A1AC297D
	for <lists+linux-rockchip@lfdr.de>; Tue,  1 Oct 2019 00:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+ghQjesHagLKbNDCclaNg84EzAYwPL7bJhhnTYfa4Yk=; b=O2mAwmr7DaoWzI
	JMaxKoPDuMH/OSk6sAw5Zi1r8KiYYfsjzMQtGfMCqe6E2xerqlpH3LDNVQfmkyBy/PCU6i8Z7X6De
	OOv3FGd2s4TodXqjO6PaXGE3BP9fA8VNLDOkGBcDH5HH5iJybXXwmx4MZ0ghA4aWyAb8UQDgpGcI5
	icjwD4poCKyt41c1PI47KlMiYn5+aQziIsTOYAbWPwlUVLCduT3o9jLDxrPM1A0QLlwYUj04FCt7c
	8zv6wN7zwmuItF0WsbeTbpsy64kB74dq8/l790zW2JCLPqPa7AIkx5d58t95vyvAoTIybZrZJF+EA
	2PJsDlf53xJ+HyvqLyDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF49T-0007g9-S3; Mon, 30 Sep 2019 22:28:19 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF49Q-0007en-Dj
 for linux-rockchip@lists.infradead.org; Mon, 30 Sep 2019 22:28:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 2D967283BA6
From: Ezequiel Garcia <ezequiel@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 0/5] RK3288 Gamma LUT
Date: Mon, 30 Sep 2019 19:27:57 -0300
Message-Id: <20190930222802.32088-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_152816_594746_9C48163B 
X-CRM114-Status: GOOD (  10.17  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Let's support Gamma LUT configuration on RK3288 SoCs.

In order to do so, this series adds a new and optional
address resource.
    
A separate address resource is required because on this RK3288,
the LUT address is after the MMU address, which is requested
by the iommu driver. This prevents the DRM driver
from requesting an entire register space.

The current implementation works for RGB 10-bit tables, as that
is what seems to work on RK3288.

This has been tested on a Rock2 Square board, using
'modetest' tool (modetest now supports GAMMA_LUT property),
with legacy and atomic APIs.

In addition, I've tested it with Jacopo's modified kmsxx [1],
See the rcar-du color management series for more information [2].

[1] https://jmondi.org/cgit/kmsxx/
[2] https://lkml.org/lkml/2019/9/6/490

Thanks,
Eze

Changes from v2:
* revert Sean Paul's patch, in order to use
  atomic_commit_tail hook.
* add RFC/patch for color management on resume.

Changes from v1:
* drop explicit linear LUT after finding a proper
  way to disable gamma correction.
* avoid setting gamma is the CRTC is not active.
* s/int/unsigned int as suggested by Jacopo.
* only enable color management and set gamma size
  if gamma LUT is supported, suggested by Doug.
* drop the reg-names usage, and instead just use indexed reg
  specifiers, suggested by Doug.

Changes from RFC:
* Request (an optional) address resource for the LUT.
* Add devicetree changes.
* Drop support for RK3399, which doesn't seem to work
  out of the box and needs more research.
* Support pass-thru setting when GAMMA_LUT is NULL.
* Add a check for the gamma size, as suggested by Ilia.
* Move gamma setting to atomic_commit_tail, as pointed
  out by Jacopo/Laurent, is the correct way.

Ezequiel Garcia (5):
  Revert "drm/rockchip: Use drm_atomic_helper_commit_tail_rpm"
  dt-bindings: display: rockchip: document VOP gamma LUT address
  drm/rockchip: Add optional support for CRTC gamma LUT
  ARM: dts: rockchip: Add RK3288 VOP gamma LUT address
  RFC: drm/atomic-helper: Reapply color transformation after resume

 .../display/rockchip/rockchip-vop.txt         |   6 +-
 arch/arm/boot/dts/rk3288.dtsi                 |   4 +-
 drivers/gpu/drm/drm_atomic_helper.c           |  12 ++
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |  24 +++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c   | 114 ++++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |   7 ++
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c   |   2 +
 7 files changed, 165 insertions(+), 4 deletions(-)

-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
