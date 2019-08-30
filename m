Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2415A3539
	for <lists+linux-rockchip@lfdr.de>; Fri, 30 Aug 2019 12:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmqmFA97a/L4FMyY+40EU+ys6J2jrHcMUYeQoairp+w=; b=hpkLs/U2Dg2bTq
	I32UOjeyqNFCLNz0jbvc4STlg06rnY2r/mkTV8tyZwdwpuU1V5i7xOve3nUPuGDbyLyHAXFSdV+o5
	HAHcLXYyT5ZXTIS33ZibbShaITy7tNVy8TI2VM1eHLgeHB7Kv2xIgkfugBJ5MYsbuYDAvLOvg2LRu
	LVZ/4QW1P8Yp7UUx9PU05ANdhOjeN3kyhN+yS7aB9bRhAJEn2NaP7mcuYIGH095IjlRL9e5esEmh2
	u96bJXl0gKO9DIRRLEygtc9lZh0MBDDTAj443SVxRrgbQFvPb5Po1jj4ON2XD72JI3MXPPI5WNq3F
	f7tjjtAS+XuoEUc5EpiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3eTS-0004Cv-EE; Fri, 30 Aug 2019 10:49:46 +0000
Received: from legacy.eumx.net ([2001:470:9853::71])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3eTP-0004CA-6m
 for linux-rockchip@lists.infradead.org; Fri, 30 Aug 2019 10:49:44 +0000
Subject: Re: RK3288 dwc2 USB OTG + macOS
From: Jack Mitchell <ml@embed.me.uk>
To: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
References: <e6321abc-1d3a-cfa1-638a-6051719462ad@embed.me.uk>
Message-ID: <bcda1da2-fcdf-2c5b-d07b-5cf397571eb7@embed.me.uk>
Date: Fri, 30 Aug 2019 11:49:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <e6321abc-1d3a-cfa1-638a-6051719462ad@embed.me.uk>
Content-Language: en-BW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_034943_247395_31A8A1D0 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: hminas@synopsys.com, Phillip Karls <prkarls@gmail.com>,
 linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 22/08/2019 17:06, Jack Mitchell wrote:
> I'm having issues on a Firefly rk3288 board when trying to use USB
> gadget ethernet on macOS. The dr_mode is set to "otg" and it works fine
> with my Linux desktop.
> 
> If I set the dr_mode to "peripheral" macOS will work, but still takes
> around 10 seconds to enumerate the device which makes me think it's only
> just working. However, I need the port to be in "otg" mode as it will
> switch between peripheral/host use cases.
> 
> I've attached a log from the dwc2 driver from mainline Linux 5.2 when
> being plugged into the macOS device for 30 seconds, then removed. The
> mac in this case is a 2013 macbook pro. Any pointers in the right
> direction would be greatly appreciated.
> 
> Regards,
> Jack.
> 

I've been poking about with this some more and I've managed to bisect
the issue down to the following commit

729cac693eecfebdb9e152eaddddd358ae2decb7 usb: dwc2: Change ISOC DDMA flow

If I build before this commit everything works fine with a g_ether
gadget device on mac. Unfortunately it's a rather large change which I
can't just revert in master as it's got multiple dependant commits
later. So, any advice on what could be causing this or how to help debug
it would be much appreciated, as at the moment I've just forward ported
the working 4.16 version of the driver over the 5.3-rc6 broken driver
which isn't very sustainable in the long run.

Regards,
Jack.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
