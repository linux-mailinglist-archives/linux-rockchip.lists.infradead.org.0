Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95842E8C49
	for <lists+linux-rockchip@lfdr.de>; Tue, 29 Oct 2019 16:59:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKz/FvE++9Ij51M/lajDTeqhrDX8vJf2BT0me4icO+w=; b=ZVzoAWc0dHpR24
	rBMS4hdFHZ4+xpNP/UxMvH615w4HXKI5l271PED4ha4TyQQlWFDCr/2D8Wb16jagWS3TZNCIUfGP2
	GGBp6koctg+MM5bxL633+XJf62O2x6fhx8gCbmCjiNX7mLB8Id+UJ3QrUfjFnbGneiaP9nVWMNV40
	54KkixbUcMMSU1Mus89DmGup0jBgudKW+NiamkaWvSXf8a7jJIcWrda7rTfLvjYPT0fP8KPImylRF
	VNiA6dOsSRbduK/Iwi1tQ9eyuuqWGfHsalY5VibH28Wq2N1xu0wfP3P0BEAoEL8RklvoSs1U7Y2S+
	9/9dUjtv2uYO90UPNYNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPTuU-0001jE-Nd; Tue, 29 Oct 2019 15:59:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPTuO-0001gj-0P
 for linux-rockchip@lists.infradead.org; Tue, 29 Oct 2019 15:59:50 +0000
Received: by mail-wm1-x344.google.com with SMTP id q70so3182428wme.1
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Oct 2019 08:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jW6z4fKWJsBlYxKn7twBcd7IWPitytMCLX6jbiyT3C8=;
 b=R58RieOynQzxeOkYflDGPYNaowJp2iGxd/hBMRiOQ6dXaUV6q/dEFJAfuprFleLnbr
 2UZ5Py8YcpQPPN5KcmEqcPFoA8f7jGrIj/2s3Lca0AM9uzgIy+YlDBbF1PbzWdoY0MnS
 tbwtvlpJiWkIC5PmqYdS4J3BO6xh9HNEDLYkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jW6z4fKWJsBlYxKn7twBcd7IWPitytMCLX6jbiyT3C8=;
 b=e3pOJ+Zpnfalz6h3NHopd58JauIrhCS6kHZ0kiNB0a0Kgxty4Je+u0ak2gG8nlejWY
 SwbHLZp0EWxK4D4yoYvXOgQHP/oNMmIovQTTfq3woRrlMUTOwiz8AllpETIaxBc9sbV+
 z6UURv/1ts+MNoO4JvlpV2GGrp6svNJkg4oD+oiEyC+LFOG4AO0jrujah6XZC4/NEki2
 maWCvck/J1QX0NcjdWPQK9Jqy6PaJiSkqz8vH2jX7YzpMRA5ZT8IbtKsfueM+Qsn3D2r
 aFXe/xw2maDBOLkK51RkbWZHbS3cY8rNOkARJlh+kqoLagp+H/F14qP410Wp7eQY9g5K
 dbcw==
X-Gm-Message-State: APjAAAVNyd4uJHquGkRhQ8No6HWxv65YvRc8RUX8e7y0uSuiQaP7D5Dg
 yEdWEf/m+1GIRMtjcsityq/ytqwhxZK+xOU9XA73bQ==
X-Google-Smtp-Source: APXvYqyUalWNgn46AHsfEyAbE1JclhNBGQx9jhMwfsntmJynyRXE6Rw4WOC1O2HAw7rZ07ZQDAROcByNyjIizGr51ZM=
X-Received: by 2002:a05:600c:142:: with SMTP id
 w2mr4773242wmm.121.1572364786709; 
 Tue, 29 Oct 2019 08:59:46 -0700 (PDT)
MIME-Version: 1.0
References: <20191028163256.8004-1-robh@kernel.org>
 <20191028163256.8004-24-robh@kernel.org>
