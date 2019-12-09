Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBCF116E8B
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Dec 2019 15:07:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xlU2/WTQ703b2tWT6hGTdr5tvH3D7E9twaD+EiBFmro=; b=YcI/nDMZK4N31hqmfWT2AnrEx
	0ZpS2AQ+j5Za0SGh8FzySWRkAJCkbnYGMmYJLfRDrRnzWdewq0c6TwlrdugpickvBPff8yUJLWIbd
	f76P17AWx1v9S6G+9wFWc9eU9k4tqkbgSkUOFurkGz3bytRkmSrBgFSj4hcTpdopsSrdU3Z0QCM0M
	9/PZ/oFfuOCa/nGZez73E+ZMZyA9uNp1Pz87ZGG4dohMI9xVEvz7CXkfBbXR94lgjZKvsQ9XjvbS3
	jTNOigrHF/0LD08NxsMopz50kq1B59UJ00ZO4LcbhGbrC2ZZe+SuxCFBGwuNazI5fudq+s1Sdb6px
	stZXwiibA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieJgs-0005Sd-HR; Mon, 09 Dec 2019 14:07:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJgo-0005RM-KR
 for linux-rockchip@lists.infradead.org; Mon, 09 Dec 2019 14:07:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C42E328;
 Mon,  9 Dec 2019 06:07:05 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 543EA3F718;
 Mon,  9 Dec 2019 06:07:04 -0800 (PST)
Subject: Re: [Question] rk3399 vfio-pci/sr-iov support
To: Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>
References: <CAMdYzYoPXWbv4zXet6c9JQEMbqcJi6ZEOui_n82NVmrqNLy_pw@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <b597b9a6-870a-8fbd-6490-59734c04367f@arm.com>
Date: Mon, 9 Dec 2019 14:07:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMdYzYoPXWbv4zXet6c9JQEMbqcJi6ZEOui_n82NVmrqNLy_pw@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_060706_722446_DDCD7D44 
X-CRM114-Status: GOOD (  13.43  )
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-pci@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 09/12/2019 1:28 pm, Peter Geis wrote:
> Good Morning,
> 
> I'm back with more pcie fun on the rk3399.
> I'm trying to get pcie passthrough working for a vm on the rk3399, and
> have encountered some roadblocks.
> 
> First, vfio-pci doesn't work on the rk3399, as the pcie controller
> doesn't bind explicitly to a iommu.
> [37528.138212] vfio-pci 0000:01:00.0: assign IRQ: got 226
> [37528.138254] vfio-pci: probe of 0000:01:00.0 failed with error -22
> 
> # find /sys/kernel/iommu_groups/ -type l
> /sys/kernel/iommu_groups/1/devices/ff8f0000.vop
> /sys/kernel/iommu_groups/2/devices/ff900000.vop
> 
> # virsh start openwrt
> error: Failed to start domain openwrt
> error: internal error: Process exited prior to exec: libvirt:  error :
> internal error: Invalid device 0000:01:00.0 iommu_group file
> /sys/bus/pci/devices/0000:01:00.0/iommu_group is not a symlink

That much I can help with somewhat: the major impediment is that RK3399 
doesn't have an IOMMU in front of PCIe. As far as I'm aware your only 
option is to resort to the "here be dragons" CONFIG_VFIO_NOIOMMU mode 
(which I don't know an awful lot about beyond that it's a thing).

Robin.

> Second, sr-iov support is broken.
> root@rockpro64:/sys/bus/pci/devices/0000:01:00.0# echo 1 > sriov_numvfs
> bash: echo: write error: Input/output error
> [37352.907558] pci 0000:01:10.0: [8086:1520] type 7f class 0xffffff
> [37352.907578] pci 0000:01:10.0: unknown header type 7f, ignoring device
> 
> Do any of y'all have some insight into these issues?
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
