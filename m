Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A0110741D
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 Nov 2019 15:36:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=kACwZqEIzpK0oOO95GH6guhX7c+5Erp0XAIyJuVyDdQ=; b=AE5RhqKmS3iWiM
	X6ttTLT9Sfh0whdjJDX2S3ayyPSg4R5TrQ5h7E1w9AoD4e6dhuQVoP85Jnu3Z3C7lc48Afr8aZNUl
	QVQO/7J+6XkWCUHlAIPxWpE1lmh5VREI+6aWem/ITDKA5E7baFInTqoDROCNUyT9mmxeJJpPo9HVl
	2M4F1RJzt/fx4z5+mPlzzxbtJy/U7H4QcyHThMTSNi7f+dv2ExmEbXnDq2XwbSUk2UgWaZUiL3kGy
	GYjQ7h0xma/+ht7QaSZAyxcpEiH9x6k7FURgS0rfMY3jR17+bVDjSaTcVngH6uqNRew7ybctIcmDy
	ZROabfwiBwRjGx8LkOQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYA2o-0000kE-FP; Fri, 22 Nov 2019 14:36:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYA2l-0000jV-IB
 for linux-rockchip@lists.infradead.org; Fri, 22 Nov 2019 14:36:20 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 05BC420715;
 Fri, 22 Nov 2019 14:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574433378;
 bh=sjserQ51iYtb6tWkCfOxOAhki9OnMNvjfzQD4Dzcu9w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=gx/IvULq9KCSyi56s2oI0cRNzKR4qs8qFpjphlDn+HA6FQ8RKLtpur2DULwNhvSWY
 Nb6AIhYUUdG+/cCR4F1+Yoj37uD2r/2OlqpKwDkWOaNFYNl2NWTYZaZfVJNGo5ZeVb
 rQcpss/BYFhOXCHZogQ3BhiyMFzYTCURqaLdfGL0=
Date: Fri, 22 Nov 2019 08:36:16 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Subject: Re: [BUG] rk3399-rockpro64 pcie synchronous external abort
Message-ID: <20191122143616.GA215594@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2a381384-9d47-a7e2-679c-780950cd862d@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_063619_623042_B85DDB26 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 10:03:27AM +0800, Shawn Lin wrote:
> From da9db487615c3687a0823c54d8d0790cbd4f79a2 Mon Sep 17 00:00:00 2001
> From: Shawn Lin <shawn.lin@rock-chips.com>
> Date: Thu, 21 Nov 2019 09:45:12 +0800
> Subject: [PATCH] WFT: PCI: rockchip: play game with unsupported request from
>  EP
> 
> Native defect prevents this RC far from supporting any response
> from EP which UR filed is set. Take a big hammer to take over
> Serror handler and work around it.

Peter, now that you have a way to at least boot, can you collect the
output of "sudo lspci -vvxxx"?

When we're enumerating devices, we don't know ahead of time which
devices exist, so we try to read the Vendor ID for each *possible*
device.  If the device doesn't exist, that config read should be
terminated with an Unsupported Request completion (see the
implementation note at the end of PCIe r5.0, sec 2.3.2).  So far this
is all standard PCIe hardware behavior (and sorry if this is all
obvious).

Sec 6.2.5 and 6.2.6 show several configuration bits that affect how
that UR is handled and ultimately reported, possibly via SERR#.  In
most Linux systems, a UR completion does not cause an SERR#, but the
PCI core does not manage those configuration bits directly (it
probably *should* be more proactive about this), so this is more a
result of how platform firmware set them than anything else.

I'm speculating that you may have PCI_COMMAND_SERR and similar bits
set, which will cause SERR# in cases where we don't see SERR# on other
platforms.  Your lspci output should show this.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
