Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5D0A3F92
	for <lists+linux-rockchip@lfdr.de>; Fri, 30 Aug 2019 23:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRkIZd+IWYsKP0LTsk8EkNuMFuk9H1CRAK2r9ILSS+w=; b=l/LcUyJhk6GrGb
	2EFv587tBXE5OlcvnaOUqda0jQR/HCUc8YzE/jyTqed9227OwQFWMw+jlqUFL6TsVc4gaKsdq8u/v
	VhYm6vuSKhtu0Xgtl1pJUU11LcysW2JVJhwkRXMfBaAs2+4+w6qYw8IVKDVCIUGNRsM0nehlBrg9A
	rFTn5OMWZfXvGugVPoBDHPjRm2BHUHsLaruw5QGdSEpCxUBaYbyPfSTqX8LvFrZZ7DOohiyJyeumw
	IFIwl/n8k+QRKErNiEmY588aqiL0ouFKXEqJPnrQfGqKgM71v/FxCi7Y7ZFv8NTIIbeF3Pq+15XaU
	Kx3NC/Je1yMyp9fyx+fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3oHG-00010a-2N; Fri, 30 Aug 2019 21:17:50 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3oH1-0000py-HN; Fri, 30 Aug 2019 21:17:36 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id E0D70154FE29B;
 Fri, 30 Aug 2019 14:17:28 -0700 (PDT)
Date: Fri, 30 Aug 2019 14:17:28 -0700 (PDT)
Message-Id: <20190830.141728.336807562506579224.davem@davemloft.net>
To: wens@kernel.org
Subject: Re: [PATCH netdev] net: stmmac: dwmac-rk: Don't fail if phy
 regulator is absent
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190829031724.20865-1-wens@kernel.org>
References: <20190829031724.20865-1-wens@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 30 Aug 2019 14:17:29 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_141735_579938_F8217B80 
X-CRM114-Status: GOOD (  10.32  )
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 wens@csie.org, joabreu@synopsys.com, peppe.cavallaro@st.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 29 Aug 2019 11:17:24 +0800

> From: Chen-Yu Tsai <wens@csie.org>
> 
> The devicetree binding lists the phy phy as optional. As such, the
> driver should not bail out if it can't find a regulator. Instead it
> should just skip the remaining regulator related code and continue
> on normally.
> 
> Skip the remainder of phy_power_on() if a regulator supply isn't
> available. This also gets rid of the bogus return code.
> 
> Fixes: 2e12f536635f ("net: stmmac: dwmac-rk: Use standard devicetree property for phy regulator")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Applied and queued up for -stable.

> On a separate note, maybe we should add this file to the Rockchip
> entry in MAINTAINERS?

Yes, probably.

Thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
