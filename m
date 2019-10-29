Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E05E8C46
	for <lists+linux-rockchip@lfdr.de>; Tue, 29 Oct 2019 16:59:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6ppgnnbAlSz5xPLjzDiZoM++zcV3r8cSdyFX1Y2JGE=; b=iacpxCnA9LG+rw
	UF6LwN6+2mY4W5T97OHWDJnQgorvmBR9VaUB5c5TXQ4kclF0ZTBrVAFubum83I/xsgxv+fOCvXTYQ
	9eZEvbiNrXUdBb2Q7HKKh/E16sASFy9aeldGenHdAeNio5qkKhn1m4sVVmz8ZyqFclHY67/HcqOww
	dRT8StkCXTu89cANgLYyZj7LykNQng9nEGgISm7OB6mUPXVBA4bHami1IL/gV3CM/am0p79e/8Z9j
	Va9UzpSJmSKupPeR2A6CqEiF/JPVCWfvu7R0b0+mFiqQeMMUuLgBloji1ciTgRvm06O0pqMStncYK
	4WWKPF7raQdc3pV+XGiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPTtf-0001Tp-77; Tue, 29 Oct 2019 15:59:03 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPTtI-00019q-I8
 for linux-rockchip@lists.infradead.org; Tue, 29 Oct 2019 15:58:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id c22so2991857wmd.1
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Oct 2019 08:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ogyg03BfT8gaHZbuV4/3535qjZlsTqwkzaB+k+qmJSk=;
 b=auxvEGz+98ZDBi/3qT4estTcr/B0w8IzvpYRBlJghVDt+kEZTN1DrBp6hsX/szCm0S
 Ntg3b9Z1+ejknx7Ccrkleqkzjl8Ky11vHSpEAGmlWVbc6JJnMtLuoVbGHlLb8LrKT3cn
 uKPaHB3q+wCzJC2R81txkKTpwzgO4YZ3vvsV8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ogyg03BfT8gaHZbuV4/3535qjZlsTqwkzaB+k+qmJSk=;
 b=RIU9LTtlgvVPjyou85hDX5qlUOclKosssLJL9bByHfZ/fysLcIh7JvrNd0TRDdB56d
 EtNghuTW7g1DWdDXhmRyJ9wUP4T6K/Qjj9cvVMZbBT1/2FhjuhkQk42BfwOvVleSHV/I
 iQk0eo/O6jVmnZxRT/6JuTpbcgsS1difwCUD31J8Qq0jhDWb/AmBDNzxJMvjzIHPJ55n
 hF8+q9FqjtpUZE6/IdN3Z8LwLyYdjNZvPxMyT+WfHqSq7cUnx1K9wojlFgRXUqXyRQEF
 L5G07niRwZjOTWooUvDUkPn/9TFIjNihpoZUdDXEu/RFHIMcZEYM5sj8hYeEV3+yTMe0
 x3qQ==
X-Gm-Message-State: APjAAAV5edovSortQesMZcQGUZqmD79eLCzM81i6uc6D5VDHDNptq53n
 D3dBlG8KTYST6IJS7o2LFfck/pHJdxBgumvGaw4K0g==
X-Google-Smtp-Source: APXvYqxXBunHeyxtZsAWTCPejceTiGMbnnAGC4cBuQxzLelWDxFoP9zriSI9AupBxaoECqcivUoGxX1DNc3YZFr8rtQ=
X-Received: by 2002:a1c:6282:: with SMTP id w124mr4723287wmb.172.1572364718992; 
 Tue, 29 Oct 2019 08:58:38 -0700 (PDT)
MIME-Version: 1.0
References: <20191028163256.8004-1-robh@kernel.org>
 <20191028163256.8004-8-robh@kernel.org>
In-Reply-To: <20191028163256.8004-8-robh@kernel.org>
From: Srinath Mannam <srinath.mannam@broadcom.com>
Date: Tue, 29 Oct 2019 21:28:27 +0530
Message-ID: <CABe79T4uF0vnxAbbR-ckr4uBpni3KmD2RYqSS_jUh-KRDFLvzQ@mail.gmail.com>
Subject: Re: [PATCH v3 07/25] PCI: iproc: Use pci_parse_request_of_pci_ranges()
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_085840_603851_DEF271F1 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, Christoph Hellwig <hch@infradead.org>,
 linux-rockchip@lists.infradead.org,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Ryder Lee <ryder.lee@mediatek.com>,
 linux-mediatek@lists.infradead.org, Andrew Murray <andrew.murray@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>,
 rfi@lists.rocketboards.org, linux-renesas-soc@vger.kernel.org,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Rob,

I reviewed and verified this change.. It is working fine.

Regards,
Srinath.

On Mon, Oct 28, 2019 at 10:03 PM Rob Herring <robh@kernel.org> wrote:
>
> Convert the iProc host bridge to use the common
> pci_parse_request_of_pci_ranges().
>
> There's no need to assign the resources to a temporary list, so just use
> bridge->windows directly.
>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Ray Jui <rjui@broadcom.com>
> Cc: Scott Branden <sbranden@broadcom.com>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/pci/controller/pcie-iproc-platform.c | 8 ++------
>  drivers/pci/controller/pcie-iproc.c          | 5 -----
>  2 files changed, 2 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/pci/controller/pcie-iproc-platform.c b/drivers/pci/controller/pcie-iproc-platform.c
> index 9ee6200a66f4..375d815f7301 100644
> --- a/drivers/pci/controller/pcie-iproc-platform.c
> +++ b/drivers/pci/controller/pcie-iproc-platform.c
> @@ -43,8 +43,6 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
>         struct iproc_pcie *pcie;
>         struct device_node *np = dev->of_node;
>         struct resource reg;
> -       resource_size_t iobase = 0;
> -       LIST_HEAD(resources);
>         struct pci_host_bridge *bridge;
>         int ret;
>
> @@ -97,8 +95,7 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
>         if (IS_ERR(pcie->phy))
>                 return PTR_ERR(pcie->phy);
>
> -       ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &resources,
> -                                                   &iobase);
> +       ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
>         if (ret) {
>                 dev_err(dev, "unable to get PCI host bridge resources\n");
>                 return ret;
> @@ -113,10 +110,9 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
>                 pcie->map_irq = of_irq_parse_and_map_pci;
>         }
>
> -       ret = iproc_pcie_setup(pcie, &resources);
> +       ret = iproc_pcie_setup(pcie, &bridge->windows);
>         if (ret) {
>                 dev_err(dev, "PCIe controller setup failed\n");
> -               pci_free_resource_list(&resources);
>                 return ret;
>         }
>
> diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> index 2d457bfdaf66..223335ee791a 100644
> --- a/drivers/pci/controller/pcie-iproc.c
> +++ b/drivers/pci/controller/pcie-iproc.c
> @@ -1498,10 +1498,6 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
>                 return ret;
>         }
>
> -       ret = devm_request_pci_bus_resources(dev, res);
> -       if (ret)
> -               return ret;
> -
>         ret = phy_init(pcie->phy);
>         if (ret) {
>                 dev_err(dev, "unable to initialize PCIe PHY\n");
> @@ -1543,7 +1539,6 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
>                 if (iproc_pcie_msi_enable(pcie))
>                         dev_info(dev, "not using iProc MSI\n");
>
> -       list_splice_init(res, &host->windows);
>         host->busnr = 0;
>         host->dev.parent = dev;
>         host->ops = &iproc_pcie_ops;
> --
> 2.20.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
