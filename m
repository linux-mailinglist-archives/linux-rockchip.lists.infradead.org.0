Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EAE15123C
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Feb 2020 23:11:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PU7el51ElG0ClkIwbtgRYyJKqpThaTd05B6pDU+TtY=; b=iWePcG4VmlWZSV
	nSciAP4/aUfjFs8wpwQKROIIL2nHvu+XavfKFzLD9Ghglgtm6RrAlxOdMQFc2PwmJkUPf7rgprZVI
	suiUXxsXYL2C/GMZjeNCSERXlu/u8bhHbeq6aKVP2BfzUCxIrK9NpdQA92sMwXMnZQnlbTNvzC+63
	u7Ln3lPtZf0docST+lyL8Tyl0daUUy5mAc2OfT3cKq4TLG6RIlx3cjzs2979Xdt/xCqbfNHHYG9Fe
	SvpYaDhsjVGwjunGg2WyKJQH/iiCaR/YQL2e2nhBDT7zOH3Msx3NOu0sAAYaIPUAvOKb95JxIXk//
	j2+NTcG6hQ/fCt3S4UTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyjw0-0000bv-7k; Mon, 03 Feb 2020 22:11:12 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyjvw-0000bV-Uz
 for linux-rockchip@lists.infradead.org; Mon, 03 Feb 2020 22:11:10 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48BMTy5p1zz1rTY6;
 Mon,  3 Feb 2020 23:11:02 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48BMTy4PSJz1qvPX;
 Mon,  3 Feb 2020 23:11:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id QcbZ5WznnUAi; Mon,  3 Feb 2020 23:11:01 +0100 (CET)
X-Auth-Info: 9CL3Mta21wPSRN8StP83iuwGPMrjDSJPfI5CnDr+BBA=
Received: from crub (pD95F1BAA.dip0.t-ipconnect.de [217.95.27.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon,  3 Feb 2020 23:11:01 +0100 (CET)
Date: Mon, 3 Feb 2020 23:10:55 +0100
From: Anatolij Gustschin <agust@denx.de>
To: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH 4/4] rockchip: Enable HDMI output on rk3399 board w/ HDMI
Message-ID: <20200203231055.0a3732b6@crub>
In-Reply-To: <20200203144708.GK13379@bill-the-cat>
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
 <20200123162845.10651-5-jagan@amarulasolutions.com>
 <20200124152735.GR26536@bill-the-cat>
 <CAMty3ZBQ_mRY4ojo_4iHUzup2tD-FO6ZmskwJyXskg4O4iHz+Q@mail.gmail.com>
 <20200203144708.GK13379@bill-the-cat>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_141109_148281_7625F967 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 3 Feb 2020 09:47:08 -0500
Tom Rini trini@konsulko.com wrote:
... 
> > yes, this evb board config is common across most of the rk3399
> > defconfig boards. this patch enable hdmi on few rk3399 boards all use
> > same config file, evb_rk3399.h  
> 
> Yes, the ROCKCHIP_DEVICE_SETTINGS part makes sense, but the rest looks
> very much like part of we need to rework the commit I mentioned.  I
> don't object to this going in as-is.  Anatolij, how goes the rework of
> things however?  I do want to see that get in sooner rather than later
> so we can sort out other regressions from just a lack of CONFIG options
> being enabled.  Thanks!

A patch [1] for this is under build testing.

[1] http://patchwork.ozlabs.org/patch/1233033

--
Anatolij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
