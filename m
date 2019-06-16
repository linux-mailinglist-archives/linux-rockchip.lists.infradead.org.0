Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C5B47594
	for <lists+linux-rockchip@lfdr.de>; Sun, 16 Jun 2019 17:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCP2Wh5IaQyqUvZqV8HvBt5c7pND2YgOuJffCQQbQEQ=; b=PxlRZk6AluRwWU
	HtcKdkeGcRW2L0yGsGLKrfPXNOnPA68RTwvw44hP4Q8X3kc8XtGZHj8tUDTH28K9eoq5NaXcpunYn
	yMsmtK7Yppa2g19mC/itV191Vzt/P37UUXa6Rp4GoGV9sPcMqm5CY429S8osFEqbtq+18MGR0Mv8L
	vxnG3pITI8LFJGYItz0GJn2lQyNH70zwUiY5wb1qAr6pqB0ngGeyxMm6sQcqJP/AwZ/CKCjlEFWrG
	mSP+2sjyPVMvr7KW+QtgSW2ws41Xg5l/wDba/JMwd/49qZU+FUNLK+FGtyPo67YZrUx8jSIg1vlFT
	0uGLuDyAjWLhP6x9Qa6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcXIQ-0003iw-6t; Sun, 16 Jun 2019 15:42:18 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcXI9-0003XQ-Ji; Sun, 16 Jun 2019 15:42:03 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 82D3D801F5; Sun, 16 Jun 2019 17:41:43 +0200 (CEST)
Date: Sun, 16 Jun 2019 17:41:43 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: set PWM delay backlight
 settings for Minnie"
Message-ID: <20190616154143.GA28583@atrey.karlin.mff.cuni.cz>
References: <20190614224533.169881-1-mka@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614224533.169881-1-mka@chromium.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_084201_807740_FE8ED504 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi!

> This reverts commit 288ceb85b505c19abe1895df068dda5ed20cf482.
> 
> According to the commit message the AUO B101EAN01 panel on minnie
> requires a PWM delay of 200 ms, however this is not what the
> datasheet says. The datasheet mentions a *max* delay of 200 ms
> for T2 ("delay from LCDVDD to black video generation") and T3
> ("delay from LCDVDD to HPD high"), which aren't related to the
> PWM. The backlight power sequence does not specify min/max
> constraints for T15 (time from PWM on to BL enable) or T16
> (time from BL disable to PWM off).
> 
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Enric, if you think I misinterpreted the datasheet please holler!

Was this tested? Was previous patch tested?

Does patch being reverted actually break anything? If so, cc stable?

								Pavel
								
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
