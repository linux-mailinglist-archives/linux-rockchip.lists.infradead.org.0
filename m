Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE2BE84A2
	for <lists+linux-rockchip@lfdr.de>; Tue, 29 Oct 2019 10:44:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ucUjm3P/dtBYtpmsYTq1Be4/77CJH1QEodgP10oeNww=; b=KLkCePlqBADn5P
	2Y26Ej0xzisFefogWhM6zBp/d42SypuypCdRuF9fSHtHfFL0r7vNy3VvxkfMfKvKZ4c30LzXWTdao
	DDcX/cmuWa2efnDVXLXIOQVzCjBtHpBUYcOus4S3LnU+HG9h0wn6ys4nijsebWB+zMOdX/UXy8Fvy
	cFdpORQXc0uMBjvFeV5+8HpCVuCTE0/WpGsT4Cl9g4cqbPVcxRzfoE3J63fOLp1RidrwseSfO+3t+
	BAlaurcKMalgqQu0szjCIX2dZj6kyl9XgH8raH83CBMuPpL/OV8/OUTcYGTBIMS9cnnEF50x7Mlv0
	rJX3BwYjVeD6lARFap/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPO2h-0004gV-4U; Tue, 29 Oct 2019 09:43:59 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPO2e-0004fn-4d
 for linux-rockchip@lists.infradead.org; Tue, 29 Oct 2019 09:43:57 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id 4DD022E3;
 Tue, 29 Oct 2019 17:43:51 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from localhost (unknown [183.57.25.242])
 by smtp.263.net (postfix) whith ESMTP id
 P20563T139996807821056S1572342230280460_; 
 Tue, 29 Oct 2019 17:43:50 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <448b0f2a4be0c54bf3cac2d0ad28a179>
X-RL-SENDER: djw@t-chip.com.cn
X-SENDER: djw@t-chip.com.cn
X-LOGIN-NAME: djw@t-chip.com.cn
X-FST-TO: jagan@amarulasolutions.com
X-SENDER-IP: 183.57.25.242
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: djw@t-chip.com.cn
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 0/9] rockchip: rk3399: Add fastboot support
Organization: Firefly Team
References: <20191022175458.22604-1-jagan@amarulasolutions.com>
Date: Tue, 29 Oct 2019 17:43:50 +0800
In-Reply-To: <20191022175458.22604-1-jagan@amarulasolutions.com> (Jagan Teki's
 message of "Tue, 22 Oct 2019 23:24:49 +0530")
Message-ID: <87tv7rga3t.fsf@archiso.i-did-not-set--mail-host-address--so-tickle-me>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_024356_507834_7A7CD5E3 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Jagan Teki <jagan@amarulasolutions.com> writes:

> This patchset add fastboot support on RK3399 and also
> rework of CONFIG items related to fastboot support.
>
> patch 0001 - 0005: existing gadget, fastboot config move
>
> patch 0006: add phy interface for dwc3_uboot
>
> patch 0007: 0008: dwc3 setup for rk3399
>
> patch 0009: enable fastboot, nanopc-t4, roc-pc
>
> SD card work fine, but eMMC seems unstable when partitioning
> with gpt like below but it can be problem with fastboot though.
>
> => gpt write mmc 0 $partitions
> Writing GPT: mmc write failed
> ** Can't write to device 0 **
> ** Can't write to device 0 **
> error!
> => gpt verify mmc 0 $partitions
> GUID Partition Table Header signature is wrong: 0x0 != 0x5452415020494645
> gpt_verify_headers: *** ERROR: Invalid GPT ***
> Verify GPT: error!
>
> Any inputs?
> Jagan.
>
> Jagan Teki (9):
>   gadget: Select USB_GADGET_MANUFACTURER for rockchip
>   gadget: Select USB_GADGET_VENDOR_NUM for rockchip
>   gadget: rockchip: USB_GADGET_PRODUCT_NUM
>   gadget: rockchip: Add rk3128 USB_GADGET_PRODUCT_NUM
>   fastboot: rockchip: Select FASTBOOT_FLASH[_MMC_DEV]
>   usb: dwc3: Add phy interface for dwc3_uboot
>   gadget: rockchip: Add rk3399 USB_GADGET_PRODUCT_NUM
>   rockchip: Setup dwc3_device (for non-dm gadgets)
>   [DO NOT MERGE] rockchip: rk3399: Enable fastboot
>
>  arch/arm/mach-rockchip/board.c     | 32 ++++++++++++++++++++++++++++--
>  configs/elgin-rv1108_defconfig     |  2 --
>  configs/evb-rk3036_defconfig       |  5 -----
>  configs/evb-rk3128_defconfig       |  2 --
>  configs/evb-rk3229_defconfig       |  5 -----
>  configs/evb-rk3288_defconfig       |  5 -----
>  configs/evb-rk3328_defconfig       |  5 -----
>  configs/evb-rv1108_defconfig       |  2 --
>  configs/firefly-rk3288_defconfig   |  5 -----
>  configs/kylin-rk3036_defconfig     |  5 -----
>  configs/miqi-rk3288_defconfig      |  5 -----
>  configs/nanopc-t4-rk3399_defconfig |  3 +++
>  configs/phycore-rk3288_defconfig   |  5 -----
>  configs/popmetal-rk3288_defconfig  |  5 -----
>  configs/roc-rk3399-pc_defconfig    |  3 +++
>  configs/rock2_defconfig            |  2 --
>  configs/rock64-rk3328_defconfig    |  5 -----
>  configs/tinker-rk3288_defconfig    |  5 -----
>  configs/vyasa-rk3288_defconfig     |  3 ---
>  drivers/fastboot/Kconfig           |  4 +++-
>  drivers/usb/dwc3/core.c            | 26 ++++++++++++++++++++++++
>  drivers/usb/dwc3/core.h            | 12 +++++++++++
>  drivers/usb/gadget/Kconfig         |  6 ++++++
>  include/dwc3-uboot.h               |  2 ++
>  include/linux/usb/phy.h            | 19 ++++++++++++++++++
>  25 files changed, 104 insertions(+), 69 deletions(-)
>  create mode 100644 include/linux/usb/phy.h

I also tested rockusb and ums after this patch series on v2019.10, which work
like a charm, with just a little glitches of the following messages appear in
the serial console:

    request 00000000f5f3fec0 was not queued to ep1in-bulk
    request 00000000f5f3fec0 was not queued to ep1in-bulk
    request 00000000f5f3fec0 was not queued to ep1in-bulk
    (repeat when there're read/write ops)

Thanks for your great work!
-- 
Levin Du



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
