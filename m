Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD99EE8493
	for <lists+linux-rockchip@lfdr.de>; Tue, 29 Oct 2019 10:40:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHoqzBc/9yYvuK3OuG2wI9lXTJlsD0cd/wQ5I8weHCs=; b=QfKSumMihf/6j9
	aKJqD15n2xqZ+TndKmP23bdVHfNuszrqf9K/4JHgp1SIuQvbxwZ22i1Yi7GJmXQTIEQl9sUpJoPcM
	1wpyVwOc2lQKASPu+t3kJ1/yIqZtHw3sLRepFdxEuc0h7yCZc8rYHv9dzvka+Fq8EDTaGcntfik5h
	dOifdjlOuPOXYoaivCIeKoDYLDXJnXCWAtQn/7bVvWnQS4gJ2AFmS33I3jPUB3OCU9lO81CF6dEqB
	weLuG4o2mL0RRj7HR9jRsqWvkT5RXhHbYg2s5OI5qKAHu9Zz5BHGwJJXRngDYfkbzk2YKMg3zcjnQ
	UjrNefPQHU8cE328mYPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPNzU-0004M3-Fv; Tue, 29 Oct 2019 09:40:40 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPNzP-0004L5-Uz
 for linux-rockchip@lists.infradead.org; Tue, 29 Oct 2019 09:40:38 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 2B51BBBC;
 Tue, 29 Oct 2019 17:40:25 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from localhost (unknown [183.57.25.242])
 by smtp.263.net (postfix) whith ESMTP id
 P3752T139934521710336S1572342019234904_; 
 Tue, 29 Oct 2019 17:40:24 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <8bcb0feca6a0a155c13b862fa33f7bee>
X-RL-SENDER: djw@t-chip.com.cn
X-SENDER: djw@t-chip.com.cn
X-LOGIN-NAME: djw@t-chip.com.cn
X-FST-TO: jagan@amarulasolutions.com
X-SENDER-IP: 183.57.25.242
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: djw@t-chip.com.cn
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 7/9] gadget: rockchip: Add rk3399 USB_GADGET_PRODUCT_NUM
Organization: Firefly Team
References: <20191022175458.22604-1-jagan@amarulasolutions.com>
 <20191022175458.22604-8-jagan@amarulasolutions.com>
Date: Tue, 29 Oct 2019 17:40:17 +0800
In-Reply-To: <20191022175458.22604-8-jagan@amarulasolutions.com> (Jagan Teki's
 message of "Tue, 22 Oct 2019 23:24:56 +0530")
Message-ID: <87y2x3ga9q.fsf@archiso.i-did-not-set--mail-host-address--so-tickle-me>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_024036_163869_FFA91505 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.195 listed in list.dnswl.org]
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

> Add 0x330a for rk3399 gadget product number.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  drivers/usb/gadget/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
> index 2da8b40e05..b0e61f3fcd 100644
> --- a/drivers/usb/gadget/Kconfig
> +++ b/drivers/usb/gadget/Kconfig
> @@ -61,7 +61,7 @@ config USB_GADGET_PRODUCT_NUM
>  	default 0x310a if ROCKCHIP_RK3036
>  	default 0x310c if ROCKCHIP_RK3128
>  	default 0x320a if ROCKCHIP_RK3229 || ROCKCHIP_RK3288
> -	default 0x330a if ROCKCHIP_RK3328
> +	default 0x330a if ROCKCHIP_RK3328 || ROCKCHIP_RK3399
>  	default 0x0
>  	help
>  	  Product ID of the USB device emulated, reported to the host device.

With 0x330a, the device shown in `lsusb` is:

    Bus 002 Device 024: ID 2207:330a Fuzhou Rockchip Electronics Company RK3368 in Mask ROM mode                                                           
While using 0x330c, the device shown in `lsusb` is:

    Bus 002 Device 025: ID 2207:330c Fuzhou Rockchip Electronics Company RK3399 in Mask ROM mode

Therefore, this should be modified to use 0x330c:

+       default 0x330c if ROCKCHIP_RK3399

Thanks
-- 
Levin Du



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
