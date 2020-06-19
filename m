Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E4720061F
	for <lists+linux-rockchip@lfdr.de>; Fri, 19 Jun 2020 12:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HV7eLkDitUhotTLRQUmvodPNQmth54YkPcSfJK1OMJc=; b=qmlfOem90CqFiC
	6tlk4YBEPQPl8DXJ2/NKQTUKU/aM2lLiM+xn5heN3o409gdySGwaTx2C3SDQV4kG9HTjVhlG31JZ3
	R/dng9o7hpNyiqY5woaPeLVmGomWQyI/Do9Ko98j8v8EGUMeU3s010BxoaeU68bdv0epU6E+a+mt1
	xTZg0a43bBKcjig2jY+eymSPQuJr9wnqa5XdtWmvCS77olECZFFL5q3aw8v8IYxWT9M2xxRg7qYL2
	t5SsKR1hAmf5eFQwgIkdHni7r35eEu2eobfOgWppb/DdtZZsJ7XounKr8DPmSv0vbuDFF945/R6mh
	tHorBgC5hhiebld8KmYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmE4X-0007Kp-BD; Fri, 19 Jun 2020 10:16:33 +0000
Received: from outbound.soverin.net ([2a01:4f8:fff0:2d:8::215])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmE4T-0007JW-7p
 for linux-rockchip@lists.infradead.org; Fri, 19 Jun 2020 10:16:31 +0000
Received: from smtp.soverin.net (unknown [10.10.3.24])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by outbound.soverin.net (Postfix) with ESMTPS id AE7E1601AA;
 Fri, 19 Jun 2020 10:16:21 +0000 (UTC)
Received: from smtp.soverin.net (smtp.soverin.net [159.69.232.138]) by
 soverin.net
To: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
From: Jack Mitchell <ml@embed.me.uk>
Subject: rk3399_dmc - anybody has it working?
Message-ID: <7cec9a61-b131-52e5-0d6a-e8223d5724bd@embed.me.uk>
Date: Fri, 19 Jun 2020 11:16:18 +0100
MIME-Version: 1.0
Content-Language: en-US-large
X-Virus-Scanned: clamav-milter 0.102.3 at c03mi01
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_031629_435875_B6BDD5E5 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Phillip Karls <prkarls@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 gael.portay@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi all,

Has anybody had any success in enabling the rk3399_dmc devfreq driver.
I've been hacking on it for a few days now with very limited success.

Our board has single channel lpddr4 which can run stable at either
400/800 MHz when set from the u-boot rk3399 sdram driver.

I've tried numerous combinations such as:

1) mainline u-boot v2020.07-rc4 TPL (RAM init)/SPL+proper + mainline ATF
+ linux mainline 5.5.8

This locks up when attempting to set the ddr clock rate at this point:

		/* PHY_LOW_FREQ_SEL */
		/* DENALI_PHY_913 1bit offset_0 */
		if (timing_config->freq > 400)
			mmio_clrbits_32(PHY_REG(i, 913), 1);
		else
			mmio_setbits_32(PHY_REG(i, 913), 1);

https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/rockchip/rk3399/drivers/dram/dfs.c#L1521

2) rockchip DDR init + mainline uboot SPL+proper + mainline ATF + linux
mainline 5.5.8

This locks up at the same point as above.

3) rockchip DDR init + mainline uboot SPL+proper + rockchip binary ATF +
linux mainline 5.5.8

This manages to set the rate but then instantly crashes the system,
probably something to do with ram config options in the reconfiguration
stage, but I have no view to this as the ATF is proprietary.

If anybody has any documentation on this, or could point me in the
direction of someone who does have documentation that would help a lot.
Any war stories for others who have this working would also be
appreciated, there have been some changes to this code fairly recently,
so even though there are no current users in kernel, I assume someone
somewhere has this working?

Regards,
Jack.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
