Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C931A1E0C19
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 May 2020 12:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S2Do4zTjX8QrjdchlBWZjCe52McvVFwy4zp05OHM8fQ=; b=uyEW8zs87X4n/v
	H11tCKsPDrJOgAJP5bVLBKOXJpYFGHQXpxdmgsRruKwTW+kIvndMoi1NlC4MnGsQWFF+oRKmlwQEj
	XDxg0rmUSJs5VFfNGYleQd6v2QTs8O5YjWTDeJlPJaTjZ/2kHyCo+tXERjWzUa1jgnDA8AyHaCNa1
	vkez9/oUCIO367CyBzP7xpf0oggno2FNLftnX8QGAheWFcxIAKUU5mPQ+i2AO+bV1JH7GzVXYMG8V
	38iyVFuXbzQzREcBz6M+rMJ7taG7AVw7g9H05fWfcjjRebe5ZmPQ7VUdayV697vkg1pmrnQqmkEjq
	BtwtXPJ/K6hIGILQUMEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdAet-0006N1-3O; Mon, 25 May 2020 10:48:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdAep-0006Lz-SK
 for linux-rockchip@lists.infradead.org; Mon, 25 May 2020 10:48:37 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jdAem-0007hV-QC; Mon, 25 May 2020 12:48:32 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tiezhu Yang <yangtiezhu@loongson.cn>
Subject: Re: [PATCH 2/2] phy: Remove CONFIG_ARCH_ROCKCHIP check for subdir
 rockchip
Date: Mon, 25 May 2020 12:48:32 +0200
Message-ID: <2687194.6AVWON70EC@diego>
In-Reply-To: <1590379739-18729-2-git-send-email-yangtiezhu@loongson.cn>
References: <1590379739-18729-1-git-send-email-yangtiezhu@loongson.cn>
 <1590379739-18729-2-git-send-email-yangtiezhu@loongson.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_034835_914704_1CF4BDC4 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-rockchip@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Xuefeng Li <lixuefeng@loongson.cn>, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 25. Mai 2020, 06:08:59 CEST schrieb Tiezhu Yang:
> If CONFIG_ARCH_ROCKCHIP is not set but COMPILE_TEST is set, the file in
> the subdir rockchip can not be built due to CONFIG_ARCH_ROCKCHIP check
> in drivers/phy/Makefile.
> 
> Since the related configs in drivers/phy/rockchip/Kconfig depend on
> ARCH_ROCKCHIP, so remove CONFIG_ARCH_ROCKCHIP check for subdir rockchip
> in drivers/phy/Makefile.
> 
> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>

wouldn't this make more sense to do for all subdirs?

- allwinner: also has arch_sunxi || compile_test in its Kconfig
- amlogic: same
- mediatek: same
- renesas: same
- tega: same

So I think the right way would be to drop all the obj-$(CONFIG_ARCH_...)
options and group the separate directories into the generic subdir
listing below them.

Heiko

> ---
>  drivers/phy/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index 310c149..e5b4f58 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -12,7 +12,7 @@ obj-$(CONFIG_ARCH_SUNXI)		+= allwinner/
>  obj-$(CONFIG_ARCH_MESON)		+= amlogic/
>  obj-$(CONFIG_ARCH_MEDIATEK)		+= mediatek/
>  obj-$(CONFIG_ARCH_RENESAS)		+= renesas/
> -obj-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip/
> +obj-y					+= rockchip/
>  obj-$(CONFIG_ARCH_TEGRA)		+= tegra/
>  obj-y					+= broadcom/	\
>  					   cadence/	\
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
