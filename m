Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3B4178F1A
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Mar 2020 12:00:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zM+wmy2zXiaYDwEh5Gj+NTa5Q/A1ugvvl4iV3mh18sg=; b=ukGoxw0jxt/vMd
	p+7hfTUdmpFe9j0Kw4ftskENH1Iyyv8B6ZMn1riLpM2ugRx895SgajaRlgTW19ZM4VO+AbYk9q/iR
	RkgvHl0dv0gqZrM/cIzg7TnlLniGUzezpXFx1onotiYhdb+uJH7SSaIT4ZQrNvMkGyM3I8MGBJnIY
	F+Ib8XyCjgctlDkHghzjbPBpe3nL4TDpWibNJo4jilTejhYDUhq7tZE/jrZpRI7XrpNuKw8/dlY6y
	PgBQ2ltka6QVoIQ1Zy+I+WorffKLuJM9JrQK8EB7Vbd3zRYlIBQCELib9wZm+5OVQyA9txzCoc55K
	u11/oOjUNEvCg9D/XiKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9RlD-0006s7-Tm; Wed, 04 Mar 2020 11:00:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Rl2-0005Xa-Cd; Wed, 04 Mar 2020 11:00:10 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j9Rko-0006RL-Ow; Wed, 04 Mar 2020 11:59:54 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: =?ISO-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@collabora.com>
Subject: Re: [PATCH 1/2] ARM: Rockchip: Handle rk3288/rk3288w revision
Date: Wed, 04 Mar 2020 11:59:54 +0100
Message-ID: <2221545.2vEflg7qi2@diego>
In-Reply-To: <20200302155703.278421-2-mylene.josserand@collabora.com>
References: <20200302155703.278421-1-mylene.josserand@collabora.com>
 <20200302155703.278421-2-mylene.josserand@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_030008_585370_1216BCF6 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux@armlinux.org.uk,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

Am Montag, 2. M=E4rz 2020, 16:57:02 CET schrieb Myl=E8ne Josserand:
> Determine which revision of rk3288 by checking the HDMI version.
> According to the Rockchip BSP kernel, on rk3288w, the HDMI
> revision equals 0x1A which is not the case for the rk3288 [1].
> =

> As these SOC have some differences, the new function
> 'soc_is_rk3288w' will help us to know on which revision
> we are.

what happened to just having a different compatible in the dts?
Aka doing a =


rk3288w.dtsi with

#include "rk3288.dtsi"

&cru {
	compatible =3D "rockchip,rk3288w-cru";
}

I somehow don't expect boards to just switch between soc variants
on the fly.

Also, doing things in mach-rockchip is not very future-proof:

(1) having random soc-specific APIs spanning the kernel feels wrong,
    especially as at some point it might not be contained to our own special
    drivers like the cru. I cannot really see people being enthusiastic if
    something like this would be needed in say the core Analogix-DP bridge =
;-)
(2) I guess the rk3288w will not be the last soc doing this and on arm64 you
    can't do it that way, as there is no mach-rockchip there

So my personal preference would really would be just a specific compatible
for affected ip blocks.

Heiko

> [1]:https://github.com/rockchip-linux/u-boot/blob/f992fe3334aa5090acb4482=
61982628b5a3d37a5/arch/arm/include/asm/arch-rockchip/cpu.h#L30..L34
> =

> Signed-off-by: Myl=E8ne Josserand <mylene.josserand@collabora.com>
> ---
>  arch/arm/mach-rockchip/rockchip.c | 45 +++++++++++++++++++++++++++++++
>  include/soc/rockchip/revision.h   | 22 +++++++++++++++
>  2 files changed, 67 insertions(+)
>  create mode 100644 include/soc/rockchip/revision.h
> =

> diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/r=
ockchip.c
> index f9797a2b5d0d..b907ba390093 100644
> --- a/arch/arm/mach-rockchip/rockchip.c
> +++ b/arch/arm/mach-rockchip/rockchip.c
> @@ -9,12 +9,14 @@
>  #include <linux/kernel.h>
>  #include <linux/init.h>
>  #include <linux/io.h>
> +#include <linux/of_address.h>
>  #include <linux/of_platform.h>
>  #include <linux/irqchip.h>
>  #include <linux/clk-provider.h>
>  #include <linux/clocksource.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/regmap.h>
> +#include <soc/rockchip/revision.h>
>  #include <asm/mach/arch.h>
>  #include <asm/mach/map.h>
>  #include <asm/hardware/cache-l2x0.h>
> @@ -22,6 +24,49 @@
>  #include "pm.h"
>  =

>  #define RK3288_TIMER6_7_PHYS 0xff810000
> +#define RK3288_HDMI_REV_REG	0x04
> +#define RK3288W_HDMI_REV	0x1A
> +
> +static const struct of_device_id rk3288_dt_hdmi_match[] __initconst =3D {
> +	{ .compatible =3D "rockchip,rk3288-dw-hdmi" },
> +	{ }
> +};
> +
> +int rk3288_get_revision(void)
> +{
> +	static int revision =3D RK3288_SOC_REV_UNKNOWN;
> +	struct device_node *dn;
> +	void __iomem *hdmi_base;
> +
> +	if (revision !=3D RK3288_SOC_REV_UNKNOWN)
> +		return revision;
> +
> +	dn =3D of_find_matching_node(NULL, rk3288_dt_hdmi_match);
> +	if (!dn) {
> +		pr_err("%s: Couldn't find HDMI node\n", __func__);
> +		return -EINVAL;
> +	}
> +
> +	hdmi_base =3D of_iomap(dn, 0);
> +	of_node_put(dn);
> +
> +	if (!hdmi_base) {
> +		pr_err("%s: Couldn't map %pOF regs\n", __func__,
> +		       hdmi_base);
> +		return -ENXIO;
> +	}
> +
> +	if (readl_relaxed(hdmi_base + RK3288_HDMI_REV_REG) =3D=3D
> +	    RK3288W_HDMI_REV)
> +		revision =3D RK3288_SOC_REV_RK3288W;
> +	else
> +		revision =3D RK3288_SOC_REV_RK3288;
> +
> +	iounmap(hdmi_base);
> +
> +	return revision;
> +}
> +EXPORT_SYMBOL(rk3288_get_revision);
>  =

>  static void __init rockchip_timer_init(void)
>  {
> diff --git a/include/soc/rockchip/revision.h b/include/soc/rockchip/revis=
ion.h
> new file mode 100644
> index 000000000000..226419c60af0
> --- /dev/null
> +++ b/include/soc/rockchip/revision.h
> @@ -0,0 +1,22 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright 2020 Collabora
> + */
> +
> +#ifndef __SOC_ROCKCHIP_REVISION_H__
> +#define __SOC_ROCKCHIP_REVISION_H__
> +
> +enum rk3288_soc_revision {
> +	RK3288_SOC_REV_UNKNOWN,
> +	RK3288_SOC_REV_RK3288,
> +	RK3288_SOC_REV_RK3288W,
> +};
> +
> +int rk3288_get_revision(void);
> +
> +static inline bool soc_is_rk3288w(void)
> +{
> +	return rk3288_get_revision() =3D=3D RK3288_SOC_REV_RK3288W;
> +}
> +
> +#endif /* __SOC_ROCKCHIP_REVISION_H__ */
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
