Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2AE13CAE6
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 Jan 2020 18:24:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=9XwbRBjiCnDbbpjlurk0f7gDGLwKpkZL2EYQ84BuTtA=; b=N714MK4prU5qtr
	h+4E938s0V7oorUe4s9TGh1crrVoqtg8hz6AH7uSU4keZ7L/kfS/ZAeibmb27VfYX2hdw2UToS0T0
	CpkkaKV9Hm5fqprTwVqitDQar8dcEw3FjYlD7RSoy0fRXvSEEbYeu8I/9L6bM8/ljE6F8eQgJVdYb
	kYJ5jsvtYeRDN1+he+Mtde4CUq5VS87BoZrPek5cMazEQAhOLnpyUwFzi+xSJTEP67C2B8xz1zUZM
	N1h1fMtoxcvU1bsC5FdJURsrK7CJRoqsyL5H0ADrPQubS98BPiAH0tOvBcn6xlNeZYCXdVon09QkU
	u7A3Jd3994QPxjGYFnHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irmPH-00042r-6L; Wed, 15 Jan 2020 17:24:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irmPA-00041u-Cn
 for linux-rockchip@lists.infradead.org; Wed, 15 Jan 2020 17:24:37 +0000
Received: from localhost (odyssey.drury.edu [64.22.249.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7682424656;
 Wed, 15 Jan 2020 17:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579109071;
 bh=Gr0yrIgG+HqfegwFxg1FX94l6Lsqg7CDnxr0Tft90sI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=RTECrJeYi2YWP68omuR47D1bzi/o9sJXOtnJfCHIDlfMPdp32jUlc2HmBC8G8U+al
 I0wuJlqAqSrJ+5hDOYaj9tH974hO1q6Q1BonG1X6lsChpGc1vdvUAqxqcym8/Bv/eZ
 /BSkGTWYyH8pieTHdwplcwNDmn7GKRxrxy4/0ryI=
Date: Wed, 15 Jan 2020 11:24:30 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH 5/6] PCI: rockchip: add DesignWare based PCIe controller
Message-ID: <20200115172430.GA180494@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578986701-72072-1-git-send-email-shawn.lin@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_092432_733266_F94C87F3 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FAKE_REPLY_C           No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jingoo Han <jingoohan1@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-pci@vger.kernel.org,
 William Wu <william.wu@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Follow subject line convention.

On Tue, Jan 14, 2020 at 03:25:01PM +0800, Shawn Lin wrote:
> From: Simon Xue <xxm@rock-chips.com>

Needs a commit log.  Please describe the relationship with the
existing drivers/pci/controller/pcie-rockchip-host.c.  Are they for
different devices?  Does this supercede the other?

> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  drivers/pci/controller/dwc/Kconfig            |   9 +
>  drivers/pci/controller/dwc/Makefile           |   1 +
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 441 ++++++++++++++++++++++++++
>  3 files changed, 451 insertions(+)
>  create mode 100644 drivers/pci/controller/dwc/pcie-dw-rockchip.c
> 
> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> index 0830dfc..9160264 100644
> --- a/drivers/pci/controller/dwc/Kconfig
> +++ b/drivers/pci/controller/dwc/Kconfig
> @@ -82,6 +82,15 @@ config PCIE_DW_PLAT_EP
>  	  order to enable device-specific features PCI_DW_PLAT_EP must be
>  	  selected.
>  
> +config PCIE_DW_ROCKCHIP
> +	bool "Rockchip DesignWare PCIe controller"
> +	select PCIE_DW
> +	select PCIE_DW_HOST
> +	depends on ARCH_ROCKCHIP
> +	depends on OF
> +	help
> +	  Enables support for the DW PCIe controller in the Rockchip SoC.

A user needs to be able to tell whether to enable
CONFIG_PCIE_ROCKCHIP_HOST or CONFIG_PCIE_DW_ROCKCHIP.  Is there an
endpoint driver coming?  Should this be named PCIE_DW_ROCKCHIP_HOST?

> +	ret = rockchip_pcie_reset_grant_ctrl(rockchip, true);
> +	if (ret)
> +		goto deinit_clk;
> +
> +//	if (rockchip->mode == DW_PCIE_RC_TYPE)
> +//		ret = rk_add_pcie_port(rockchip);

Remove commented-out code.  I do like an "if" statement better than
the complicated assignment/ternary thing below, though.

> +	ret = rockchip->mode == DW_PCIE_RC_TYPE ?
> +		rk_add_pcie_port(rockchip) : -EINVAL;
> +
> +	if (ret)
> +		goto deinit_clk;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
