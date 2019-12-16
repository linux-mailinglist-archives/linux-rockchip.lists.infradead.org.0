Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 380B91219E9
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 20:29:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlugdUR3Sb1hMfXexRknWDyiXc7vytt4LTMNJN0fxrY=; b=FA0f0mBZuBdWT2
	8W61IycBaPei4GLbE2v7V4BGnKBN11vNsCRjtZLlsrDGRfOK3xgi0Xb+c6x4Zt/WSAa15OBYlpMS7
	IZ0B1sC3tCn0JRxg8/OFSB3vCWd9UP3faEKugDi+KAeY0mLHvg5jhRQCEd2va98FA3KtXT6AEEU+y
	tOkL8i8I6XKAC9XhBygpR0x2wJSer0rY6at/QpqzcP0ar7WCcAmY5defOzaqcPoRi8Uw+xtnpGHH7
	qffR425FPGAMBIvhfqz2dvp08glcAOFwrjxPPWIg5gX3gQIg1zGI+Cv06Xl5dapzweYJWAJA2/94R
	cv9dJiyhzFl8RRoVF2Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igw3U-0006mF-Hi; Mon, 16 Dec 2019 19:29:20 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igw3Q-0006kX-FF
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 19:29:17 +0000
Received: by mail-vs1-xe42.google.com with SMTP id t12so4837637vso.13
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 11:29:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x8Xzx0seGNgO73hnwCUt78Q5JjYJnfBh8nshT5JtITU=;
 b=FJW4xgqSh5a/O2CUVNjPYRBXY74pPDy4QIoSGisOiMeSnHhVx4x7WmsEYq/C1aARh2
 o25dmJ5gkBc34HgKuBdX6vJoKfJ7vPb7WZLgliAToedhYlNr8nt1JngCb8UzCP1kFKmI
 QjeLH+Cs8rWWuVmAb72lCvAPcNVii/xoEU63s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x8Xzx0seGNgO73hnwCUt78Q5JjYJnfBh8nshT5JtITU=;
 b=W2oXTeHT8j8nr3Qmg8VgGJAbmVSDqw+0n+meRt+ARy2k2nsWbonOEFDqlHOwx0afN3
 ujZRgUgoW8l0D8R1EjJnRz+ZE+8PtwdJ2oZp/Pnltryyi9T63WLef17GWsF9eUmfzFxC
 s5/TCR6dG/BQr7elP1an44eo7DSPMa2B77ZfArssFCU64G6Seluy2pdTT/4Dh+soV4Ze
 9jlZsdklvLmgde0U90EoUBRAhcH5/pzSD6RfjUgnLww460gYkWf21TC5jVW/cAg7gyEd
 ur9syFZnbS04JDVSvBuZ3lEnDKqN6YxjVzsN1K8bAdZXYNlzItAfIJlIYx+ZSA7aBzaf
 k7FQ==
X-Gm-Message-State: APjAAAX7+10OEC/iAWy99qRoTeloBpCouJ+TqpDD4ZlqXMB6BNl9ZLKZ
 K2oOdjFs9dFrbhZo8h1jQMcv4eU1XxKhcPqHBPipwQ==
X-Google-Smtp-Source: APXvYqzq/Wjfn9HsXPu0Kmf0tLhdL8GHb4eZwK2nmAxrayk1ebVFL1ajC+pqXAwYewI3IgNW08qyvQE/D6dLOQc1TnA=
X-Received: by 2002:a67:d007:: with SMTP id r7mr349749vsi.93.1576524554661;
 Mon, 16 Dec 2019 11:29:14 -0800 (PST)
MIME-Version: 1.0
References: <20191127223909.253873-1-abhishekpandit@chromium.org>
 <20191127223909.253873-2-abhishekpandit@chromium.org>
 <4093066.yl7jOIBBcd@phil>
In-Reply-To: <4093066.yl7jOIBBcd@phil>
From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Date: Mon, 16 Dec 2019 11:29:03 -0800
Message-ID: <CANFp7mV61sjQ2sy9hAtVQ5hUNmwRbytL+sDPe5eAHP50TwiMfQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] ARM: dts: rockchip: Add brcm bluetooth for
 rk3288-veyron
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_112916_532544_24FDD249 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Douglas Anderson <dianders@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 Bluez mailing list <linux-bluetooth@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Sorry, I was out last week and didn't get a chance to respond.

Thanks for following up on this. Happy to see this merged. :)

On Tue, Dec 10, 2019 at 2:32 PM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Am Mittwoch, 27. November 2019, 23:39:09 CET schrieb Abhishek Pandit-Subedi:
> > This enables the Broadcom uart bluetooth driver on uart0 and gives it
> > ownership of its gpios. In order to use this, you must enable the
> > following kconfig options:
> > - CONFIG_BT_HCIUART_BCM
> > - CONFIG_SERIAL_DEV
> >
> > This is applicable to rk3288-veyron series boards that use the bcm43540
> > wifi+bt chips.
> >
> > As part of this change, also refactor the pinctrl across the various
> > boards. All the boards using broadcom bluetooth shouldn't touch the
> > bt_dev_wake pin.
> >
> > Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
>
> applied for 5.6 with Matthias' Rb.
>
> Thanks
> Heiko
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
