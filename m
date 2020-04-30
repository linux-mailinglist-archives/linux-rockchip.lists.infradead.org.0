Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198A91C02DE
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 18:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q7/gPuY3OXRitVXPsQpcJiipFhOtBPZr2TA1wSuU708=; b=L6f7UNmJOTZo0w
	5O/NJ9i7opyBy0tsLHUl8+GKanzQ0QkVHVWyL9u8azE0Y4qHQ9KLUVDzfgHcpzI0Z1ADAIX9aiOIJ
	SXJKBweuNbxMT2dp58pcuhtVig6fvKjsmh7M7pRuZG3dL0xXEzXvF4Viuxx8dDsFDFz7jb13zy0Eq
	ydBgLNc1LocTRtfh+ziWOIC0mE0h8PLlY4GfAyH+Vv+tZPevgq0nBvThFmBZFRZd04++7g9H1PzRL
	IwnBGzxmjimPd4iEoL2RRRrfrFOzygz8RgfupIHuX0ZC7Sr/FHNiSurZQANk5QhIkMVKo9jJsHK6g
	w5h301/MeG/8Ul1KxxGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCHj-0006co-Ma; Thu, 30 Apr 2020 16:43:39 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCH9-00067h-Pm; Thu, 30 Apr 2020 16:43:05 +0000
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 790D61C000B;
 Thu, 30 Apr 2020 16:42:57 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] media: rockchip: rga: PX30 support and YUV2YUV fix
Date: Thu, 30 Apr 2020 18:42:41 +0200
Message-Id: <20200430164245.1630174-1-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_094303_970095_D7DCA0A9 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hansverk@cisco.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

This series adds support for the Rockchip PX30 SoC in the V4L2 M2M RGA driver.
It also contains a fix for the YUV2YUV case that was not properly handled.

Changes since v2:
- Used RK3288 compatible in PX30 dts, removed PX30 compatible from driver;
- Added cleanup patch with format macros;
- Added comment about CSC mode fix.

Changes since v1:
- Rebased on media tree master (changed dt binding to yaml);
- Removed spurious line removal.

Cheers,

Paul

Paul Kocialkowski (4):
  dt-bindings: rockchip-rga: Add PX30 compatible
  arm64: dts: rockchip: Add RGA support to the PX30
  media: rockchip: rga: Introduce color fmt macros and refactor CSC mode
    logic
  media: rockchip: rga: Only set output CSC mode for RGB input

 .../bindings/media/rockchip-rga.yaml          |  3 ++
 arch/arm64/boot/dts/rockchip/px30.dtsi        | 11 +++++++
 drivers/media/platform/rockchip/rga/rga-hw.c  | 29 ++++++++++---------
 drivers/media/platform/rockchip/rga/rga-hw.h  |  5 ++++
 4 files changed, 35 insertions(+), 13 deletions(-)

-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
