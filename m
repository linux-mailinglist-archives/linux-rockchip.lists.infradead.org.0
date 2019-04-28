Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB02B6A3
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 22:28:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xZmA77wuUu2RB23dURxEt5jVXGNWnxZoYhqJd18Y8WE=; b=UuovHja5Hh7Xv/
	aNv7H96WmHBifMbqvBNluN0C5q9s6pr5kp0WeDdcvC9u9jwePuyDyETSLArskj8vWk8jphS8qIaqI
	KlBOtFYtb5yMtLGJLU4WKHHzX16ndaOS2u0EUIBquh8Ld0MvjY5HEei6Pgq82TLzUHImPmm8bTRmQ
	sfMdeXtA0QrTIXOk33ddoPF36YfU7vMpVifb7CyUqrPsZr3NGHjM80xVCLvCDlyRLILJLXS0rmtwX
	i8Y+xRwm3QqmI4880aSu6LGDvXdscOZL8MwxkqixPUqGn82ABDlDxefmxSqzOzoo8MkLta1GNttbN
	zTR98geU7avF6I600xZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqPC-0001ya-EG; Sun, 28 Apr 2019 20:28:10 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqIw-0002Oq-GN
 for linux-rockchip@lists.infradead.org; Sun, 28 Apr 2019 20:21:57 +0000
Received: by mail-lf1-x144.google.com with SMTP id k18so6193342lfj.13
 for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2019 13:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1RMmN8Y3ry5e3+uRd+v8T6sP4ZvK8Q6n5eXBmv0zFUE=;
 b=Dz/yhrcF0xmHCpk4NPQZbLGDADEoCKV8xHcmH2YSjWMk+T2nHqYxrx4WGAQdh+r9aZ
 58E6HoXG8Z7+4jydAPpA87K3IjjuxOI/urgTMYfopm1tIhh8spOeh59cIXHAbe/JYR+G
 dbn8gzrTTWwh6Iu9wf9J40P/EvbHAlH7YNLtQW/B0paZxru0mmqXQWJT/Fb95Bk6t6E/
 002VApExigCbUEASIFP8wMozt38gp9HRhlsxzPHZ7rw9zt8pEWfLf4DhPe1aPqRWd1Pb
 WBGm4B8tdmeB5b89LtylvKvcTckJ+tULF7wiDYOMxcUOUBhAHgbqSn+USoqS1b0+A4u+
 8UZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1RMmN8Y3ry5e3+uRd+v8T6sP4ZvK8Q6n5eXBmv0zFUE=;
 b=kOAVXL4VTV/mjFfnOVxtzOO+t8M2PVUEMV9HXL3IBm9w9ZdU3rcvXzMbTrxHQK6c+4
 bsVU8aj9r++NuvoQZHLOj42z4Z/vG1Q2Og2J7FK/J1VHbzlNkvMBHEZWj9CEw5jM80tC
 AG3uE2BOPiOZa35jmSpilZDde6BCliMGDBZPnjm1somw9r4G56OYIPhYc5LigJx5gI7R
 NODe/j9Bprfvd+52K9uYW9CxbzHW02uWM0ED7M8Cm87HzVrsCzJC3BJP1e6gRRSp6n4C
 uBzYXD8ptqzPLlPkqA0uQ298rQIjGDtxrVoBIujKj1nxTHD15KN24sVTB/0kGMjXTMQ2
 mMQg==
X-Gm-Message-State: APjAAAWQ0bFwxLE3IFAuyFssrdt2hmsbUKDloz7JSzAQ1gUBoHpDEiaf
 Pddci0cM4Wo/ckcamZ0ctGN3/tE1RZqn0w==
X-Google-Smtp-Source: APXvYqxYi/RG8uhH2nZfU1IlGKyKemJEiczvROU8a7HSe7ukspcmyiyzkNdf5fT2qiuZAUULsPuU7w==
X-Received: by 2002:a19:ec01:: with SMTP id b1mr9975862lfa.128.1556482900944; 
 Sun, 28 Apr 2019 13:21:40 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id a17sm6967240lfg.88.2019.04.28.13.21.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:21:39 -0700 (PDT)
Date: Sun, 28 Apr 2019 13:00:18 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL 1/5] Rockchip dts32 updates for 5.2 - round 2
Message-ID: <20190428200018.yi3k6lqz7xbpcte3@localhost>
References: <3379363.gjmLGbHmEH@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3379363.gjmLGbHmEH@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132143_029577_D4EA895D 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 07:57:03PM +0200, Heiko Stuebner wrote:
> Hi Arnd, Kevin Olof,
> 
> please find below and in the replies round2 of Rockchip devicetree updates
> targetted at 5.2. Again nothing major but a lot of attention for the rk3288
> and a lot of general updates - Please pull.
> 
> The devicetree updates (32+64 bit) go on top of the previous tags from
> round 1, while the other just go on top of 5.1-rc1 (or later of course).
> 
> Thanks
> Heiko
> 
> The following changes since commit 4b028ebd4e3d86c61161b3a937b746043006dcbe:
> 
>   ARM: dts: rockchip: enable vop0 and hdmi nodes to rk3066a-mk808 (2019-03-31 17:28:05 +0200)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-dts32-2
> 
> for you to fetch changes up to 356150e86d75653d1f679c6ef583144b26d0a686:
> 
>   ARM: dts: rockchip: vdd_gpu off in suspend for rk3288-veyron (2019-04-12 22:28:38 +0200)
> 
> ----------------------------------------------------------------
> Much love for rk3288 in general (power coefficients for the scheduler)
> and veyron chromeos devices in particular (regulators, suspend, cleanups)
> and bulk conversion of the remaining gpios to the helper constants denoting
> the iomux.

Merged, thanks!


-Olof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
