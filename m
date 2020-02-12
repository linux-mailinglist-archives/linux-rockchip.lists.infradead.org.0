Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A2315B3EA
	for <lists+linux-rockchip@lfdr.de>; Wed, 12 Feb 2020 23:36:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTwzid/nj3vSqx+Tyf5jsO3S9VZDGS15outn6sjoubI=; b=WhBfIgLEnRvEuw
	kEBYKVcyXJszo/OO4YOHtFiYmVPqYl2SU9mKDfRMywLBqPAXVRwSxIwNj36ggozJzP3eopUGx2VtR
	rLa6PMr2WGembL9I+Bldh2ljphXczrw649XfdcdtnU1gpfxjUFZf9v+mGvcNexkODvE8Lh20/NGEN
	tOcutR8T0HBUprDBrD9L0Xsu2ChG10cZ7jopTmfbMlzhp6ysl8P7YBr4mn/EOmOf5/wTQkI0ExTJK
	meke2oVunRFPX67Px13k2Bt2/rzcDtiI62/iAX3XwF5MdP69PziaM1S+kBa+hMiyVy543ADChuRlu
	+bBdEk8ZQ3BJU/bNY4yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j20cT-00079s-OL; Wed, 12 Feb 2020 22:36:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j20cK-00072A-2g; Wed, 12 Feb 2020 22:36:25 +0000
Received: from p508fd8fe.dip0.t-ipconnect.de ([80.143.216.254]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j20cF-0001ua-8B; Wed, 12 Feb 2020 23:36:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH] clk: rockchip: fix incorrect configuration of rk3228
 aclk_gpu* clocks
Date: Wed, 12 Feb 2020 23:36:18 +0100
Message-ID: <3638560.bLjz2vc75D@phil>
In-Reply-To: <20200114162503.7548-1-justin.swartz@risingedge.co.za>
References: <20200114162503.7548-1-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_143624_271515_34ED52BB 
X-CRM114-Status: GOOD (  11.70  )
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Justin,

Am Dienstag, 14. Januar 2020, 17:25:02 CET schrieb Justin Swartz:
> The following changes prevent the unrecoverable freezes and rcu_sched
> stall warnings experienced in each of my attempts to take advantage of
> lima.
> 
> Replace the COMPOSITE_NOGATE definition of aclk_gpu_pre with a
> COMPOSITE that retains the selection of HDMIPHY as the PLL source, but
> instead makes uses of the aclk_gpu PLL source gate and parent names
> defined by mux_pll_src_4plls_p rather than mux_aclk_gpu_pre_p.
> 
> Remove the now unused mux_aclk_gpu_pre_p and the four named but also
> unused definitions (cpll_gpu, gpll_gpu, hdmiphy_gpu and usb480m_gpu)
> of the aclk_gpu PLL source gate.
> 
> Use the correct gate offset for aclk_gpu and aclk_gpu_noc.
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>

thanks a lot for diving through the clock controller and fixing the
issues. I've checked against the TRM as well and the previous state
was quite wrong and your changes match the hardware manual.

I've applied it as fix for 5.6 now.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
