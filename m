Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0604A836
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 19:23:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLWSCSuR++rk/d8UifwgUqE8aV7LC9fMmsRhZ2PxjS8=; b=dyJyzyC9Hd6Ec0
	IL3/sjI6syyoLYOqhITxIPLizx9FYunqVDvvTxK8OrN03pUeAMfMASKFMyW/xXLyajKR5VehtQxz0
	k7JSp/dXL2q6G0j7l3z3I5Hekrzth6UkvHOyUwbSfPy4QhXq+KUTmty44FvfW18VOUFP05O0Xiarb
	iZwaDmKphbPbHmiosLIEdnOHpBE1ShlXtWbzoG5gW09qb7vHa+d11UvnZ9cvDxe2/QOPk3y6Un11v
	+j0bc/CcCWgyNe5N7omM0mL1nlEK1MPMAVVpvw+hMTsZ2E0mriafUsq2iNBFUbaRVUcRrWFE1NVip
	cbiFNioYX1Oy3cxqVx0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdHpb-0006hX-V2; Tue, 18 Jun 2019 17:23:39 +0000
Received: from mailoutvs63.siol.net ([185.57.226.254] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdHpX-0006Kf-8E
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 17:23:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 1EA4E5203EB;
 Tue, 18 Jun 2019 19:23:22 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id SvDg82OCXHri; Tue, 18 Jun 2019 19:23:21 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id A4E9F5223EF;
 Tue, 18 Jun 2019 19:23:21 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id 76FF65203EB;
 Tue, 18 Jun 2019 19:23:18 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] drm/bridge/synopsys: dw-hdmi: Handle audio for more clock
 rates
Date: Tue, 18 Jun 2019 19:23:18 +0200
Message-ID: <6219398.I55JWXAmVF@jernej-laptop>
In-Reply-To: <20190617235558.64571-1-dianders@chromium.org>
References: <20190617235558.64571-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_102335_460856_FD982410 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.254 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 David Airlie <airlied@linux.ie>, jonas@kwiboo.se, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, narmstrong@baylibre.com,
 Andrzej Hajda <a.hajda@samsung.com>, seanpaul@chromium.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, dgreid@chromium.org,
 Zheng Yang <zhengyang@rock-chips.com>, Sam Ravnborg <sam@ravnborg.org>,
 Thomas Gleixner <tglx@linutronix.de>, cychiang@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi!

Dne torek, 18. junij 2019 ob 01:55:58 CEST je Douglas Anderson napisal(a):
> Let's add some better support for HDMI audio to dw_hdmi.
> Specifically:
> 
> 1. For 44.1 kHz audio the old code made the assumption that an N of
> 6272 was right most of the time.  That wasn't true and the new table
> should give better 44.1 kHz audio for many more rates.
> 
> 2. The new table has values from the HDMI spec for 297 MHz and 594
> MHz.
> 
> 3. There is now code to try to come up with a more idea N/CTS for
> clock rates that aren't in the table.  This code is a bit slow because
> it iterates over every possible value of N and picks the best one, but
> it should make a good fallback.
> 
> 4. The new code allows for platforms that know they make a clock rate
> slightly differently to pick different N/CTS values.  For instance on
> rk3288 we can make 25,176,471 Hz instead of 25,174,825.1748... Hz
> (25.2 MHz / 1.001).  A future patch to the rk3288 platform code could
> enable support for this clock rate and specify the N/CTS that would be
> ideal.
> 
> NOTE: the oddest part of this patch comes about because computing the
> ideal N/CTS means knowing the _exact_ clock rate, not a rounded
> version of it.  The drm framework makes this harder by rounding rates
> to kHz, but even if it didn't there might be cases where the ideal
> rate could only be calculated if we knew the real (non-integral) rate.
> This means that in cases where we know (or believe) that the true rate
> is something other than the rate we are told by drm.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Which bus is used for audio transfer on your device? If it is I2S, which is 
commonly used, then please be aware of this patch:
https://lists.freedesktop.org/archives/dri-devel/2019-June/221539.html

It avoids exact N/CTS calculation by enabling auto detection. It is well 
tested on multiple SoCs from Allwinner, Amlogic and Rockchip.

Best regards,
Jernej



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
