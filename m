Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7C8E78AB
	for <lists+linux-rockchip@lfdr.de>; Mon, 28 Oct 2019 19:42:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Juyp2H3CcqJvJEDka3QUoeouInrVJI6OEDvtSZSlMq4=; b=SwvijQd/aUsJYbzv1YCLkVsKk
	qn4vcqi021EkT1XwsMCz1MXB/g77KDIRhsk6YxO3E2jW3RWdEKM1+t3ARMGuWSFbYc2dwsRR9jXXD
	1ZgMusuaJpoUQ5bGvmydoucQaQkcG99VnpHLLsUb+3LEDGGDmMVNF7sqZmlyrCUzZdZBmYYNx5Pu8
	PhoOS+8F8Qo4CjxTw2LKUsrlnvCsumzh16pfL4kJ5qDD/pyQjZoRurzXEr2l0q/5K3DdMIbJA31Wh
	7k5C0ZiVOMFxjLGelt4UliBs9fgWhgIdkHpUde5KWX5vjkWu++PPeyQiyYo1cxo+ae0EsqxT3rL89
	Vbyj6KXdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP9xs-0000Br-MO; Mon, 28 Oct 2019 18:42:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP9xp-0000BF-65
 for linux-rockchip@lists.infradead.org; Mon, 28 Oct 2019 18:42:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DEA031F1;
 Mon, 28 Oct 2019 11:41:58 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1C8383F71F;
 Mon, 28 Oct 2019 11:41:58 -0700 (PDT)
Subject: Re: [PATCH 0/5] add rk3328 usb3 phy driver
To: Peter Geis <pgwipeout@gmail.com>, heiko@sntech.de, kishon@ti.com
References: <20191028182254.30739-1-pgwipeout@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <5230f80c-9684-72e0-8f96-602428a9e655@arm.com>
Date: Mon, 28 Oct 2019 18:41:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191028182254.30739-1-pgwipeout@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_114201_269528_6D3C7654 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: katsuhiro@katsuster.net, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 28/10/2019 18:22, Peter Geis wrote:
> It took a lot more effort than originally anticipated, but here it is.
> This is the driver from [0], updated to work with the current kernel.
> I've tested it on the rk3328-roc-cc board, both usb 2.0 and usb 3.0
> devices detect on hotplug.

Thanks Peter, I'll try to give this a go on my box for confirmation.

One quick comment is that it might be worth importing the version from 
Rockchip's own kernel tree, as that includes this additional patch which 
looks like a welcome improvement:

https://github.com/rockchip-linux/kernel/commit/12efa9acad65b4c3256683c1ccd769687be3ca56#diff-b6317b3425ac054be551abdcda910b68

Also, as it's a new phy driver, we should keep Kishon (+cc) in the loop 
as the subsystem maintainer.

Robin.

> [0] https://github.com/FireflyTeam/kernel/commits/roc-rk3328-cc/drivers/phy/rockchip/phy-rockchip-inno-usb3.c
> 
> Peter Geis (5):
>    phy: rockchip: add inno-usb3 phy driver
>    dt-bindings: clean up rockchip grf binding document
>    Documentation: bindings: add dt documentation for rockchip usb3 phy
>    arm64: dts: rockchip: add usb3 to rk3328 devicetree
>    arm64: dts: rockchip: enable usb3 on rk3328-roc-cc
> 
>   .../bindings/phy/phy-rockchip-inno-usb3.yaml  |  157 +++
>   .../devicetree/bindings/soc/rockchip/grf.txt  |    8 +-
>   .../devicetree/bindings/usb/rockchip,dwc3.txt |    9 +-
>   .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |   21 +
>   arch/arm64/boot/dts/rockchip/rk3328.dtsi      |   72 ++
>   drivers/phy/rockchip/Kconfig                  |    9 +
>   drivers/phy/rockchip/Makefile                 |    1 +
>   drivers/phy/rockchip/phy-rockchip-inno-usb3.c | 1107 +++++++++++++++++
>   8 files changed, 1378 insertions(+), 6 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb3.yaml
>   create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-usb3.c
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
