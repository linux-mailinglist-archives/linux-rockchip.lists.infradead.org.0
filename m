Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD81CB10E
	for <lists+linux-rockchip@lfdr.de>; Thu,  3 Oct 2019 23:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4lz0EEkoITmvjzXd7ZUVPe/hHXaoFpSgMX/a8FQ3gc=; b=DnOsHo9UMnp/me
	omj9WDas9nc3Ayc/fDa0JAHCBxYdmfB7vprlKH9QbvE5QUfhNJSVSyzPZPq/ylQtWiwGTgvw/UVmt
	Lqr5tqsSZSIEGfmsspt5tcstc1u3WP8Dw4YueSyv6LLHl+3YUo7/NWRrildz8UDNkU8pBF/C0tZQY
	peUSCHRAXj9aVVBdsyaHSNDl1NHie15kLcZ0v5J4jYGrSGTNt4oBU7vLTy0SmNfwOOJBj7VOIzwDR
	SJO6hC8mKWMfVSJbQGTt700Ss8rr8wzLRxrgha9Qx2G5mFYXVJV33lE8glX8Fe46t0Jt9uTI8U3M9
	BItydNxFAiDmluUcmG0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG8c1-0004TV-7O; Thu, 03 Oct 2019 21:26:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG8bn-0004IG-9R; Thu, 03 Oct 2019 21:26:01 +0000
Received: from p57b7758c.dip0.t-ipconnect.de ([87.183.117.140]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iG8bg-0000an-7d; Thu, 03 Oct 2019 23:25:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 01/13] arm64: dts: rockchip: fix iface clock-name on px30
 iommus
Date: Thu, 03 Oct 2019 23:25:51 +0200
Message-ID: <2015322.eFjuJPvpNX@phil>
In-Reply-To: <20190917082659.25549-1-heiko@sntech.de>
References: <20190917082659.25549-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_142559_479713_35F248EB 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 17. September 2019, 10:26:47 CEST schrieb Heiko Stuebner:
> The iommu clock names are aclk+iface not aclk+hclk as in the vendor kernel,
> so fix that in the px30.dtsi
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied patches 1-11 for 5.5

Patches 12+13 need the corresponding phy change to land first



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
