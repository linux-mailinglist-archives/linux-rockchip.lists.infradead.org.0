Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3D0102961
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 17:29:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RWvmvi3Ng8Bi+pf7LiEQY8k2ikKLNUpVJRyAapzmxo=; b=Ti8iUkC6w+Q7tf
	A0Kz7Jz0Nv8QQtZWHoGYZ73vKxPnOcCPl/xqErIMhduwrotLQ7Qu2y86TX8IrecdGVdk7T++mAJ8F
	QgGTe6MLrPhRBOqCpShk58QykIJlRcSR/tF+OXQ866xFeJ9GkHV36kefGTmLn9g8oYMlBxez/kaKv
	WjqWBIDnqk2fhHwPVxGCvnkn78k1j9cMeh1wl7Q5ZkQ3KihX1oi4a/76+fHMrQPgQsO0n9+FdkBm7
	aEL/HJZGirwfWhqT6EH5ziHkmkPq7UXIel36tddMS+Vvm60/94gprzfiXcLe7nXtiM7oADrq7YiNU
	Y9y44qa9eqHWm4/DyCgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX6NI-0006UL-Ht; Tue, 19 Nov 2019 16:29:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX6N4-0006KD-Ag; Tue, 19 Nov 2019 16:28:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F256131B;
 Tue, 19 Nov 2019 08:28:52 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 320683F6C4;
 Tue, 19 Nov 2019 08:28:52 -0800 (PST)
Date: Tue, 19 Nov 2019 16:28:50 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 1/6] linux/log2.h: Add roundup/rounddown_pow_two64()
 family of functions
Message-ID: <20191119162849.GT43905@e119886-lin.cambridge.arm.com>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-2-nsaenzjulienne@suse.de>
 <20191119111320.GP43905@e119886-lin.cambridge.arm.com>
 <052d07fb4eb79b29dd58cab577d59bab6684329a.camel@suse.de>
 <56cbba61d92f9bc7d0a33c1de379bcd5cf411cb8.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56cbba61d92f9bc7d0a33c1de379bcd5cf411cb8.camel@suse.de>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_082854_414450_95F48671 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-rdma@vger.kernel.org,
 maz@kernel.org, phil@raspberrypi.org, iommu@lists.linux-foundation.org,
 linux-rockchip@lists.infradead.org, f.fainelli@gmail.com,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 mbrugger@suse.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 jeremy.linton@arm.com, Tom Joseph <tjoseph@cadence.com>, wahrenst@gmx.net,
 james.quinlan@broadcom.com, Robin Murphy <robin.murphy@arm.com>,
 "David S. Miller" <davem@davemloft.net>, Tariq Toukan <tariqt@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 01:43:39PM +0100, Nicolas Saenz Julienne wrote:
> On Tue, 2019-11-19 at 12:30 +0100, Nicolas Saenz Julienne wrote:
> > Hi Andrew, thanks for the review.
> > > > +/**
> > > > + * __roundup_pow_of_two64() - round 64bit value up to nearest power of
> > > > two
> > > > + * @n: value to round up
> > > > + */
> > > > +static inline __attribute__((const)) __u64 __roundup_pow_of_two64(__u64
> > > > n)
> > > 
> > > To be consistent with other functions in the same file (__ilog_u64) you may
> > > want to rename this to __roundup_pow_of_two_u64.
> > 
> > Sounds good to me.
> > 
> > > Also do you know why u64 is used in some places and __u64 in others?
> > 
> > That's unwarranted, it should be __u64 everywhere.
> 
> Sorry, now that I look deeper into it, it should be u64.

Do you know the reason why? I'd be interested to know.

Thanks,

Andrew Murray

> 
> > > > +{
> > > > +	return 1UL << fls64(n - 1);
> > > 
> > > Does this need to be (and for the others):
> > > 
> > > return 1ULL << fls64(n - 1);
> > > 
> > > Notice that the PCI drivers you convert, all use 1ULL.
> > 
> > Noted
> > 
> > Regards,
> > Nicolas
> > 
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
