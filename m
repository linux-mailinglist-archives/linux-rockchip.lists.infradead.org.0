Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDAD3506C
	for <lists+linux-rockchip@lfdr.de>; Tue,  4 Jun 2019 21:46:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ooxMah2+hqn6GHQOJgZUtuT5XLeH+d7v/YRn4NBgW8=; b=FbemC7QfUD4t7n
	KNvDHRpKEtzzb+UVqcN3wR+lOVGnlaw33/yPanALvq6f/l6BBNmxvONoz/b0HD1T00TR+KkMcA9y3
	q0jnvxRGfe0DdkOMQ9l5q9XAU8rGdZaY60iRBpClyRKXYxpewurSsVO64mmUDjAskcnLqz/lMRyik
	SESFSTNsExZYkr8/GOfrwsiuMe738JwAzj8T3AHcQKU6FIy+dskoLKdVnIypOmbffsWa7FHiP9fWZ
	Gw7Dq8KFq2YtATw1IEi1KugxvNPDQu2WO4zM70i5cb0fIadoH7DN5If/ZHEv7czlaJ7gaaMOds7fY
	XeG9lYoZgXsGOt60KUVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYFNo-0008Gr-Aq; Tue, 04 Jun 2019 19:46:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYFNg-0008Ba-El; Tue, 04 Jun 2019 19:46:01 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB087206B8;
 Tue,  4 Jun 2019 19:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559677559;
 bh=1tBYtI0D2Gm8NgAPNHeS+3+9XEB1WWJiwXHzo6wtquI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wiCx5eHdZP0Vtxa21xguwHieM1fpdxfa/f3hN0HhcqBIWd7i1OT7ClXdvS7I74hEx
 Us9WAhkHug9BCopGgZexJIDCTTT5ogopVfG9VKrEPGVA4nldu5XguklleSkSPhiCto
 53m3TzWmgImw9Vh0/2c9Ug7HCpkktPv86AZkDLHg=
Date: Tue, 4 Jun 2019 14:45:57 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [RFC PATCH 26/30] MAINTAINERS: Add MAINTAINER entry for PCIe on
 TI's J721E SoC
Message-ID: <20190604194557.GB84290@google.com>
References: <20190604131516.13596-1-kishon@ti.com>
 <20190604131516.13596-27-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604131516.13596-27-kishon@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_124600_512436_1CC848BA 
X-CRM114-Status: GOOD (  14.01  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Nit: the subject wastes a lot of space in the most valuable part (the
beginning).  Something like this would make "git log --oneline" more
useful:

  MAINTAINERS: Add Kishon Vijay Abraham I for TI J721E SoC PCIe

On Tue, Jun 04, 2019 at 06:45:12PM +0530, Kishon Vijay Abraham I wrote:
> Add MAINTAINER entry for PCIe on TI's J721E SoC.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  MAINTAINERS | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a6954776a37e..8a421949f335 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12122,13 +12122,14 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/pci/designware-pcie.txt
>  F:	drivers/pci/controller/dwc/*designware*
>  
> -PCI DRIVER FOR TI DRA7XX
> +PCI DRIVER FOR TI DRA7XX/J721E
>  M:	Kishon Vijay Abraham I <kishon@ti.com>
>  L:	linux-omap@vger.kernel.org
>  L:	linux-pci@vger.kernel.org
>  S:	Supported
>  F:	Documentation/devicetree/bindings/pci/ti-pci.txt
>  F:	drivers/pci/controller/dwc/pci-dra7xx.c
> +F:	drivers/pci/controller/pci-j721e.c
>  
>  PCI DRIVER FOR TI KEYSTONE
>  M:	Murali Karicheri <m-karicheri2@ti.com>
> -- 
> 2.17.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
