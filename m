Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF1A10522F
	for <lists+linux-rockchip@lfdr.de>; Thu, 21 Nov 2019 13:18:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0la5CByM10nU+z9j+hkYLQZwbcZM5TbRDFtbB6ttXM=; b=BI8vx+B4fochbG
	9gAUgyYcSPpFL36QmE1zvSXmMXpYyjui2Wh2zvGMvQDpu+vepuMJzJ8hbhdTk1+BZgoRrDXnwHLUI
	zDpqE4bqD7/BIRUWsHWoFgSugRXvm8N7+jjSTvfVeZGju4b3Jhime5m8wsKxCngQBMkg56qJu9qxf
	mWWrd4XGFVy+bdNSUvarnicYkOaDvHL6IZQEn1lDzXGYQ7sSEd2lp9hPlEQIeHX7zJYy4f52Oa2Jk
	GkhB1yjRt7jN5vsZGw/2VxzAe/jN6xWUMM8txEvZN6pGUm9OaIpJ9QBwfKjr8BHjVfBH0uZpLVnhF
	NIjGImM10Iy8g36WBxBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXlPl-0007ay-L1; Thu, 21 Nov 2019 12:18:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXlPU-00073l-8U; Thu, 21 Nov 2019 12:18:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 895F61045;
 Thu, 21 Nov 2019 04:18:07 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CF27B3F703;
 Thu, 21 Nov 2019 04:18:06 -0800 (PST)
Date: Thu, 21 Nov 2019 12:18:05 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 0/6] Raspberry Pi 4 PCIe support
Message-ID: <20191121121804.GY43905@e119886-lin.cambridge.arm.com>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191119111848.GR43905@e119886-lin.cambridge.arm.com>
 <1b116fabe85a324e2d05a593d38811467f43fb91.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1b116fabe85a324e2d05a593d38811467f43fb91.camel@suse.de>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_041808_342075_50FDF69F 
X-CRM114-Status: GOOD (  20.67  )
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com,
 linux-rdma@vger.kernel.org, maz@kernel.org, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 mbrugger@suse.com, bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 12:49:24PM +0100, Nicolas Saenz Julienne wrote:
> On Tue, 2019-11-19 at 11:18 +0000, Andrew Murray wrote:
> > On Tue, Nov 12, 2019 at 04:59:19PM +0100, Nicolas Saenz Julienne wrote:
> > > This series aims at providing support for Raspberry Pi 4's PCIe
> > > controller, which is also shared with the Broadcom STB family of
> > > devices.
> > > 
> > > There was a previous attempt to upstream this some years ago[1] but was
> > > blocked as most STB PCIe integrations have a sparse DMA mapping[2] which
> > > is something currently not supported by the kernel.  Luckily this is not
> > > the case for the Raspberry Pi 4.
> > > 
> > > Note that the driver code is to be based on top of Rob Herring's series
> > > simplifying inbound and outbound range parsing.
> > > 
> > > [1] https://patchwork.kernel.org/cover/10605933/
> > > [2] https://patchwork.kernel.org/patch/10605957/
> > > 
> > 
> > What happened to patch 3? I can't see it on the list or in patchwork?
> 
> For some reason the script I use to call get_maintainer.sh or git send-mail
> failed to add linux-pci@vger.kernel.org and linux-kernel@vger.kernel.org as
> recipients. I didn't do anything different between v1 and v2 as far as mailing
> is concerned.
> 
> Nevertheless it's here: https://www.spinics.net/lists/arm-kernel/msg768461.html
> and should be present in the linux-arm-kernel list.
> 
> I'll look in to it and make sure this doesn't happen in v3.

No problem.

Thanks,

Andrew Murray

> 
> Regards,
> Nicolas
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
