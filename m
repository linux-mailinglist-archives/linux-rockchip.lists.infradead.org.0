Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A1126008
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 May 2019 11:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeT97RSI6RU2JtBYG0t437yXLmVqiSP1mdZcicNV2AM=; b=BdVyWHfupChCnw
	ggcGU1VAy1sgVpryCFYPQFFKb6UEdkhXpVaPYF9XrPZ2WQpjpfEhuauKw6BOceN/JrN7C9n8M4iyX
	NPwUl2WfW/EET4yLGwZKipBzv8S5+l0dI9Yyno534+YTzcV8Tof4icC1K+BKM6OBxgFAf2hcBEhgn
	SWZqbuc1iuuES1dEhhC1ZO+A0DNuQMjOepj6pky4nMGW1MTwwwqzi7sNzhjfPLtRy1CRrtfd97roq
	meTKO8IfNP1Ba4NI6GX4JteWAt/4vmIEeeLHGiSaI//OFojpREaf5wjsUvvHNuqvOnCR066hBkwRk
	IgniaTyUoK79VSvKbYfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTN8m-0003BB-Hg; Wed, 22 May 2019 09:02:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTN8c-00034g-Uf; Wed, 22 May 2019 09:02:21 +0000
Received: from we0524.dip.tu-dresden.de ([141.76.178.12] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hTN8Z-0008FU-O8; Wed, 22 May 2019 11:02:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: Add #cooling-cells entry for
 rk3288 GPU
Date: Wed, 22 May 2019 11:02:14 +0200
Message-ID: <23265091.NWmblD6evz@phil>
In-Reply-To: <20190516172510.181473-2-mka@chromium.org>
References: <20190516172510.181473-1-mka@chromium.org>
 <20190516172510.181473-2-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_020219_136398_DDA84D20 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 16. Mai 2019, 19:25:09 CEST schrieb Matthias Kaehlcke:
> The Mali GPU of the rk3288 can be used as cooling device, add
> a #cooling-cells entry for it.
> 
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

applied patches 2+3 for 5.3

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
