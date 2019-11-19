Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB21102310
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 12:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iToTqZ5OCy1dQ2eczdHRuaPgBJ7NnxLnCnR3mLKdGTk=; b=HNg0xiVwGYIXv4
	D7+XjRQsvdHlK5qe53TYnTVnq/8Ha3Teqt5pUb/785x7HmiU45KH08oP+YpSRfUA+BaFythV/TxWe
	qoVqUcDebZkuAGonMpWPScg4JfHnvuze+qSFDUHkMuuL3URVu4mnAWCWQo76w4+a6Qq11bbH/1QzG
	t3NiGJA4rVm+Lw+LUXH8gufeGkzzXk9+7pm83DYJ9GZ8oSr4bOOAURXBx9FYOSW6XCYpV3Pcb95Xs
	bI3nnaNVTK7V2GtPCJuElSsdK+RGlPbEcxzV+s6at6feReCvCakdH3KYZwbEN8LoneWZti4Ab2J3B
	1DKSNixRtpZRfCBpWAfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX1mQ-0001rL-C3; Tue, 19 Nov 2019 11:34:46 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX1mM-0001pm-7m
 for linux-rockchip@lists.infradead.org; Tue, 19 Nov 2019 11:34:44 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 47HNyX6Hbwz1qqtQ;
 Tue, 19 Nov 2019 12:34:28 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 47HNyX5S3dz1qt2t;
 Tue, 19 Nov 2019 12:34:28 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 7xrvqHZ5ebVv; Tue, 19 Nov 2019 12:34:27 +0100 (CET)
X-Auth-Info: 43Kth6Rpbqx4qqBSGx6resovMC9SWT3xstkUaGOsfB0=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 19 Nov 2019 12:34:27 +0100 (CET)
Subject: Re: [PATCH v2 07/10] usb: dwc3: Add phy interface for dwc3_uboot
To: Jagan Teki <jagan@amarulasolutions.com>,
 Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
 <20191119082623.6165-8-jagan@amarulasolutions.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <d0a52200-e247-44d8-7771-08ec42b5e6be@denx.de>
Date: Tue, 19 Nov 2019 12:13:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191119082623.6165-8-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_033442_427835_FD8C399D 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: u-boot@lists.denx.de, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 11/19/19 9:26 AM, Jagan Teki wrote:
> U-Boot has two different variants of dwc3 initializations,
> - with dm variant gadget, so the respective dm driver would
>   call the dwc3_init in core.
> - with non-dm variant gadget, so the usage board file would
>   call dwc3_uboot_init in core.
> 
> The driver probe would handle all respective gadget properties
> including phy interface via phy_type property and then trigger
> dwc3_init for dm-variant gadgets.
> 
> So, to support the phy interface for non-dm variant gadgets,
> the better option is dwc3_uboot_init since there is no
> dedicated controller for non-dm variant gadgets.
> 
> This patch support for adding phy interface like 8/16-bit UTMI+
> code for dwc3_uboot.
> 
> This change used Linux phy.h enum list, to make proper code
> compatibility.
> 
> Cc: Marek Vasut <marex@denx.de>
> Tested-by: Levin Du <djw@t-chip.com.cn>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Marek Vasut <marex@denx.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
