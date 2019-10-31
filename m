Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AA4EB24D
	for <lists+linux-rockchip@lfdr.de>; Thu, 31 Oct 2019 15:16:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hV1huffRgTcTHyEecJNzFZRDcp/VrWbCpGfRqh23Vu4=; b=pL1FfXt/Vx+Pae
	/3U8dbDf75UjB/nJT0zV5rL3ajunVoYRXsgklqhRcIjuY9/uGNzIWGrBrf/qUD8lGnKvE0FlWVS6+
	QZO3X2myESRjty4+gtGnr42i5vWK42SRRtqlD54n6bQhFk98DXFtyl5QJn3toYTjBcjdiA1s8FZya
	d0igQWDB2krAumPBZL0ogSXwQZXcP23EvLZdDWCj7SKzV7BEoNUTYPyr1OFITiWFNH8sYaYezkF7h
	lb1cBOcx/j7zBLfPlR7RpVAkLjDULLgAdGYB0HBVy4yLj6JzOwCVyOhiiWeBH+eEeRea4vjBu/m81
	PyMeViC6pZwPwhR5eEBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQBFB-0007nL-N0; Thu, 31 Oct 2019 14:16:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQBF0-0007eN-F6; Thu, 31 Oct 2019 14:15:59 +0000
Received: from dhcp-64-28.ens-lyon.fr ([140.77.64.28] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iQBEs-0005kg-Tz; Thu, 31 Oct 2019 15:15:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 01/13] arm64: dts: rockchip: fix iface clock-name on px30
 iommus
Date: Thu, 31 Oct 2019 15:15:49 +0100
Message-ID: <8112330.DWCu6rFsBr@phil>
In-Reply-To: <2015322.eFjuJPvpNX@phil>
References: <20190917082659.25549-1-heiko@sntech.de> <2015322.eFjuJPvpNX@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_071558_652593_D7ADE695 
X-CRM114-Status: GOOD (  10.67  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 3. Oktober 2019, 23:25:51 CET schrieb Heiko Stuebner:
> Am Dienstag, 17. September 2019, 10:26:47 CEST schrieb Heiko Stuebner:
> > The iommu clock names are aclk+iface not aclk+hclk as in the vendor kernel,
> > so fix that in the px30.dtsi
> > 
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> 
> applied patches 1-11 for 5.5
> 
> Patches 12+13 need the corresponding phy change to land first

also applied 12+13 now




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