In-Reply-To: <20191028163256.8004-24-robh@kernel.org>
From: Srinath Mannam <srinath.mannam@broadcom.com>
Date: Tue, 29 Oct 2019 21:29:35 +0530
Message-ID: <CABe79T4p-YJp7nNx0iyyx46PFWBC57H-2+VL=RM9rKK-X4qdFg@mail.gmail.com>
Subject: Re: [PATCH v3 23/25] PCI: iproc: Use inbound resources for setup
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_085948_057938_A0627748 
X-CRM114-Status: GOOD (  19.70  )
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
> Now that the helpers provide the inbound resources in the host bridge
> 'dma_ranges' resource list, convert Broadcom iProc host bridge to use
> the resource list to setup the inbound addresses.
>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Ray Jui <rjui@broadcom.com>
> Cc: Scott Branden <sbranden@broadcom.com>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
>  - Fix iproc_pcie_paxb_v2_msi_steer() to use resource_entry
> ---
>  drivers/pci/controller/pcie-iproc.c | 77 +++++++----------------------
>  1 file changed, 17 insertions(+), 60 deletions(-)
>
> diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> index 223335ee791a..f4d78e66846e 100644
> --- a/drivers/pci/controller/pcie-iproc.c
> +++ b/drivers/pci/controller/pcie-iproc.c
> @@ -1122,15 +1122,16 @@ static int iproc_pcie_ib_write(struct iproc_pcie *pcie, int region_idx,
>  }
>
>  static int iproc_pcie_setup_ib(struct iproc_pcie *pcie,
> -                              struct of_pci_range *range,
> +                              struct resource_entry *entry,
>                                enum iproc_pcie_ib_map_type type)
>  {
>         struct device *dev = pcie->dev;
>         struct iproc_pcie_ib *ib = &pcie->ib;
>         int ret;
>         unsigned int region_idx, size_idx;
> -       u64 axi_addr = range->cpu_addr, pci_addr = range->pci_addr;
> -       resource_size_t size = range->size;
> +       u64 axi_addr = entry->res->start;
> +       u64 pci_addr = entry->res->start - entry->offset;
> +       resource_size_t size = resource_size(entry->res);
>
>         /* iterate through all IARR mapping regions */
>         for (region_idx = 0; region_idx < ib->nr_regions; region_idx++) {
> @@ -1182,66 +1183,19 @@ static int iproc_pcie_setup_ib(struct iproc_pcie *pcie,
>         return ret;
>  }
>
> -static int iproc_pcie_add_dma_range(struct device *dev,
> -                                   struct list_head *resources,
> -                                   struct of_pci_range *range)
> -{
> -       struct resource *res;
> -       struct resource_entry *entry, *tmp;
> -       struct list_head *head = resources;
> -
> -       res = devm_kzalloc(dev, sizeof(struct resource), GFP_KERNEL);
> -       if (!res)
> -               return -ENOMEM;
> -
> -       resource_list_for_each_entry(tmp, resources) {
> -               if (tmp->res->start < range->cpu_addr)
> -                       head = &tmp->node;
> -       }
> -
> -       res->start = range->cpu_addr;
> -       res->end = res->start + range->size - 1;
> -
> -       entry = resource_list_create_entry(res, 0);
> -       if (!entry)
> -               return -ENOMEM;
> -
> -       entry->offset = res->start - range->cpu_addr;
> -       resource_list_add(entry, head);
> -
> -       return 0;
> -}
> -
>  static int iproc_pcie_map_dma_ranges(struct iproc_pcie *pcie)
>  {
>         struct pci_host_bridge *host = pci_host_bridge_from_priv(pcie);
> -       struct of_pci_range range;
> -       struct of_pci_range_parser parser;
> -       int ret;
> -       LIST_HEAD(resources);
> -
> -       /* Get the dma-ranges from DT */
> -       ret = of_pci_dma_range_parser_init(&parser, pcie->dev->of_node);
> -       if (ret)
> -               return ret;
> +       struct resource_entry *entry;
> +       int ret = 0;
>
> -       for_each_of_pci_range(&parser, &range) {
> -               ret = iproc_pcie_add_dma_range(pcie->dev,
> -                                              &resources,
> -                                              &range);
> -               if (ret)
> -                       goto out;
> +       resource_list_for_each_entry(entry, &host->dma_ranges) {
>                 /* Each range entry corresponds to an inbound mapping region */
> -               ret = iproc_pcie_setup_ib(pcie, &range, IPROC_PCIE_IB_MAP_MEM);
> +               ret = iproc_pcie_setup_ib(pcie, entry, IPROC_PCIE_IB_MAP_MEM);
>                 if (ret)
> -                       goto out;
> +                       break;
>         }
>
> -       list_splice_init(&resources, &host->dma_ranges);
> -
> -       return 0;
> -out:
> -       pci_free_resource_list(&resources);
>         return ret;
>  }
>
> @@ -1276,13 +1230,16 @@ static int iproce_pcie_get_msi(struct iproc_pcie *pcie,
>  static int iproc_pcie_paxb_v2_msi_steer(struct iproc_pcie *pcie, u64 msi_addr)
>  {
>         int ret;
> -       struct of_pci_range range;
> +       struct resource_entry entry;
> +
> +       memset(&entry, 0, sizeof(entry));
> +       entry.res = &entry.__res;
>
> -       memset(&range, 0, sizeof(range));
> -       range.size = SZ_32K;
> -       range.pci_addr = range.cpu_addr = msi_addr & ~(range.size - 1);
> +       msi_addr &= ~(SZ_32K - 1);
> +       entry.res->start = msi_addr;
> +       entry.res->end = msi_addr + SZ_32K - 1;
>
> -       ret = iproc_pcie_setup_ib(pcie, &range, IPROC_PCIE_IB_MAP_IO);
> +       ret = iproc_pcie_setup_ib(pcie, &entry, IPROC_PCIE_IB_MAP_IO);
>         return ret;
>  }
>
> --
> 2.20.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
