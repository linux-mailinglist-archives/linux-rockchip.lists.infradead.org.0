Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3949B1FB59
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 22:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iigz2+2S2y9R3L+BPD7G9v5n4xJP2MFjY1gNPxxhdBg=; b=Sw7VQu1qQrExsQ
	6QpPh2ANOlNaFdOFXRcs5BaaCeDO+5vwLeGim4lU7hg481yCrmli2KKtVbXSlVUtHTNAQK1llt3tY
	BFfiNr6cMxNRPz0XZUs4V3Rpn7scxidQPLs2zB8Dea9OZ3bbQCHckNr8eGXpzwVUTqt2Eip/5IrhM
	H7qqW4H3ZoN6f42lBYTkwXYBmmPOvwGD4hEt4QAD6ZCKKXR17EF82jPuIXmOoS/Zp5nK7ifZYe4/c
	mvpXRq6zqNgUF7uhiDzoIfbeGTuTmzFDabo1dYmkbB9P3t3z9ALHWedDJEHomV4uaiGpmbWVGKSUe
	RgTmDrlA/GoE8B76MOyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR08q-0007Wc-V8; Wed, 15 May 2019 20:04:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR08n-0007T8-FZ; Wed, 15 May 2019 20:04:43 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hR08h-0000bv-3f; Wed, 15 May 2019 22:04:35 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/2] drm/rockchip: dw_hdmi: Handle suspend/resume
Date: Wed, 15 May 2019 22:04:34 +0200
Message-ID: <16767939.RRcxLiLXmc@diego>
In-Reply-To: <20190502223808.185180-2-dianders@chromium.org>
References: <20190502223808.185180-1-dianders@chromium.org>
 <20190502223808.185180-2-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_130441_724426_B36BDAF6 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, mka@chromium.org,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 3. Mai 2019, 00:38:08 CEST schrieb Douglas Anderson:
> On Rockchip rk3288-based Chromebooks when you do a suspend/resume
> cycle:
> 
> 1. You lose the ability to detect an HDMI device being plugged in.
> 
> 2. If you're using the i2c bus built in to dw_hdmi then it stops
> working.
> 
> Let's call the core dw-hdmi's suspend/resume functions to restore
> things.
> 
> NOTE: in downstream Chrome OS (based on kernel 3.14) we used the
> "late/early" versions of suspend/resume because we found that the VOP
> was sometimes resuming before dw_hdmi and then calling into us before
> we were fully resumed.  For now I have gone back to the normal
> suspend/resume because I can't reproduce the problems.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
