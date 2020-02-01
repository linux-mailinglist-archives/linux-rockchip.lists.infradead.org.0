Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CC614F78F
	for <lists+linux-rockchip@lfdr.de>; Sat,  1 Feb 2020 11:51:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S6PP3N0Oh/tW0p760J/wKzKVB8/zZDW+CEqYdxyMcwE=; b=h/UwOA0vk5yLbV2kWd3gFXrTl
	5xSCdzKuL25Dw1mmF60zVGEai6H9DjJ+2Fy4fI5qyg6D0jP6gXiuYOE2nwC5WiZ2VBTEdeXPmC6Mh
	7SbVisSKKZydRQoXWJgUPzM+TUng0PHjTaVUDEEwLrUf8dbAfm+JheHWRyoFMjM3pGqFB/iThHftR
	gbcPW1UngwRLUBCDbwSJqXlrHPrj3d/+xIQE/SH5d9czdzi1F33311OIGhUVFGm5G/L+mZJebXl4S
	AFzST8UANWxZ5ebciC76ZagqfhLUJ27BlQrb7DP/baJf+VYVjXSxrmqb0fmx+OBRfNtkVlCpa3Oo+
	4mMPGsU9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixqN0-0007Zd-1J; Sat, 01 Feb 2020 10:51:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixqMs-0007UU-QF; Sat, 01 Feb 2020 10:51:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4A54EFEC;
 Sat,  1 Feb 2020 02:51:11 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9893C3F68E;
 Sat,  1 Feb 2020 02:51:10 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
To: Adam Van Ymeren <adam@vany.ca>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <87imkryz5t.fsf@vany.ca>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
Date: Sat, 1 Feb 2020 10:51:12 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <87imkryz5t.fsf@vany.ca>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_025114_895415_5A4238DB 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Adam,

On 2020-01-31 11:38 pm, Adam Van Ymeren wrote:
> With this change the kernel successfully finds the SD Card and can load
> a rootfs from it.  Tested on hardware.
> 
> Signed-off-by: Adam Van Ymeren <adam@vany.ca>
> 
> diff -uprN -X linux-5.5/Documentation/dontdiff linux-5.5-orig/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts linux-5.5/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> --- linux-5.5-orig/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts	2020-01-26 19:23:03.000000000 -0500
> +++ linux-5.5/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts	2020-01-31 16:26:35.377075419 -0500
> @@ -44,7 +44,7 @@
>   
>   	vcc_sdio: sdmmcio-regulator {
>   		compatible = "regulator-gpio";
> -		gpios = <&grf_gpio 0 GPIO_ACTIVE_HIGH>;
> +		gpios = <&gpio0 RK_PD1 GPIO_ACTIVE_HIGH>;

Given that the RK3328 datasheet has no mention of GPIO0_D1 existing at 
all, how sure are you that this is correct - have you tested cards in 
both 3.3V and 1.8V (UHS-1) signalling modes?

The ROC-RK3328-CC schematics show GPIO_MUTE being used to bias the 
feedback pin of an adjustable regulator supplying the SDMMC0 I/O domain, 
so it seems more likely that the pin is correct but the states (or the 
polarity) are backwards.

Robin.

>   		states = <1800000 0x1
>   			  3300000 0x0>;
>   		regulator-name = "vcc_sdio";
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
