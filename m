Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BEFD3E2B
	for <lists+linux-rockchip@lfdr.de>; Fri, 11 Oct 2019 13:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HRERF5BEQpGxnLPVUAHKGSXF4S/S0cJ1EBI3pUNCtvs=; b=DDd
	IxdVhaQFqXAQL1Nexd0Eqzx8/QlLr5yiqPGCcElkZ0JtYKgIJ4pyOBSmA0K7MCK404QR7ep7J3cRW
	EPr2cuymwJQ35KCwXrZWUOMNFEqwaZFb1axiDV1EBjIYCi0+10/gGqVVH64KGMCPlnpm4D/C/4SiP
	qIPwBVDEF9LtRQan84+bumW2/1YjepESn2gzIFNmnth2RbxnFHRxcy8gXIUW3If3hklEG7evSgGvg
	F05cVlt4n1W/MJgtvjnmO+1XhUvQAYs+fIV1qJZPBvrESVErWlGjftJiri0PUPgdmF2y9reRBp/Je
	ZaPWhDhTUrz9txGbwn7WMphJP+s952w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIswe-00064d-99; Fri, 11 Oct 2019 11:18:52 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIswP-0005sR-3l; Fri, 11 Oct 2019 11:18:38 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 30AD3290DC9
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 0/2] AFBC for Rockchip
Date: Fri, 11 Oct 2019 13:18:09 +0200
Message-Id: <20191011111813.20851-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_041837_288231_9D4FBE6E 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, kernel@collabora.com,
 Sean Paul <sean@poorly.run>, Brian Starkey <brian.starkey@arm.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series adds AFBC support for Rockchip.
It is inspired by:

https://chromium.googlesource.com/chromiumos/third_party/kernel/+/refs/heads/factory-gru-9017.B-chromeos-4.4/drivers/gpu/drm/rockchip/rockchip_drm_vop.c

The first patch factors out some afbc helper functions from malidp,
as they are useful in general. The second patch adds implementation proper
of AFBC support for Rockchip.

Andrzej Pietrasiewicz (2):
  drm/arm: Factor out generic afbc helpers
  drm/rockchip: Add support for afbc

 drivers/gpu/drm/Kconfig                     |   4 +
 drivers/gpu/drm/Makefile                    |   1 +
 drivers/gpu/drm/arm/Kconfig                 |   1 +
 drivers/gpu/drm/arm/malidp_drv.c            |  58 +-------
 drivers/gpu/drm/drm_afbc.c                  | 114 ++++++++++++++++
 drivers/gpu/drm/rockchip/Kconfig            |   1 +
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c  |  43 ++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 140 +++++++++++++++++++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  12 ++
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c |  86 +++++++++++-
 include/drm/drm_afbc.h                      |  25 ++++
 11 files changed, 427 insertions(+), 58 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_afbc.c
 create mode 100644 include/drm/drm_afbc.h

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
