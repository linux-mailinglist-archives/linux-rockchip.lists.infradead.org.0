Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AA545953
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 11:52:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tQAaGQQYjLDi7vT7tcZT6inxsJbAZpAS0YqQ4JXjUc=; b=eW60Tdl0OjkO1q
	h/edMCmUW+UbfYvspAU4x5LNIJLMiMUbHJ/+BqM/RuzG4xey2uuNbgKiBXGgSgVYf9oqul35z0rpG
	RrjdlkbcoAj3eRg/seC/ANTR7AEc8LJ80nGRDktmNAYX6OviobCnvw1M3tUyaG7F7dMD2oYi7ZKm0
	ixfGR4fBM7ZquDKEHh2Z/2w0KhnNhO2hAyk0+lMHfZCk7C3MwqLcijBkngeo+dWXg7LUiIp4qriQK
	StPNO8ZUsmfXB45ltToAYBc5p0jIg0EDq+X9Ev0iudZRaTfXh32/LydORYTDwdCI7gEEN27mHDJD6
	XDjNnDsClAzBJui5X4EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbisr-0000Lj-SO; Fri, 14 Jun 2019 09:52:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbiso-0000LG-0I; Fri, 14 Jun 2019 09:52:31 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbisk-0004H9-GQ; Fri, 14 Jun 2019 11:52:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH v3 1/1] arm64: dts: rockchip: add core dtsi file for
 RK3399Pro SoCs
Date: Fri, 14 Jun 2019 11:52:25 +0200
Message-ID: <3309819.J5kelTtX6q@phil>
In-Reply-To: <20190530000848.28106-1-jay.xu@rock-chips.com>
References: <20190529074752.19388-1-jay.xu@rock-chips.com>
 <20190530000848.28106-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_025230_196789_04890A08 
X-CRM114-Status: GOOD (  14.87  )
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
 linux-kernel@vger.kernel.org, zhangzj@rock-chips.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 manivannan.sadhasivam@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jianqun,

Am Donnerstag, 30. Mai 2019, 02:08:48 CEST schrieb Jianqun Xu:
> This patch adds core dtsi file for Rockchip RK3399Pro SoCs,
> include rk3399.dtsi. Also enable pciei0/pcie_phy for AP to
> talk to NPU part inside SoC.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

could you add the necessary pinctrl entry, as suggested by Manivannan?

Thanks
Heiko

> ---
> changes since v2:
> - only enable pcie0 and pcie_phy nodes, thanks for Heiko and manivannan
> 
> changes since v1:
> - remove dfi and dmc
> 
>  arch/arm64/boot/dts/rockchip/rk3399pro.dtsi | 22 +++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
> new file mode 100644
> index 000000000000..bb5ebf6608b9
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
> @@ -0,0 +1,22 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +// Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
> +
> +#include "rk3399.dtsi"
> +
> +/ {
> +	compatible = "rockchip,rk3399pro";
> +};
> +
> +/* Default to enabled since AP talk to NPU part over pcie */
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +/* Default to enabled since AP talk to NPU part over pcie */
> +&pcie0 {
> +	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> +	num-lanes = <4>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_clkreqn_cpm>;
> +	status = "okay";
> +};
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
