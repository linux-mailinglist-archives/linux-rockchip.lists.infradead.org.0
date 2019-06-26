Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 696C5573FD
	for <lists+linux-rockchip@lfdr.de>; Thu, 27 Jun 2019 00:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYr9JqYe+Dw6sPnHTM6PMFPjd7FyPDz7Af+vcxgCbxA=; b=RFQnN34aX/KeKS
	ef1KX+rVH4wqSkObMiYhtQWaHDfM3q3/2OS92wY64gYTA1YROS/gIL9Ef89KySWFIRjNB0R6xa4P9
	iiJFyJP7owYAk7HaXKkOIGMNytgGnU8JOoI9BmsAWYfW5A3DcBUnHZi7b2r+F795ZhN9B9onDjvpr
	ZWM9LCrDvfan2yXKnDXMscc9GaLEnZJjurpxQI4uI5GIG04qRJLwYRneV4bcHCs5X6xuQy+Z4KcFj
	waDqMLQIeVYSRHwmpKUYRD0s28XzmroiUi2HmM4fk6jysjdD86ghkPW19w2mzrDWTlEqYCcs3FgEv
	rWB7owxOJ5TNwEACwFBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgFxh-00009J-5B; Wed, 26 Jun 2019 22:00:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgFxa-0007fL-Pu; Wed, 26 Jun 2019 22:00:12 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hgFxO-0004KW-UC; Wed, 26 Jun 2019 23:59:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Configure BT_DEV_WAKE in on
 rk3288-veyron
Date: Wed, 26 Jun 2019 23:59:58 +0200
Message-ID: <1962605.yMxvVRIssp@phil>
In-Reply-To: <20190619183425.149470-1-dianders@chromium.org>
References: <20190619183425.149470-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_150010_993180_402B9F88 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 19. Juni 2019, 20:34:25 CEST schrieb Douglas Anderson:
> This is the other half of the hacky solution from commit f497ab6b4bb8
> ("ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up signal on
> veyron").  Specifically the LPM driver that the Broadcom Bluetooth
> expects to have (but is missing in mainline) has two halves of the
> equation: BT_HOST_WAKE and BT_DEV_WAKE.  The BT_HOST_WAKE (which was
> handled in the previous commit) is the one that lets the Bluetooth
> wake the system up.  The BT_DEV_WAKE (this patch) tells the Bluetooth
> that it's OK to go into a low power mode.  That means we were burning
> a bit of extra power in S3 without this patch.  Measurements are a bit
> noisy, but it appears to be a few mA worth of difference.
> 
> NOTE: Though these pins don't do much on systems with Marvell
> Bluetooth, downstream kernels set it on all veyron boards so we'll do
> the same.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.3

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
