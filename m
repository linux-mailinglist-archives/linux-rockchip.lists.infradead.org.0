Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44891109235
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 Nov 2019 17:52:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DjcFsz75nC5EJGzatWau661B7KS48ZJDozicCdiMRIc=; b=imGpKqN2dVoLJEc3Z5bXefXbc
	hVfkFfk1i9O/fjNxGR1JsrN5nfGf4yNnRU5NmNRNoP8BhtE/SA6fWuWhKwbbPwTCcl0oleXjBf3aI
	cpyhX/iRLTCR2pX/g3HGTokCv7FzdjLL8lHGvUP7IpYOps74aPUEpniwBH5B5VnuLwIN5aTvLxr8R
	rLUx58bm2jBpKblvsrKHSbSlBRVPzLHNinAvMl1CKX8P5/CbmC8/+wJ7tJTQGO6kZfNu5OK+LCrNy
	I7rZK2jGO/j2oTx6Qo0SGQ8Nvtd+yW/KDE4mklokk3EQDmNWtQnNuTfsm8JpItT+yZ90ap9CF/ZSp
	wVDd/8FmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZHbC-0006Sv-P6; Mon, 25 Nov 2019 16:52:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZHb9-0006SO-UH
 for linux-rockchip@lists.infradead.org; Mon, 25 Nov 2019 16:52:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A586231B;
 Mon, 25 Nov 2019 08:52:26 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1C9F43F68E;
 Mon, 25 Nov 2019 08:52:25 -0800 (PST)
Subject: Re: [BUG] rk3399 fails to reboot correctly with PCIE device inserted
To: Peter Geis <pgwipeout@gmail.com>, heiko.stuebner@theobroma-systems.com
References: <CAMdYzYrLX=z-OVoW9RVecjoYK1J8EfLQ=cV1aNUqPsXqiOU+2g@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2a5d91f1-033e-8acc-5b57-16ca77204a0b@arm.com>
Date: Mon, 25 Nov 2019 16:52:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMdYzYrLX=z-OVoW9RVecjoYK1J8EfLQ=cV1aNUqPsXqiOU+2g@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_085228_023208_E6C7C5F1 
X-CRM114-Status: GOOD (  15.83  )
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Peter,

On 25/11/2019 4:28 pm, Peter Geis wrote:
> Good Morning,
> 
> Another issue I've come across while testing PCIE on the rockpro64.
> When a PCIE device is inserted into the board, and it enumerates
> successfully, the board will not reset.
> I've tried various states of u-boot-rockchip, u-boot-mainline, with
> both miniloader and TPL/SPL.

In case it's relevant, what particular PCIe device(s) have you seen the 
issue with? FWIW I've been running a Samsung 960 Evo NVMe in my 
NanoPC-T4 with mainline kernels for months now and it's always rebooted 
flawlessly.

Robin.

> With miniloader and both variants of u-boot, if you attempt a reboot
> it never fires the "reboot: Restarting system" message.
> If you trigger a sysrq reboot at this stage, it will reboot, but fails
> to start up the two a72 cores and subsequently hangs a second later
> when it loads the first dma driver.
> 
> With TPL/SPL on mainline-u-boot (I can't get rockchip-u-boot to work
> with TPL/SPL), it fires the "reboot: Restarting system" message, but
> never reboots.
> sysrq does not function at this point.
> 
> I believe the pcie controller is not being halted, and gets stuck in a
> loop with the two a72 cores.
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
