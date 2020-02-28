Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31352173B25
	for <lists+linux-rockchip@lfdr.de>; Fri, 28 Feb 2020 16:15:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eiA7TAnP1FmUGV0ATfpXI4APu3jqsl0rKRNe+23Z/bc=; b=TpG0OZ13ONCPL/
	zUAfiY/KcxhHljhtjgEIQf8CEubvhUX34yZup88wJsjYuCta5iRpfQKG631rmQNGLQdrRz0BC7uVd
	KFm9/y87yJt7W6jdjgR9ZCZ8gQ+KgB0R7IuPwAWmBhiYQiwNi5X1fqfW8zV9V/u7axjeHZusfp/n3
	ZDvzVt+Cw4/0FcXWA5nN3T558Abl0OOZ/zLFOp9HEkvWY/D60A+y++/685UPYXtgyeJpN1h4Cdi0O
	IvoTDBKN1XOjZElfJiyBGWFOLjnK2LhPQtmPgl7aVAwWYWhPYJww5Dpdwng6eEpTlkHAoI2zrThph
	P/GOd4GaVr69aqwIUzbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hMo-0002AO-NO; Fri, 28 Feb 2020 15:15:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hMd-0001zp-2Y; Fri, 28 Feb 2020 15:15:44 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j7hMM-0006eU-6O; Fri, 28 Feb 2020 16:15:26 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
Date: Fri, 28 Feb 2020 16:15:25 +0100
Message-ID: <3144691.gaQQKPV42P@diego>
In-Reply-To: <37190f26-48aa-dcad-d4b1-8a534ba1360e@manjaro.org>
References: <20200227180630.166982-1-t.schramm@manjaro.org>
 <12370413.gKdrHkWbHd@diego>
 <37190f26-48aa-dcad-d4b1-8a534ba1360e@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_071543_274305_1D8BD4F9 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexis Ballier <aballier@gentoo.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 enric.balletbo@collabora.com, Andy Yan <andy.yan@rock-chips.com>,
 anarsoul@gmail.com, Matthias Kaehlcke <mka@chromium.org>,
 Vivek Unune <npcomplete13@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Tobias,

Am Freitag, 28. Februar 2020, 15:57:10 CET schrieb Tobias Schramm:
> thanks for the review. I'll implement the changes and send a v2.
> 
> >> +	 * of wakeup sources without disabling the whole key
> > Also can you explain the problem a bit? If there is a deficit in the input
> > subsystem regarding wakeup events, dt is normally not the place to work
> > around things [we're supposed to be OS independent]
> 
> The issue is that some users wanted to be able to control the wakeup
> functionality of the keys separately via sysfs. That does not seem to be
> possible when combining both keys into one gpio-keys node. A more
> detailed explanation of the issue can be found at [1].

ok ... but that is really strange, because looking at gpio-keys.c I see
it checking the individual button wakeup-property before setting
the irq-wake in gpio_keys_enable_wakeup() .

Ah, but I guess manually disabling/enabling wakeup via sysfs only
works for the whole device and all wakeup buttons.

In general this sounds more like a gpio-keys deficit, but in the end
we can keep the separate gpio-key nodes here, they don't violate any
dt-bindings ;-) .


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
