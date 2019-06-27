Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69573584B0
	for <lists+linux-rockchip@lfdr.de>; Thu, 27 Jun 2019 16:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjuvhtLjGVSKvJVFYheAWjOixSPKGUgqUBcxTKgHa4Y=; b=pDTS0S6bezAeFo
	POQqhbK45B2evAz8P0NHFHOKVNKA6bPyqrDA1Gu2yuPFkUvZ9GxMcaKq3nrpnx/261h+2RxbYD4PR
	h2Qp3EvGUzoMznYVC52CnxbmBICRoUqmrptX9fRplvuPVqzw6pA+WzwsT8EShlvg/vJpkopJQrwJ1
	mTfrFxIkCIgcwUTUzxgu3Npdn8x+6gjBmjCElsLUQUeynSfQkFvS9ZQJ+REClz2+GKT1YYk7URXfy
	qXTgjK+N0Tg9GIwmtHfc5GprrqtEgI8n0tza80c2e6qxY+dqpOtZlnR7p8YWnIEKSYGbaSDLug7cc
	vmULm1Flch583XjyrP1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgVcT-0000Yg-28; Thu, 27 Jun 2019 14:43:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgVcP-0000YG-Nj
 for linux-rockchip@lists.infradead.org; Thu, 27 Jun 2019 14:43:23 +0000
Received: from wf0413.dip.tu-dresden.de ([141.76.181.157] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1hgVcJ-0008U6-AU; Thu, 27 Jun 2019 16:43:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vicente Bergas <vicencb@gmail.com>
Subject: Re: [PATCH v2] arm64: rockchip: dts: sapphire: Fix USB3 Type-C.
Date: Thu, 27 Jun 2019 16:43:14 +0200
Message-ID: <1797006.pDfq8pCYFf@phil>
In-Reply-To: <20190627131228.5223-1-vicencb@gmail.com>
References: <9087476.qcbMaj4rIx@phil> <20190627131228.5223-1-vicencb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_074321_927290_1C09D51F 
X-CRM114-Status: GOOD (  11.09  )
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 William wu <wulf@rock-chips.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 27. Juni 2019, 15:12:28 CEST schrieb Vicente Bergas:
> Before this patch, the Type-C port on the Sapphire board is dead.
> If setting the 'regulator-always-on' property to 'vcc5v0_typec0'
> then the port works for about 4 seconds at start-up. This is a
> sample trace with a memory stick plugged in:
> 1.- The memory stick LED lights on and kernel reports:
> [    4.782999] scsi 0:0:0:0: Direct-Access USB DISK PMAP PQ: 0 ANSI: 4
> [    5.904580] sd 0:0:0:0: [sdb] 3913344 512-byte logical blocks: (2.00 GB/1.87 GiB)
> [    5.906860] sd 0:0:0:0: [sdb] Write Protect is off
> [    5.908973] sd 0:0:0:0: [sdb] Mode Sense: 23 00 00 00
> [    5.909122] sd 0:0:0:0: [sdb] No Caching mode page found
> [    5.911214] sd 0:0:0:0: [sdb] Assuming drive cache: write through
> [    5.951585]  sdb: sdb1
> [    5.954816] sd 0:0:0:0: [sdb] Attached SCSI removable disk
> 2.- 4 seconds later the memory stick LED lights off and kernel reports:
> [    9.082822] phy phy-ff770000.syscon:usb2-phy@e450.2: charger = USB_DCP_CHARGER
> 3.- After a minute the kernel reports:
> [   71.666761] usb 5-1: USB disconnect, device number 2
> It has been checked that, although the LED is off, VBUS is present.
> 
> If, instead, the dr_mode is changed to host and the phy-supply changed
> accordingly, then it works. It has only been tested in host mode.
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>

applied for 5.3

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
