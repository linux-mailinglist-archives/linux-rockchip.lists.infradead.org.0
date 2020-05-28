Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483911E63F8
	for <lists+linux-rockchip@lfdr.de>; Thu, 28 May 2020 16:30:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5KoZvHPzFbCLIVgrXAAgjM77SbpI0eqwWs+sXOhNQ5g=; b=MS3yoKAW0+f6Z5
	b9Dd20R/4wVRwFXMBGhTh3jv/wfnuKfZwWtKE5fTqmuQ/FdkCxjvFAYoVvT0zae3pGgLrA/gVIUUz
	UebSB6s+HMvuNjQHDYBbxZFadYkQtyxDZSlEB44Y5knD+dyQdrkXgCXGUiMjvf7kPIlDDikMVGkh+
	cfHg4wd8YuROB4gSdaX2R1wHWPsyHQa3tulzOy5woAzpHfCqtAEhYVLQOaYUGTFWsu8uUPV/o4JlJ
	6Yc7WbKEzJKbD6s9I5obx1tjWG52dknGJEhAvgChvGCIMompd3FTHzCePsT6HX4NllMi3KXARXE26
	nY4WGZ6MM5ltaE0NPSEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJXs-0001fu-EZ; Thu, 28 May 2020 14:30:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJXo-0000W3-BH
 for linux-rockchip@lists.infradead.org; Thu, 28 May 2020 14:30:05 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jeJXc-0002jG-AW; Thu, 28 May 2020 16:29:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH v6 13/16] driver: usb: drop legacy rockchip xhci driver
Date: Thu, 28 May 2020 16:29:51 +0200
Message-ID: <2039347.PpgexNvhO1@phil>
In-Reply-To: <20200526033435.20235-4-frank.wang@rock-chips.com>
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
 <20200526033435.20235-1-frank.wang@rock-chips.com>
 <20200526033435.20235-4-frank.wang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_073004_415287_0E43FAF1 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: marex@denx.de, bmeng.cn@gmail.com, linux-rockchip@lists.infradead.org,
 marek.belisko@gmail.com, sjg@chromium.org, jianing.ren@rock-chips.com,
 kever.yang@rock-chips.com, u-boot@lists.denx.de,
 klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com,
 william.wu@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 linux-amarula@amarulasolutions.com, wmc@rock-chips.com, chenjh@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 26. Mai 2020, 05:34:32 CEST schrieb Frank Wang:
> We have changed to use dwc3 generic driver for usb3.0 host, so the
> legacy Rockchip's xHCI driver is not needed, and drop it.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

this needs to be adapted for
commit f7ae49fc4f36 ("common: Drop log.h from common header")
which added a
	#include <log.h>
to xhci-rockchip.c


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
