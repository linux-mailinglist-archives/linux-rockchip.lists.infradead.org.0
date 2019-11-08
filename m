Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2740F3C7E
	for <lists+linux-rockchip@lfdr.de>; Fri,  8 Nov 2019 01:04:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u48aDiVopPDaEU7GDMnz2Xk6Mbe7EwrjOJPNjty8Jyg=; b=Ro2tx96sOD6toM
	JTPdTqX0zzdAhf02zjK9sx9dsTUvybCtnYwEJXhHV89FD5F1f6SzO/eJ8CGP4FcvfGCc4kYcbONof
	2U6dZgvIseUY5gXVLMO6Cm3D0TlIFkUJMO/kxCxXEXcWjiv2CKqbLYzssvMHvpP5q/sWYI6piwV4f
	85HaZK9qtTu7if4Jld7DLFTdwRwvCskUUloFOUuvvfIhNSzBglIBZOzqfyaD6PKcTsQ6CS6v+jQf+
	EHMNxtWtpNTpjNdPUmHkiUgq9GqVpigC3oyu+juHqox8x4TXIgCmtudkVuInrC1eR9Xe/g680ntOO
	umG/gk7JRYMGeWH1dlPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSrlk-0007uR-Lx; Fri, 08 Nov 2019 00:04:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSrkE-0006Os-6D; Fri, 08 Nov 2019 00:03:21 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko.stuebner@theobroma-systems.com>)
 id 1iSrjz-00065H-Jt; Fri, 08 Nov 2019 01:03:03 +0100
From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
To: dri-devel@lists.freedesktop.org,
	a.hajda@samsung.com
Subject: [PATCH v2 0/5] dw-mipi-dsi support for Rockchip px30
Date: Fri,  8 Nov 2019 01:02:48 +0100
Message-Id: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_160318_410954_39C20379 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 heiko@sntech.de, jonas@kwiboo.se, linux-kernel@vger.kernel.org,
 narmstrong@baylibre.com, hjc@rock-chips.com, philippe.cornu@st.com,
 yannick.fertre@st.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 Laurent.pinchart@ideasonboard.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series adds support for the dsi controller on the px30.
The main difference to previous incarnations is the use of an
external dphy for the output.

changes in v2:
- drop handling the dphy-pll manually, instead use the regular
  phy configuration operations, thanks Laurent for the suggestion
- add missing px30 compatible to the binding and make
  binding changes separate patches


Heiko Stuebner (5):
  drm/bridge/synopsys: dsi: move phy_ops callbacks around panel
    enablement
  dt-bindings: display: rockchip-dsi: document external phys
  drm/rockchip: add ability to handle external dphys in mipi-dsi
  dt-bindings: display: rockchip-dsi: add px30 compatible
  drm/rockchip: dsi: add px30 support

 .../display/rockchip/dw_mipi_dsi_rockchip.txt | 13 ++-
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 13 ++-
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 95 ++++++++++++++++++-
 3 files changed, 106 insertions(+), 15 deletions(-)

-- 
2.23.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
