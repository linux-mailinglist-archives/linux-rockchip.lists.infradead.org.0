Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 530AE13D0F0
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 Jan 2020 01:15:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=taoQjyjBWYr5mRbSl9e8ivUO7l9Le9ctK1wgVvx1gSs=; b=iKu1fBtnWPM/ekAgbBnXhRJSA
	kRUKAjZqBG9vflFw7vokboGLLqzjLjJ3xiZNoGnGpLfZ9iVoILfzB7ZhDD2lhIB3D+u/xHTnJGEbo
	qdoA3MqdjaaC1QmsDD5qlK0uGwmGHRoURjfdkhAmZ9bwD7zEsgBb3GNhHwRi5tDV39T1WRlMFHHg5
	aN1DeAUqOpaQcxYkEfFd4W3uOr8iq+RTK0sMINe88Uv6+GGZ8VtBO0qAU/Gd9TJSA3Xp/GRejPknP
	4Bjh3osMfXtZw4JiUC0utvPJYUE/e3vL4oxzGzAbfspwNmTIOf8c0yekb2fFisJ3LyFkvKPCUpEr8
	Ohzb3ELBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irsoS-0002dR-TR; Thu, 16 Jan 2020 00:15:04 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irsoO-0002Ej-Mx
 for linux-rockchip@lists.infradead.org; Thu, 16 Jan 2020 00:15:02 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id 5B2AC4FCF9;
 Thu, 16 Jan 2020 08:14:57 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.37] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P20733T140093645911808S1579133695560712_; 
 Thu, 16 Jan 2020 08:14:56 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4477a7a0a00c9b10bfd531bf21275836>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 5/6] PCI: rockchip: add DesignWare based PCIe controller
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20200115172430.GA180494@google.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <2facd747-2b42-c500-9c04-7fd06471415a@rock-chips.com>
Date: Thu, 16 Jan 2020 08:14:55 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200115172430.GA180494@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_161501_059528_F09A5B6F 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.135 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jingoo Han <jingoohan1@gmail.com>,
 shawn.lin@rock-chips.com, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-pci@vger.kernel.org, William Wu <william.wu@rock-chips.com>,
 Simon Xue <xxm@rock-chips.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


On 2020/1/16 1:24, Bjorn Helgaas wrote:
> Follow subject line convention.
> 
> On Tue, Jan 14, 2020 at 03:25:01PM +0800, Shawn Lin wrote:
>> From: Simon Xue <xxm@rock-chips.com>
> 
> Needs a commit log.  Please describe the relationship with the
> existing drivers/pci/controller/pcie-rockchip-host.c.  Are they for
> different devices?  Does this supercede the other?

Yes, this PCIe controller is based on dwc IP, however pcie-rockchip* in
drivers/pcie/controller is another IP. They are two different
controllers totally. pcie-rockchip-host is end-of-life due to some
defects, so AFAICT, it's *only* for RK3399 SoC. All the other follow-up
SoCs should use this controller.

> 
>> Signed-off-by: Simon Xue <xxm@rock-chips.com>
>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>> ---
>>
>>   drivers/pci/controller/dwc/Kconfig            |   9 +
>>   drivers/pci/controller/dwc/Makefile           |   1 +
>>   drivers/pci/controller/dwc/pcie-dw-rockchip.c | 441 ++++++++++++++++++++++++++
>>   3 files changed, 451 insertions(+)
>>   create mode 100644 drivers/pci/controller/dwc/pcie-dw-rockchip.c
>>
>> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
>> index 0830dfc..9160264 100644
>> --- a/drivers/pci/controller/dwc/Kconfig
>> +++ b/drivers/pci/controller/dwc/Kconfig
>> @@ -82,6 +82,15 @@ config PCIE_DW_PLAT_EP
>>   	  order to enable device-specific features PCI_DW_PLAT_EP must be
>>   	  selected.
>>   
>> +config PCIE_DW_ROCKCHIP
>> +	bool "Rockchip DesignWare PCIe controller"
>> +	select PCIE_DW
>> +	select PCIE_DW_HOST
>> +	depends on ARCH_ROCKCHIP
>> +	depends on OF
>> +	help
>> +	  Enables support for the DW PCIe controller in the Rockchip SoC.
> 
> A user needs to be able to tell whether to enable
> CONFIG_PCIE_ROCKCHIP_HOST or CONFIG_PCIE_DW_ROCKCHIP.  Is there an
> endpoint driver coming?  Should this be named PCIE_DW_ROCKCHIP_HOST?

Will add a description to tell users CONFIG_PCIE_ROCKCHIP_HOST is only
for RK3399, so all other Rockchip platforms should use
CONFIG_PCIE_DW_ROCKCHIP.

There is no plan to develop endponit driver recently, but
PCIE_DW_ROCKCHIP_HOST looks sane.


> 
>> +	ret = rockchip_pcie_reset_grant_ctrl(rockchip, true);
>> +	if (ret)
>> +		goto deinit_clk;
>> +
>> +//	if (rockchip->mode == DW_PCIE_RC_TYPE)
>> +//		ret = rk_add_pcie_port(rockchip);
> 
> Remove commented-out code.  I do like an "if" statement better than
> the complicated assignment/ternary thing below, though.
> 

My bad. Will fix it in V2.

>> +	ret = rockchip->mode == DW_PCIE_RC_TYPE ?
>> +		rk_add_pcie_port(rockchip) : -EINVAL;
>> +
>> +	if (ret)
>> +		goto deinit_clk;
> 
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
