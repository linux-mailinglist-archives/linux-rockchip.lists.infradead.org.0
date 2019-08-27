Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5561F9EAFC
	for <lists+linux-rockchip@lfdr.de>; Tue, 27 Aug 2019 16:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQosDG/kbhSYnQXD9HThLfeKTDvkGMLl+qXwfLY202E=; b=GHn39peyMu2CvB
	sHbBPgI6mRdoGQ9YP1mXIYTnfBYT397tH1FmdIep9pjXkwJQSYu3gLMBxrz4uYFpn7VkZEM7SMEGQ
	b+PWplR5/+utd0FtngNhWhuJaBfpnsOFkJYWvAvWlxCjJ8g7Bd/Li6HXy6cpC+MNg8SOIQ0KtGRm0
	5NUH6bupyLj/C0O0bTbNkmDLOi3z59P6K7tfttDvxBoA6qbzt5zZJzkKl/C5R3xm4Rh4KTVhx6dKb
	H+hMwNXfeUsQe/V7L4gTqUktDnWUShKkoVYHL/6dlgf9XhRMAUu/WjZSO9PTfOCl2HL8P1XvZWSlU
	1pAeQcu3RYWI0Hshe5uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2cSy-00077I-65; Tue, 27 Aug 2019 14:29:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cSk-0006xP-Ta; Tue, 27 Aug 2019 14:28:48 +0000
Received: from c-73-71-116-68.hsd1.ca.comcast.net ([73.71.116.68]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1i2cSP-0002Ds-GB; Tue, 27 Aug 2019 16:28:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Elon Zhang <zhangzj@rock-chips.com>
Subject: Re: [PATCH v1 1/1] ARM: dts: rockchip: set crypto default disabled on
 rk3288
Date: Tue, 27 Aug 2019 16:28:21 +0200
Message-ID: <4806912.UyKsYhR33o@phil>
In-Reply-To: <20190827071439.14767-1-zhangzj@rock-chips.com>
References: <20190827071439.14767-1-zhangzj@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_072847_162759_C0BD1273 
X-CRM114-Status: GOOD (  16.44  )
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
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

Am Dienstag, 27. August 2019, 09:14:39 CEST schrieb Elon Zhang:
> Not every board needs to enable crypto node, so the node should
> be set default disabled in rk3288.dtsi and enabled in specific
> board dts file.

Can you give a bit more rationale here? There would need to be a very
specific reason because of the following:

The crypto module is not wired to some board-specific components,
so its usability does not depend on the specific board at all.
Instead every board can just use it out of the box and the devicetree
is supposed to describe the hardware and is _not_ meant as a space
for user configuration.

So in fact the status property should probably go away completely from
the crypto node, as it's usable out of the box in all cases.


Heiko



> Signed-off-by: Elon Zhang <zhangzj@rock-chips.com>
> ---
>  arch/arm/boot/dts/rk3288.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index cc893e154fe5..d509aa24177c 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -984,7 +984,7 @@
>  		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
>  		resets = <&cru SRST_CRYPTO>;
>  		reset-names = "crypto-rst";
> -		status = "okay";
> +		status = "disabled";
>  	};
>  
>  	iep_mmu: iommu@ff900800 {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
