Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E81A0F98
	for <lists+linux-rockchip@lfdr.de>; Thu, 29 Aug 2019 04:33:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XgEpsp5Hk35BGn1oLOGnaXDtzQQJ+ZV3JJa8niPZiTQ=; b=LJyPJq2B7UCHl1gBAC/LyLCYd
	BYvwA9UVrdIeHiB3XXlDE54ypeoOa3VmBj0brajNKFitwwbXznp/EO5MKnUJN9NrIQw0xRFq0LvBA
	iyxQBuvi5nqD6Jkm2UWEtUbAZUAeIv6qYKHdUmFZ86fS2zhMdarQbFUP9j3V3tQ0XdcvyI4Y3HehX
	D4Ax3wXI00QCZI4kAvo6H+3IdrUvIHDVGnDiBbuWqPCLyBlGXb92kt6WbhNEp1kqFNa992pLueKGx
	7BrC6Rh4w7rajA3TWQTYrAGjTk1pai7KIUH5yckMjzWAtN4WhW06cQX+4Y/zMHRmtr0kXc5ZAO09I
	AU3eWfGJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3AFl-0007Bu-FA; Thu, 29 Aug 2019 02:33:37 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3AFZ-00075C-Gy; Thu, 29 Aug 2019 02:33:27 +0000
Received: from shawn.lin?rock-chips.com (unknown [192.168.167.158])
 by lucky1.263xmail.com (Postfix) with ESMTP id DB5303DE17;
 Thu, 29 Aug 2019 10:31:11 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.37] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P1611T140153748326144S1567045863028376_; 
 Thu, 29 Aug 2019 10:31:07 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b3c576a24e41d32ebb6ea575d2616e43>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: linux-arm-kernel@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH=5d_PCI=3a_rockchip=3a_Properly_handle_opti?=
 =?UTF-8?B?b25hbCByZWd1bGF0b3Jz44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9j?=
 =?UTF-8?Q?kchip-bounces+shawn=2elin=3drock-chips=2ecom=40lists=2einfradead?=
 =?UTF-8?B?Lm9yZ+S7o+WPkeOAkQ==?=
To: Thierry Reding <thierry.reding@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>
References: <20190828150737.30285-1-thierry.reding@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <c435244d-34e5-3ab8-d4df-5e08e7951e6f@rock-chips.com>
Date: Thu, 29 Aug 2019 10:31:03 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190828150737.30285-1-thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_193325_885635_9E432E31 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.135 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 shawn.lin@rock-chips.com, Vidya Sagar <vidyas@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2019/8/28 23:07, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> regulator_get_optional() can fail for a number of reasons besides probe
> deferral. It can for example return -ENOMEM if it runs out of memory as
> it tries to allocate data structures. Propagating only -EPROBE_DEFER is
> problematic because it results in these legitimately fatal errors being
> treated as "regulator not specified in DT".
> 
> What we really want is to ignore the optional regulators only if they
> have not been specified in DT. regulator_get_optional() returns -ENODEV
> in this case, so that's the special case that we need to handle. So we
> propagate all errors, except -ENODEV, so that real failures will still
> cause the driver to fail probe.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>

LGTM,
Acked-by: Shawn Lin <shawn.lin@rock-chips.com>

> ---
>   drivers/pci/controller/pcie-rockchip-host.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index 8d20f1793a61..ef8e677ce9d1 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -608,29 +608,29 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
>   
>   	rockchip->vpcie12v = devm_regulator_get_optional(dev, "vpcie12v");
>   	if (IS_ERR(rockchip->vpcie12v)) {
> -		if (PTR_ERR(rockchip->vpcie12v) == -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> +		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
> +			return PTR_ERR(rockchip->vpcie12v);
>   		dev_info(dev, "no vpcie12v regulator found\n");
>   	}
>   
>   	rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
>   	if (IS_ERR(rockchip->vpcie3v3)) {
> -		if (PTR_ERR(rockchip->vpcie3v3) == -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> +		if (PTR_ERR(rockchip->vpcie3v3) != -ENODEV)
> +			return PTR_ERR(rockchip->vpcie3v3);
>   		dev_info(dev, "no vpcie3v3 regulator found\n");
>   	}
>   
>   	rockchip->vpcie1v8 = devm_regulator_get_optional(dev, "vpcie1v8");
>   	if (IS_ERR(rockchip->vpcie1v8)) {
> -		if (PTR_ERR(rockchip->vpcie1v8) == -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> +		if (PTR_ERR(rockchip->vpcie1v8) != -ENODEV)
> +			return PTR_ERR(rockchip->vpcie1v8);
>   		dev_info(dev, "no vpcie1v8 regulator found\n");
>   	}
>   
>   	rockchip->vpcie0v9 = devm_regulator_get_optional(dev, "vpcie0v9");
>   	if (IS_ERR(rockchip->vpcie0v9)) {
> -		if (PTR_ERR(rockchip->vpcie0v9) == -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> +		if (PTR_ERR(rockchip->vpcie0v9) != -ENODEV)
> +			return PTR_ERR(rockchip->vpcie0v9);
>   		dev_info(dev, "no vpcie0v9 regulator found\n");
>   	}
>   
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
