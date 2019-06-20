Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA0B4CDB6
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 14:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DeSfUMpyOy2NXpp3bH0gY3LwGXm21wqin54Bcb9Pvr8=; b=X+6vneb7UhOH2l
	d2E2PDjiwKl1CKsTPKxv9109fap0+lvIsM85TYSH7tq1MhUr7BqfaedtbtwyDq3Xy0BmaG5qON+pn
	ZGJ+wDYoA7qmQjgi0/G+pNd/lC83gWWw6goMFXlZ60Cw47TXhj1T7dN47AwFFJxGKp49/OjgPOa6+
	LKNoYBJYk0/ApmPIMtQ8l2NHmX3wLnUk44NDy7Q97drlqAixA8mvSMBuktiXgZZTtY46pjp+D5Cbw
	8Ouk316Z9AmMphLWylv4ypFnmRumscYj60VwLLMJTs8/1LPUD1UYUZELpPQjK2B3IRNKkp7PHZPXE
	T2+CZvD4c9BXVSf9w1GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdwB0-00011z-3E; Thu, 20 Jun 2019 12:28:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdwAx-00011T-0T; Thu, 20 Jun 2019 12:28:24 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hdwAp-0003Td-BK; Thu, 20 Jun 2019 14:28:15 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 04/10] ARM: dts: rockchip: add startup delay to
 rk3288-veyron panel-regulators
Date: Thu, 20 Jun 2019 14:28:14 +0200
Message-ID: <2226970.BAPq4liE1j@diego>
In-Reply-To: <CAD=FV=U23+5pcze=6zDTx0dAYF8HTmbR8s8zem93VhgYgaZeGQ@mail.gmail.com>
References: <1458265206-15733-1-git-send-email-heiko@sntech.de>
 <1458265206-15733-5-git-send-email-heiko@sntech.de>
 <CAD=FV=U23+5pcze=6zDTx0dAYF8HTmbR8s8zem93VhgYgaZeGQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_052823_205903_DDA1DF20 
X-CRM114-Status: GOOD (  19.02  )
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
Cc: LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Yakir Yang <ykk@rock-chips.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Doug,

Am Donnerstag, 20. Juni 2019, 03:27:55 CEST schrieb Doug Anderson:
> On Wed, Fri, 18 Mar 2016 Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > The panels need a bit of time to actually turn on. If this isn't
> > observed, this results in problems when trying talk to the panels
> > and thus produces detection errors. 100ms seem to be a safe value
> > for the time being.
> >
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> >  arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 1 +
> >  arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 1 +
> >  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 1 +
> >  arch/arm/boot/dts/rk3288-veyron-speedy.dts | 1 +
> >  4 files changed, 4 insertions(+)
> 
> I know it was 3 years ago, but any idea how to reproduce the problems
> you were seeing without this patch?  I believe the downstream kernel
> never had any delay like this and I'm not aware of any issues.
>
> I wonder if the need for this extra 100 ms delay is no longer there
> now that we have:
> 
> 3157694d8c7f pwm-backlight: Add support for PWM delays proprieties.
> 5fb5caee92ba pwm-backlight: Enable/disable the PWM before/after LCD
> enable toggle.
> 6d5922dd0d60 ARM: dts: rockchip: set PWM delay backlight settings for Veyron

I just did a non-scientific test on my jerry+minnie and yes, simply
reverting that patch does not seem to affect display bringup and I still
get a prompt.

So I guess we could just revert that patch in light of the changes.
[patches welcome ;-) ]

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
