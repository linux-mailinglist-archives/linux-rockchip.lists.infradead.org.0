Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AE6C15C5
	for <lists+linux-rockchip@lfdr.de>; Sun, 29 Sep 2019 16:25:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gjLAdY+xKgIWppVo8fTsMTobGts84+IC5u0BwyxhEkw=; b=Hy0quwafqCRxPq
	C6DQuMFi/X3wixaYmZ3iTz8sfAWBNSF7jOim7fiM4rg99hmS0wQNHIxUVF8V3mFlsbvkDbW8V9KFW
	wvCjhDPt9YDysPhvnqQNqC7K5mf31e4Z9AICOC1bnI4xIeRYxjMMbcbplNG07JYUzbb/83XngphWt
	6wjvbTZe01pTWAldyGpy02mbWupmVmZsr56OvOuJYj51JZck6lwfZLBXbjnsH8BILvJyUlo9VZU3X
	Gu1ObYiWE2P5yb+jvPQwRewgy4ZYI2/sdzIVDTkSXYeb1AEVHChBNJanCcDUsPMU+W4ahQSNQBlfx
	5IkmXpPdw6XsXEza7cVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEa8F-0005GC-CO; Sun, 29 Sep 2019 14:25:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEa8B-00058c-O1; Sun, 29 Sep 2019 14:25:01 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iEa80-0008VQ-Bc; Sun, 29 Sep 2019 16:24:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Add cpu id to rk3288 efuse node
Date: Sun, 29 Sep 2019 16:24:47 +0200
Message-ID: <9574075.6R2mNjq6rT@phil>
In-Reply-To: <20190919142611.1.I309434f00a2a9be71e4437991fe08abc12f06e2e@changeid>
References: <20190919142611.1.I309434f00a2a9be71e4437991fe08abc12f06e2e@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_072459_932541_E8DD0536 
X-CRM114-Status: GOOD (  11.85  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 19. September 2019, 23:26:41 CEST schrieb Douglas Anderson:
> This just adds in another field of what's stored in the e-fuse on
> rk3288.  Though I can't personally promise that every rk3288 out there
> has the CPU ID stored in the eFuse at this location, there is some
> evidence that it is correct:
> - This matches what was in the Chrome OS 3.14 branch (see
>   EFUSE_CHIP_UID_OFFSET and EFUSE_CHIP_UID_LEN) for rk3288.
> - The upstream rk3399 dts file has this same data at the same offset
>   and with the same length, indiciating that this is likely common for
>   several modern Rockchip SoCs.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.5

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
