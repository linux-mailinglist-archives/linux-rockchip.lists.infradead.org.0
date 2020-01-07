Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 983EA132E6E
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Jan 2020 19:30:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2GVgD8nEiCdJONwu0/GPyOgauKubWq7pdCZOWn+b17E=; b=SO3wMkXs15xyf/XiN68svdr+l
	ZQ2Z+AXtyf7eSjJe3OyGFMFhX9dAXIzf88HS1OR+TOAGPaXT5IldbKEtcx6nx4rmZWdTKNAR9MeI4
	I21IkyBWcZkXBLauSsFAEHlG2ib5JOUsIRZf3AliJysYkYbcpr6FjepADdbBQYf6EGffGDO+/2L7Q
	HDk6KiWz7zmxU9HxCzbUHVBneOCrugfARxdf+1FB6Y4txB+K01ASipZnSrluXcjnDAQa46lmO7vR+
	pIwAeQuOP/xX/4gycx1fBKON9LiN52zoYZo70toBXe5o0Pw6QYwnn40mQ7Au7D3aMFlDqFDbPqLYP
	+bIEZuAEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotcX-0002Uz-Nz; Tue, 07 Jan 2020 18:30:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotcU-0002TK-Iu
 for linux-rockchip@lists.infradead.org; Tue, 07 Jan 2020 18:30:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E226631B;
 Tue,  7 Jan 2020 10:30:19 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3EC223F534;
 Tue,  7 Jan 2020 10:30:19 -0800 (PST)
Subject: Re: rk3399 rockchip pcie power domain is saying unsupported
To: Anand Moon <linux.amoon@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org
References: <CANAwSgRXd=w87CKO4WQz7ZRAk+un7ctTPCi5XSa7GfNDhjy0YQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6b476f25-e3b9-2aaf-c46f-c28118924120@arm.com>
Date: Tue, 7 Jan 2020 18:30:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CANAwSgRXd=w87CKO4WQz7ZRAk+un7ctTPCi5XSa7GfNDhjy0YQ@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_103022_664824_D4E36081 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 07/01/2020 6:00 pm, Anand Moon wrote:
> Hi All,
> 
> On my rock960 I want to add power domain feature for pcie node using
> following patch. [0] https://patchwork.kernel.org/patch/9322549/
> I also tried to add some more cru to see below
> but the power domain summary shows unsupported

Doesn't that just mean that the EHCI and PCIe drivers haven't enabled 
RPM (or have explicitly disabled it)?

Robin.

> # cat /sys/kernel/debug/pm_genpd/pm_genpd_summary
> ...
> pd_sdioaudio                    off-0
>      /devices/platform/fe310000.dwmmc                    suspended
>      /devices/platform/ff8a0000.i2s                      suspended
> pd_perihp                       on
>      /devices/platform/fe380000.usb                      unsupported
>      /devices/platform/fe3c0000.usb                      unsupported
>      /devices/platform/fe3a0000.usb                      suspended
>      /devices/platform/fe3e0000.usb                      suspended
>      /devices/platform/f8000000.pcie                     unsupported
> pd_sd                           on
>      /devices/platform/fe320000.dwmmc                    active
> pd_gmac                         off-0
> ...
> can any one share more inputs.
> ----
> @@ -1049,6 +1056,19 @@
>                                           <&cru SCLK_SDMMC>;
>                                  pm_qos = <&qos_sd>;
>                          };
> +                       pd_perihp@RK3399_PD_PERIHP {
> +                               reg = <RK3399_PD_PERIHP>;
> +                               clocks = <&cru ACLK_PERIHP>,
> +                                        <&cru SCLK_PCIEPHY_REF>,
> +                                        <&cru ACLK_PERF_PCIE>,
> +                                        <&cru ACLK_PCIE>,
> +                                        <&cru PCLK_PCIE>,
> +                                        <&cru SCLK_PCIE_PM>;
> +                               pm_qos = <&qos_perihp>,
> +                                        <&qos_pcie>,
> +                                        <&qos_usb_host0>,
> +                                        <&qos_usb_host1>;
> +                       };
> 
> -Anand
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
