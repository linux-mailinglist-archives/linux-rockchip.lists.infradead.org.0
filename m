Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66E519DB08
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 Apr 2020 18:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g7haq20AsFfpxe/yJObhUgiz/6G93uDClugCcFsP+1Y=; b=Oujus908tVKvlm
	9zGsBsBXJZ0i7YnkD3FVoxYQvC3AvEqXZL4cOAF478zE33Hh7YJtnegopc8uedYKmY/k0+KlH5ykd
	dAhTsavXxbtFPJIihQYn2bQoLRz98yZsEdZJu7xGn5kDX+/Luk9ieHiwcghkDXCgKKWMzbcgOXo4S
	NpEADydRhY1FQLEeFdXA8DkHsbYnCkMw1kztXE+UchHcT3K5GfzK9lHa3eq5X1pqiLdoQlqNsd178
	s+Ktq8C9aggIO7q73uY7vCxOXGrwV2IfHJtYm2Kpskc50fu1SHkqXE9G++p4CgD40kVVyTOOWAx08
	W5TQq2FFRSxvaywo7TGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKOz7-0006Pf-PL; Fri, 03 Apr 2020 16:15:57 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKOz4-0006PK-Ue
 for linux-rockchip@lists.infradead.org; Fri, 03 Apr 2020 16:15:56 +0000
Received: from floko.floko.floko (unknown
 [IPv6:2804:431:e7cc:11ff:4f80:3de:e2b2:5c1d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A4716297D6D;
 Fri,  3 Apr 2020 17:15:47 +0100 (BST)
From: Helen Koike <helen.koike@collabora.com>
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/9] move Rockchip ISP bindings out of staging / add ISP DT
 nodes for RK3399
Date: Fri,  3 Apr 2020 13:15:29 -0300
Message-Id: <20200403161538.1375908-1-helen.koike@collabora.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_091555_115871_CFD33A37 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, karthik.poduval@gmail.com, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, jbx6244@gmail.com, kernel@collabora.com,
 ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Move the bindings out of drivers/staging and place them in
Documentation/devicetree/bindings instead.

Also, add DT nodes for RK3399 and verify with make ARCH=arm64 dtbs_check
and make ARCH=arm64 dt_binding_check.

Tested by verifying images streamed from RockPi 4 board with imx219
module.

Changes in v2:
Add patches modifying bindings, as sugested by Johan Jonker in v1,
before moving them out of staging.

Johan, I added a Suggested-by tag in the commits, please let me know if
you prefer not having the tag there.

Helen Koike (7):
  media: staging: dt-bindings: rkisp1: add missing required nodes
  media: staging: dt-bindings: rkisp1: add required items in i2c example
  media: staging: dt-bindings: rkisp1: re-order properties
  media: staging: dt-bindings: phy-rockchip-dphy-rx0: remove non-used
    reg property
  dt-bindings: phy: phy-rockchip-dphy-rx0: move rockchip dphy rx0
    bindings out of staging
  dt-bindings: media: rkisp1: move rockchip-isp1 bindings out of staging
  media: MAINTAINERS: rkisp1: add path to dt-bindings

Shunqian Zheng (2):
  arm64: dts: rockchip: add rx0 mipi-phy for rk3399
  arm64: dts: rockchip: add isp0 node for rk3399

 .../bindings/media/rockchip-isp1.yaml         | 45 ++++++++++++-------
 .../bindings/phy/rockchip-mipi-dphy-rx0.yaml  |  3 --
 MAINTAINERS                                   |  1 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      | 38 ++++++++++++++++
 4 files changed, 68 insertions(+), 19 deletions(-)
 rename {drivers/staging/media/rkisp1/Documentation => Documentation}/devicetree/bindings/media/rockchip-isp1.yaml (91%)
 rename {drivers/staging/media/phy-rockchip-dphy-rx0/Documentation => Documentation}/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml (98%)

-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
