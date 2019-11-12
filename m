Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CD6F83D4
	for <lists+linux-rockchip@lfdr.de>; Tue, 12 Nov 2019 01:03:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=bEPoxayHlUMUJt4NLzo/+KZfQrI9y8GFJ2sHja21NOM=; b=fpK5Uk2Yk/4Cjh
	2ILgzQDbA23LoJvARxZJrgu1WaZaFZpIuArBhCJcN7z1dbQh8OYJjcPjshVerBCdSDZ1s/NTFKc0U
	WD8exarFwZpZAt0hNVUpndXZvpc/YZiNq5Lfruk1aqStvjhjBufhG76+nnWeeT0elJjJNNQrkoiSz
	Xwux/enqoWNycqlZbNFNhgg5BEZDSPKp6hEmmtzaDA2tM1pQd2594hSUG0Q9viNMOk/z0S0Rmkyu+
	f2j9E6/7mIToQ+u10fCSGSj++Gbd+JQJpq6t/QyhYWRfWpmBNmKfhQDXqzhMOj0a6EDwD5TjOb8L4
	3ghwrTv4V188DlpeC33g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUJem-00082w-9V; Tue, 12 Nov 2019 00:03:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUJej-00082c-JV
 for linux-rockchip@lists.infradead.org; Tue, 12 Nov 2019 00:03:38 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 298B62184C;
 Tue, 12 Nov 2019 00:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573517016;
 bh=mTb3POXhOlsPBq7spO5FYEZfdRp43fDidFNghcrVcr8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=UKoWBDNivTk54+l8dAeSA6ZXxx3vnKhMmj8VSDEvEZqGFEYueTUmBYGRBrlJxYtVU
 Dgi6kt/wewbRGc5ebpjaoQc/wrRcoy+Pbfxd68orIyN2LmfVA2bQq46TkL7BgFD/h/
 NZJm13PcaM06aGorDCp/RuigmAOQOCV9XaALi6p8=
Date: Mon, 11 Nov 2019 18:03:34 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Subject: Re: [BUG] rk3399-rockpro64 pcie synchronous external abort
Message-ID: <20191112000334.GA69183@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYo6mKSMXoDR7St1ynUJ9f3sh=0rgNAbbVvFAfJn82VvVQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_160337_663809_896ACCB5 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FAKE_REPLY_C           No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Doug Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sun, Nov 10, 2019 at 10:43:48AM -0500, Peter Geis wrote:

> I plugged in an i350 two port nic and examined the assigned address spaces.
> I've attached it below.
> Judging by the usage, I think this controller has enough address space
> for another two port NIC, and that's about it.
> I'm pretty sure now that the rk3399 controller just doesn't have the
> address space to map larger devices.
> I'm pretty sure the IOMMU would allow us to address system memory as
> pcie address space and overcome this limitation, but I don't know how
> to do that.

I don't think you're out of MMIO space, at least in this instance.  It
looks like you have 32MB available and the two-port NIC on bus 01 only
takes 5MB.

The IOMMU is used for DMA (e.g., reads/writes initiated by the NIC),
while the MMIO space is used for CPU programmed I/O (reads/writes done
by the driver running on the CPU).

> The address space for the nic is below:
> f8000000-f8ffffff : axi-base
> fa000000-fbdfffff : MEM

32MB.

>   fa000000-fa4fffff : PCI Bus 0000:01

5MB.

>     fa000000-fa07ffff : 0000:01:00.0
>       fa000000-fa07ffff : igb
>     fa080000-fa0fffff : 0000:01:00.0
>     fa100000-fa17ffff : 0000:01:00.1
>       fa100000-fa17ffff : igb
>     fa180000-fa1fffff : 0000:01:00.1
>     fa200000-fa27ffff : 0000:01:00.0
>     fa280000-fa2fffff : 0000:01:00.0
>     fa300000-fa37ffff : 0000:01:00.1
>     fa380000-fa3fffff : 0000:01:00.1
>     fa400000-fa403fff : 0000:01:00.0
>       fa400000-fa403fff : igb
>     fa404000-fa407fff : 0000:01:00.1
>       fa404000-fa407fff : igb
> fd000000-fdffffff : f8000000.pcie

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
