Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F55C1634D
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 14:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74KLNlUNq3hO2XaK80MRERA2F0372fzBeDQzXO52FS8=; b=nTJa4T5F59a/Rv
	r/DXKWWF3fry5Fqx0z/Rqk8RHELrPp56o7fpuG4wANOV9wbilfqy/aTjNOrwvF1mKtpzKN/IyJIZ6
	oGuJ2DNvGFKOSwiVG3ut11ZwQH0sWSy0N9xFq/OnwMf9ovbE9LXxbkzBdY8MqhUL4AIEVoEbMK5G8
	04Rr9iNSuE08OCQx0/IP8KVvcRI9HgQ1MMZ5dFQH/dms2SIFWGGq9mrSKP6Jpg/6T4xVK+7azia1v
	jszZw/2b6YIEQLUXI4U2ztzpUqXApjAEjlCS9Nenrt6bm1MaN2CrgtZwusKvFYmzBEM9GysIQajHB
	Mx0mQ7u+f6DICyyswcPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNymU-0004pM-4x; Tue, 07 May 2019 12:01:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNymQ-0004oJ-AY; Tue, 07 May 2019 12:01:07 +0000
Received: from we0048.dip.tu-dresden.de ([141.76.176.48] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hNymM-0008IV-1L; Tue, 07 May 2019 14:01:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Remove bogus 'i2s_clk_out' from
 rk3288-veyron-mickey
Date: Tue, 07 May 2019 14:01:01 +0200
Message-ID: <2275852.0beATWnSof@phil>
In-Reply-To: <20190503234814.230901-1-dianders@chromium.org>
References: <20190503234814.230901-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_050106_522166_95F71682 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 amstan@chromium.org, briannorris@chromium.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Samstag, 4. Mai 2019, 01:48:14 CEST schrieb Douglas Anderson:
> The rk3288-veyron-mickey device tree overrides the default "i2s" clock
> settings to add the clock for "i2s_clk_out".
> 
> That clock is only present in the bindings downstream Chrome OS 3.14
> tree.  Upstream the i2s port bindings doesn't specify that as a
> possible clock.
> 
> Let's remove it.
> 
> NOTE: for other rk3288-veyron devices this clock is consumed by
> 'maxim,max98090'.  Presumably if this clock is needed for mickey it'll
> need to be consumed by something similar.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.3 with Matthias' rb.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
