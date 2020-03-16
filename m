Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43387186AC2
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Mar 2020 13:19:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MUPOKd2kLfUdXYoA+CPS3zAV/lsZWi9gL4ORmNJNcR8=; b=TJnBsDpgzypeIx
	qrl0P3OompgiptD5kHgS4duZ1IDm+iweUTz6ZdWSbGpKDfpzp5L8bDutBxFYLw+zi4VGhJGsuEozS
	GStmtRKMNUOA0+L3xKp3SJdd5b9Wi73IU5GK/WJLVYXBHbUZQJ9RiUj/ffLZzWF8oMQOPQsWsbNYC
	DGzAtHUsModRwly7SApkNGijBVASp84C6BLrhY6nrTIGWZJiWxbyuxlqHtRk2c+YpVj38aDq76Og2
	6B0pdSke9dxHjsxnMwrIcFV4WHLj6Oxz3FtzSdaaFkr3swW9TZWfujHFLop6gYyI1QAEbHmRMGjfC
	M4G4U7B+IcBtTT6R2OwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDoiE-0000H2-ER; Mon, 16 Mar 2020 12:19:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDoi5-00009F-2H; Mon, 16 Mar 2020 12:19:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACEBA30E;
 Mon, 16 Mar 2020 05:19:04 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EB8C83F52E;
 Mon, 16 Mar 2020 05:19:01 -0700 (PDT)
Date: Mon, 16 Mar 2020 12:18:59 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v5 0/7] Add support for PCIe controller to work in
 endpoint mode on R-Car SoCs
Message-ID: <20200316121859.GB5043@e121166-lin.cambridge.arm.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CA+V-a8vchrpa-1N1J+yVdo6-3zouOHX6=G4epWm68yirPirzag@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+V-a8vchrpa-1N1J+yVdo6-3zouOHX6=G4epWm68yirPirzag@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_051909_199587_B27A10AE 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Will Deacon <will@kernel.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>, Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 03:46:42PM +0000, Lad, Prabhakar wrote:
> Hi Bjorn/Kishon,
> 
> On Fri, Feb 28, 2020 at 3:41 PM Lad Prabhakar
> <prabhakar.csengg@gmail.com> wrote:
> >
> > This patch series adds support for PCIe controller on rcar to work in
> > endpoint mode, this also extends the epf framework to handle base region
> > for mapping PCI address locally.
> >
> > Note:
> > The cadence/rockchip/designware endpoint drivers are build tested only.
> >
> > Changes for v5:
> > 1] Rebased the patches on next branch of https://git.kernel.org/pub/scm/
> >    linux/kernel/git/helgaas/pci.git
> > 2] Fixed review comments reported by Kishon while fetching the matching
> >    window in function pci_epc_get_matching_window()
> > 3] Fixed review comments reported by Bjorn
> >    a] Split patch up first patch so that its easier to review and incremental
> >    b] Fixed typos
> > 4] Included Reviewed tag from Rob for the dt-binding patch
> > 5] Fixed issue reported by Nathan for assigning variable to itself
> >
> > Changes for v4:
> > 1] Fixed dtb_check error reported by Rob
> > 2] Fixed review comments reported by Kishon
> >    a] Dropped pci_epc_find_best_fit_window()
> >    b] Fixed initializing mem ptr in __pci_epc_mem_init()
> >    c] Dropped map_size from pci_epc_mem_window structure
> >
> > Changes for v3:
> > 1] Fixed review comments from Bjorn and Kishon.
> > 3] Converted to DT schema
> >
> > Changes for v2:
> > 1] Fixed review comments from Biju for dt-bindings to include an example
> >    for a tested platform.
> > 2] Fixed review comments from Kishon to extend the features of outbound
> >    regions in epf framework.
> > 3] Added support to parse outbound-ranges in OF.
> >
> > Lad Prabhakar (7):
> >   PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
> >   PCI: rcar: Move shareable code to a common file
> >   PCI: rcar: Fix calculating mask for PCIEPAMR register
> >   PCI: endpoint: Add support to handle multiple base for mapping
> >     outbound memory
> >   dt-bindings: PCI: rcar: Add bindings for R-Car PCIe endpoint
> >     controller
> >   PCI: rcar: Add support for rcar PCIe controller in endpoint mode
> >   misc: pci_endpoint_test: Add Device ID for RZ/G2E PCIe controller
> >
> Gentle ping.

You should ask the R-CAR maintainers first to have a look at your
code and ACK accordingly.

Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
