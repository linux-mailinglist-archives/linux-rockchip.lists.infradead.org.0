Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B84474D1
	for <lists+linux-rockchip@lfdr.de>; Sun, 16 Jun 2019 15:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cv26pUlzqkf+KJITq6CygB9udhKmNYeWxSBwpWcyTHk=; b=u6Lm6lWmJoUujp
	HYfH2in0JEZfM8aGN25i4rikuHzKv2Pg8mEcP4zdjNaeNbwTxFVaHp66R5POJkT8B65hlaTydYXom
	BpiMxCtzVaUNU/j6JL6V1KH00CNBqiJtRl/7mKsZltl1BbCi0rjexRYDhg/LpIfnsdqVG6YtsJFh5
	+eqbkUrvIlP1zClN004l7hVRzRg35/UKVndaJyOTwCzi72IUDR6thncgC9N/Ah0J1PvT3v6H3qnwG
	ptVa2oBzkiQoLYsomURlqQwh0jEw1GdxvQtYsOItyMmAVc8Dvk7qIxMANufH/F+v1wGy1SPnUdAts
	iJUSbmDUyuCfA5H8e+5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcVPi-0000nE-VL; Sun, 16 Jun 2019 13:41:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcVPf-0000mu-3K; Sun, 16 Jun 2019 13:41:40 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hcVPP-0006LO-9I; Sun, 16 Jun 2019 15:41:23 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/2] drm/rockchip: Properly adjust to a true clock in
 adjusted_mode
Date: Sun, 16 Jun 2019 15:41:22 +0200
Message-ID: <2111307.tjTOxoAehH@diego>
In-Reply-To: <20190614224730.98622-1-dianders@chromium.org>
References: <20190614224730.98622-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_064139_293546_3A7A928A 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
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
Cc: David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 urjaman@gmail.com, linux-rockchip@lists.infradead.org, seanpaul@chromium.org,
 Daniel Vetter <daniel@ffwll.ch>, Yakir Yang <ykk@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Samstag, 15. Juni 2019, 00:47:29 CEST schrieb Douglas Anderson:
> When fixing up the clock in vop_crtc_mode_fixup() we're not doing it
> quite correctly.  Specifically if we've got the true clock 266666667 Hz,
> we'll perform this calculation:
>    266666667 / 1000 => 266666
> 
> Later when we try to set the clock we'll do clk_set_rate(266666 *
> 1000).  The common clock framework won't actually pick the proper clock
> in this case since it always wants clocks <= the specified one.
> 
> Let's solve this by using DIV_ROUND_UP.
> 
> Fixes: b59b8de31497 ("drm/rockchip: return a true clock rate to adjusted_mode")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Reviewed-by: Yakir Yang <ykk@rock-chips.com>

I gave both patches a testrun on rk3288, rk3328 and rk3399 and
applied them to drm-misc-next thereafter


Thanks
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
