Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C1A13FB9D
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 Jan 2020 22:36:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1XXy65QTPG6OPaZ/KSGhaIl7YwIaqCpwbGKw7JU2/Y=; b=hYrtpqQoRN7ckG
	PcZFqLb0/w5Z9bT6p3jioMk3gIFpbWXHonRg8jubXvfK3EWj2WUV9ZTfUm15pWuC+4YpS5E0iBPJ1
	E1ElxFI3FC86cBN+z4H1zTXs1dUEvUWfZyIK6JFJrb8oGzLpRfH9GFaWwLEqyOHdU7L1GKgaYcscE
	8VFl3RMx1XuuPQr7u6DxCuMB9J8F9kmqi00Ozc0cOtsq3bwd4RtIBB5UWL1yiLZ7q2yv5qa3l4uHO
	V3ysEtuFFjmE2rTI/YK3/dOBrFEfoqhxaqBWxec8FvOb8RO8sBFEjU1VLOjgIIFO0GKtikNUWp/o7
	NmFDjuh/4aC0jJwnS5mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isCoJ-0002ql-Lt; Thu, 16 Jan 2020 21:36:15 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isCoC-0002pj-I2
 for linux-rockchip@lists.infradead.org; Thu, 16 Jan 2020 21:36:13 +0000
Received: by mail-pf1-x444.google.com with SMTP id w62so10866001pfw.8
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Jan 2020 13:36:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:thread-topic:thread-index:date:message-id
 :references:in-reply-to:accept-language:content-language
 :content-transfer-encoding:mime-version;
 bh=VvHjOr4ACw42b4kMyCv1bwkltuHZ5dV8Yk2HQjQZAlI=;
 b=VXMxF6J4VZaz/Wz/4mgtW/q1blQp73b5J3ss4YXtK3xaICcRQ2TRvWJYSWTvfbf+x4
 3JsuoCOm02lXPCiVipKd7lZ6zlcBYl5iJpeMZG6mmvQhc8fijS4jm7OeXiOyUFI4ZyTp
 f2q2cRVF7yklkq/083axeifLLcevK4ZM19nRuhRLDaNEJX1PsllqFr8CEguV3Un01aZa
 d9eL7YrGUJxW5iuIj6Oese/tY5+ijzsL3iWNXvSnstqIf9LcFPOGgTfi+wYoPQHZ4nGu
 PaTKHQY0ff+/rjx04oBxocEGBXUDIL8zNXze+NH+Y8/GN9EMpn2w856KYdkpP2p6aYVD
 bybQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
 :date:message-id:references:in-reply-to:accept-language
 :content-language:content-transfer-encoding:mime-version;
 bh=VvHjOr4ACw42b4kMyCv1bwkltuHZ5dV8Yk2HQjQZAlI=;
 b=MZjFIS1ceCrloO7RegZAmy7qP5gHOy2kR6RXLo4pSDXJ8Cn2OAjk4Ax49xOB3alW7j
 xCZY43EXyQkJjs+Y93KAN83y2NCrBy4EPCRE/8k/khYD4RrVWi1mYmMV8R2v8UxdZgsw
 gIprNRQNgd79/U714MxoqGXNj63/+CyryIovXzCZTegCOePxrU3iwMadqdIAypzH9U9J
 NOzuyHs3QuQTyEfpiD5Dsw4gkPCjtFMDd26EJ4S0Iq1oxQXA26gU+kOb97XGxYsgGSiy
 TqZAE23FQcjzakY1cWdzCtw4TobR0sLxeSajGfGfD+M0iWr5x+kUjddvPUNh6x5IoRyU
 FeMA==
X-Gm-Message-State: APjAAAXy2PlHOxPTCvw/5lQcIrq+0tPcG6bKm9sn5xeAMZlRZrYXQXql
 nPzdYXtM1yndeEZDzIERDN0=
X-Google-Smtp-Source: APXvYqxjr+BBlZeEcRR6QoKUFDGOvvBQdbcqg/tsq1gFgKlSEwc4bQlSKtnjEoU0a7Mq2ueap/gU1g==
X-Received: by 2002:a63:554c:: with SMTP id f12mr42586847pgm.23.1579210567196; 
 Thu, 16 Jan 2020 13:36:07 -0800 (PST)
Received: from SL2P216MB0105.KORP216.PROD.OUTLOOK.COM ([2603:1046:100:22::5])
 by smtp.gmail.com with ESMTPSA id
 g2sm26555320pgn.59.2020.01.16.13.36.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Jan 2020 13:36:06 -0800 (PST)
From: Jingoo Han <jingoohan1@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH 5/6] PCI: rockchip: add DesignWare based PCIe controller
Thread-Topic: [PATCH 5/6] PCI: rockchip: add DesignWare based PCIe controller
Thread-Index: AQHVyqvWb/c4FgGoOUOrdcU9dWh4vqft1IkR
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Thu, 16 Jan 2020 21:36:00 +0000
Message-ID: <SL2P216MB0105652DE83E7CBBDA2A370CAA360@SL2P216MB0105.KORP216.PROD.OUTLOOK.COM>
References: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
 <1578986701-72072-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1578986701-72072-1-git-send-email-shawn.lin@rock-chips.com>
Accept-Language: ko-KR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_133608_600145_F358823D 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jingoohan1[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jingoohan1[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, William Wu <william.wu@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>, Han Jingoo <jingoohan1@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Simon Xue <xxm@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 1/14/20, 2:25 AM, Shawn Lin wrote:
> 
> From: Simon Xue <xxm@rock-chips.com>
>
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
> +

The order is PCIE_DW, PCI_*, and PCIE_* as below.

1. Common Frameworks:
    These options are used by other controller drivers.
    e.g., PCIE_DW, PCIE_DW_HOST, PCIE_DW_EP.

2. PCI_* controller drivers:
    PCI_* was used earlier than PCIE_*. If a chip vendor's controllers provide
    both conventional PCI and PCI Express, or only conventional PCI, PCI_* can
    be used.

3. PCIE_* controller drivers
    If a controller can support only PCI Express, not conventional PCI,
    PCIE_* is the proper naming.

Then, within PCI_* or PCIE_* categories, each controller option should be
in an alphabetical order for the readability.

So, add 'PCIE_DW_ROCKCHIP' between 'PCIE_ARTPEC6_EP' and 'PCIE_KIRIN'.

>
>  config PCI_EXYNOS
>  	bool "Samsung Exynos PCIe controller"
>  	depends on SOC_EXYNOS5440 || COMPILE_TEST
> diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller/dwc/Makefile
> index 8a637cf..cb4857f 100644
> --- a/drivers/pci/controller/dwc/Makefile
> +++ b/drivers/pci/controller/dwc/Makefile
> @@ -19,6 +19,7 @@ obj-$(CONFIG_PCIE_HISI_STB) += pcie-histb.o
>  obj-$(CONFIG_PCI_MESON) += pci-meson.o
>  obj-$(CONFIG_PCIE_TEGRA194) += pcie-tegra194.o
>  obj-$(CONFIG_PCIE_UNIPHIER) += pcie-uniphier.o
> +obj-$(CONFIG_PCIE_DW_ROCKCHIP) += pcie-dw-rockchip.o

Ditto.

[...]

Best regards,
Jingoo Han


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
