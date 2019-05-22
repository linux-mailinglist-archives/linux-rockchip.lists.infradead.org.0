Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FA125EF3
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 May 2019 10:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1KJg+LNUuV4urY7Jk2JxU+Ks1hMs27iH4CBkyngt/4=; b=kmlUlZYayt8Pwc
	MX3EFeG6Db9Ttb61wYigBgsd8gj04lWHiDbmNZDqOobg2KkvnMbtYdtcyCLNa2Uc8+YYypJwbtdNH
	dClidGjhBbKsP/ZyAYEs/f0aziBV3wvByzD9knaA+9PEHcD954fMQWHrvACx5Bdp7CZaFuIeSrvIU
	RCxY2CYMe4bYu2WgHT9JZPfIfvReiUieQ8zKjHHtaz+7wT1fkwvjukbIcdECq5ITgfYe9k+yrJHfB
	LCschpxpyGJlby03oSiqcGtq5Y9s188e/Sk3ijFqnu7NEyMs3uoUJGOhnuRIs8XEbebrYegUP1Or0
	MFH+RYLlZlHCcpt/q1SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTMEd-0005YQ-IZ; Wed, 22 May 2019 08:04:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTMEb-0005Xd-Bq; Wed, 22 May 2019 08:04:26 +0000
Received: from we0524.dip.tu-dresden.de ([141.76.178.12] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hTMEX-00080Q-GY; Wed, 22 May 2019 10:04:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Mark that the rk3288 timer might stop
 in suspend
Date: Wed, 22 May 2019 10:04:20 +0200
Message-ID: <1654629.mRIXxtDvp3@phil>
In-Reply-To: <20190521234933.153953-1-dianders@chromium.org>
References: <20190521234933.153953-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_010425_556482_54D33A3D 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 briannorris@chromium.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, ryandcase@chromium.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 22. Mai 2019, 01:49:33 CEST schrieb Douglas Anderson:
> This is similar to commit e6186820a745 ("arm64: dts: rockchip: Arch
> counter doesn't tick in system suspend").  Specifically on the rk3288
> it can be seen that the timer stops ticking in suspend if we end up
> running through the "osc_disable" path in rk3288_slp_mode_set().  In
> that path the 24 MHz clock will turn off and the timer stops.
> 
> To test this, I ran this on a Chrome OS filesystem:
>   before=$(date); \
>   suspend_stress_test -c1 --suspend_min=30 --suspend_max=31; \
>   echo ${before}; date
> 
> ...and I found that unless I plug in a device that requests USB wakeup
> to be active that the two calls to "date" would show that fewer than
> 30 seconds passed.
> 
> NOTE: deep suspend (where the 24 MHz clock gets disabled) isn't
> supported yet on upstream Linux so this was tested on a downstream
> kernel.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.3



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
