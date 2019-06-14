Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E504546512
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 18:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zGNHHgkzxrLebco5Xe9pNrPdSNpPJC3FhPwMzlBspxg=; b=R86ne3OcN4oikc
	W357BgKjB+1+9pUf2FP7WJZELSRcpldSe/BcRP6ZO+MxMYEK9qdMQoMg1gMvbHx9TaQdIcFr6/5Nr
	FfXbXRwwXJ4tdmo6vNY5BMKZeQQEz596VQlpvD/IRUdC2IpNMB9VN/vetcHJTfb73qvlKkd+B9MV0
	WyjKXNgPsi3OYxRMsBt/Il9Tg3GgLl95fwmSlaRXqthOgBLg6ODgl+JvlBpMxbjclN3wHx7uszfV/
	1QoyamkchiIGOdp1e1Bs8EquHiyyxX9HV8I+0hSIfOnXFeTJEAnNTxT153WldaqYcx+QJ8YaxedGp
	r4Y8QMG3GM9t1AsiUAkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpTo-0001C0-RA; Fri, 14 Jun 2019 16:55:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpTi-0000Wp-7x; Fri, 14 Jun 2019 16:55:04 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbpTc-0006Tl-WD; Fri, 14 Jun 2019 18:54:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 0/4] hdmi on rk3229
Date: Fri, 14 Jun 2019 18:54:50 +0200
Message-Id: <20190614165454.13743-1-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_095502_499373_AE074992 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: justin.swartz@risingedge.co.za, Heiko Stuebner <heiko@sntech.de>,
 sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The hdmiphy needs its clock reparented to the actual hdmiphy-pll
that gets generated in the hdmiphy itself.

This incorporates adapted versions of Justin's original patches
and also the needed clock adaptions to make it possible to
reparent the hdmiphy clock.

Heiko Stuebner (2):
  clk: rockchip: add clock id for hdmi_phy special clock
  clk: rockchip: export HDMIPHY clock

Justin Swartz (2):
  ARM: dts: rockchip: add display nodes for rk322x
  ARM: dts: rockchip: fix vop iommu-cells on rk322x

 arch/arm/boot/dts/rk322x.dtsi          | 85 +++++++++++++++++++++++++-
 drivers/clk/rockchip/clk-rk3228.c      |  2 +-
 include/dt-bindings/clock/rk3228-cru.h |  1 +
 3 files changed, 86 insertions(+), 2 deletions(-)

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
