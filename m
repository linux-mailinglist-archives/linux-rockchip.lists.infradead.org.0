Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6DD15B390
	for <lists+linux-rockchip@lfdr.de>; Wed, 12 Feb 2020 23:24:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7XvkrM5l7MJkqlKU5ejGPYVImAsjTmCxcMk3og3kow=; b=JXtzBKBzYkCU06
	JpkqTPeaa/Y0Lnga6jFrJ+NiMdcIXhi7dEf7J+Wj7RCCIA6zQ587y1mm6k8msZVdOGdGpu306iQvJ
	ICdtlmnVeMqO+9lD26oyYDkr9/6sqGApDItmVaTFoBDk8hW1Fu842D2oRPeDdnHPSdelvJ2hECaCX
	QksdmFV9Jq38VBOS4GWOk0k/cpnPjeFy3tslUgdTApFYi1rb3zej5D/bVioQrbferDVN376RFb1nF
	qFwZ3UazMpqf1/PZrDG6humWb+LaeOQVDwd97acjrZe0Slcs0A1+N0agkNV8osMeivVIkH83oziC7
	ZQqEdQkMI2C56QeVlA1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j20Qz-0001eL-EV; Wed, 12 Feb 2020 22:24:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j20Qp-0001Vm-Ch; Wed, 12 Feb 2020 22:24:33 +0000
Received: from p508fd8fe.dip0.t-ipconnect.de ([80.143.216.254]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j20Qj-0001sJ-So; Wed, 12 Feb 2020 23:24:25 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Alexis Ballier <aballier@gentoo.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: rk3399-orangepi: Add ethernet
 phy.
Date: Wed, 12 Feb 2020 23:24:25 +0100
Message-ID: <4035287.ZI63WRSm04@phil>
In-Reply-To: <20200206151025.3813-1-aballier@gentoo.org>
References: <20200206151025.3813-1-aballier@gentoo.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_142431_582451_3F45CADF 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 6. Februar 2020, 16:10:24 CET schrieb Alexis Ballier:
> Enables INTB.
> The wiring is the same as the nanopi4, so this is heavily based on:
> - [1a4e6203f0c] arm64: dts: rockchip: Add nanopi4 ethernet phy
> - [bc43cee88aa] arm64: dts: rockchip: Update nanopi4 phy reset properties
> by Robin Murphy.
> 
> Signed-off-by: Alexis Ballier <aballier@gentoo.org>
> Cc: devicetree@vger.kernel.org
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

applied both for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
