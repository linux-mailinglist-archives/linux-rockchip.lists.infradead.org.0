Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D17EEDFE
	for <lists+linux-rockchip@lfdr.de>; Mon,  4 Nov 2019 23:12:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DaaBizdn9Y0Ck2UEftVudf6uNpmaFE0FEE9y4+utWPc=; b=edUcMVd4c94u01LcXG2udew4HW
	k8kYJO12xWf9luujdrViN5hH+mWujeVaOPKuOn7Zbq8cD96beZiCuCiB4cmIq5bvzBBcsyUcYDlgK
	y4vyl6Vas7Zmy0QAS8w+fXIjGWN46ZLNM+c7P7gecp42hv7Fapg5LIixMSBqcpMPpX5ArOefA1hEf
	oIRRqtKv6INcS/XyCPJE4Yx3zWFZsHc17igTYFiSME9UfFJquaev7oF2JzNYtTxrdCt6xMIjB9ku3
	itLrB+tOU2TSkFr9N4urztUKuHTo7D1Nle8snpveXNM1gFCqqEWxXRX3VCag61EGetMJ84zo6h41q
	UK0bsvIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRkaY-0006tB-LM; Mon, 04 Nov 2019 22:12:42 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRkaU-0006rH-QV
 for linux-rockchip@lists.infradead.org; Mon, 04 Nov 2019 22:12:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 30E5628B940
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCHv2 0/4] AFBC support for Rockchip
Date: Mon,  4 Nov 2019 23:12:24 +0100
Message-Id: <20191104221228.3588-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <2485717.1SzL54aMiy@e123338-lin>
References: <2485717.1SzL54aMiy@e123338-lin>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_141238_990526_99B32D7F 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
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
Cc: Ayan Halder <Ayan.Halder@arm.com>, kernel@collabora.com,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sandy Huang <hjc@rock-chips.com>,
 Maxime Ripard <mripard@kernel.org>, linux-rockchip@lists.infradead.org,
 James Wang <james.qian.wang@arm.com>, Daniel Vetter <daniel@ffwll.ch>,
 Mihail Atanassov <mihail.atanassov@arm.com>, Sean Paul <sean@poorly.run>,
 Brian Starkey <brian.starkey@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series adds AFBC support for Rockchip. It is inspired by:

https://chromium.googlesource.com/chromiumos/third_party/kernel/+/refs/heads/factory-gru-9017.B-chromeos-4.4/drivers/gpu/drm/rockchip/rockchip_drm_vop.c

The first patch factors out some afbc helper functions, as they are useful
in general. The second and third patches use the helpers and the fourth patch
adds implementation proper of AFBC support for Rockchip.

v1..v2:

- addressed comments from Daniel Stone, Ayan Halder, Mihail Atanassov
- coding style fixes

Andrzej Pietrasiewicz (4):
  drm/arm: Factor out generic afbc helpers
  drm/malidp: use afbc helpers
  drm/komeda: use afbc helpers
  drm/rockchip: Add support for afbc

 drivers/gpu/drm/Kconfig                       |   8 +
 drivers/gpu/drm/Makefile                      |   1 +
 drivers/gpu/drm/arm/Kconfig                   |   1 +
 .../arm/display/komeda/komeda_format_caps.h   |   1 -
 .../arm/display/komeda/komeda_framebuffer.c   |  44 +++---
 drivers/gpu/drm/arm/malidp_drv.c              |  66 ++------
 drivers/gpu/drm/drm_afbc.c                    | 129 ++++++++++++++++
 drivers/gpu/drm/rockchip/Kconfig              |   1 +
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |  42 ++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c   | 141 +++++++++++++++++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |  12 ++
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c   |  84 ++++++++++-
 include/drm/drm_afbc.h                        |  36 +++++
 13 files changed, 480 insertions(+), 86 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_afbc.c
 create mode 100644 include/drm/drm_afbc.h

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
