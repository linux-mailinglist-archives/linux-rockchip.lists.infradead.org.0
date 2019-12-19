Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFC2126EAA
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Dec 2019 21:21:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j/ek9qyD10ulXKwCuNlLjWlKyzkCf3nfAqIYwekM63o=; b=HbwLBW3LYGANMY
	/MOEd4NErEzfUBUL2G3P8Xaaqj3l7B/taX1uOKD4hWD0ipwBMG8ShEX8xdOotHKbGG49WGSw7bHP6
	lHxUDF5jCr/1cI0HaScMgQjpUm6//ulqBN/h67PRwnzPQ6IMffirHd95A5c31EKt4AdivcZWQJLJp
	BawYKfDl0XISJ0AbRM4b84A/2OaUiwNHG8jg71/kvFkkpAtfZjpBBBliA0F7sb6x1djQcZsnLcIjw
	OCbUNHVYnoqO1Mww9MKxisix/qCc59oGV87dntTY2xFEV2l3Rtlusd3qyrxgYsZhL931D2PjvGUn9
	e5Y48n7a/CStz+9Dq7zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2Iq-0007qH-7Z; Thu, 19 Dec 2019 20:21:44 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2Ic-0007fE-VH; Thu, 19 Dec 2019 20:21:32 +0000
Received: by mail-ed1-f66.google.com with SMTP id r21so6158760edq.0;
 Thu, 19 Dec 2019 12:21:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GR1PmJOvhGpPpzVfO8kgGmz6p0Ok+BYanL+ypVYCuIo=;
 b=n4YrVpEBwbvFXgItQxDtiZzaSAn0IcEeyTe5ChiPeptQ1sjhYZArK5zn+4FyHHCWIi
 fuPFLtNQ/XKmDJqodPX5fl2EhFcNlbYW2rS+tl6m7Rpzsfe/xiApY0o0NcRCWZbyjQ3J
 r0A9IohjdlpRL7YOyzh4zS/3PLF2VQYjDnZzfWpJMVvMApYHNFYsHy/Qyx8wgDDppuRD
 41gbd66HCQb0A8Dsrv4k6sGWsbO4fH9xR6LgNnu67aBQT2lEqHTZMf4XzCJHxX08FqPP
 Mhs5CfCPzuKJb+h3r9dRHO55yJlw6a4DpyKfZre8vFkP5iSkqoPbC+l7zEdkY0seXQuP
 TW9Q==
X-Gm-Message-State: APjAAAWOoqXUm9ZTlb6IMutBEh8iR2HwLIwczVJ31ZFHfbFowJBhDxL4
 wPo52/bGHP3xriNjnHUvWO7dL0Yr
X-Google-Smtp-Source: APXvYqwZwMHJTRig+SXE0kz2DegMMU7qPuSgopAX7Pwr9Y8S6Q8VfZ+NYpDzWXBIncow4tB/gDtDLA==
X-Received: by 2002:a17:906:4a12:: with SMTP id
 w18mr11475789eju.321.1576786889413; 
 Thu, 19 Dec 2019 12:21:29 -0800 (PST)
Received: from kozik-lap ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id u25sm722974ejb.53.2019.12.19.12.21.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 19 Dec 2019 12:21:28 -0800 (PST)
Date: Thu, 19 Dec 2019 21:21:26 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH 8/9] ARM: dts: exynos: Replace deprecated property for
 Exynos bus and DMC
Message-ID: <20191219202126.GB21576@kozik-lap>
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055106epcas1p4c0f65bec74e53b38d95e984e146bf8b6@epcas1p4.samsung.com>
 <20191217055738.28445-9-cw00.choi@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217055738.28445-9-cw00.choi@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_122131_005670_CB95D1FB 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 a.swigon@samsung.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, myungjoo.ham@samsung.com,
 robh+dt@kernel.org, kgene@kernel.org, kyungmin.park@samsung.com,
 leonard.crestez@nxp.com, lukasz.luba@arm.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 02:57:37PM +0900, Chanwoo Choi wrote:
> Replace the property related to devfreq and devfreq-event device
> to remove the deprecated property name.
> - Replace 'devfreq' with 'exynos,parent-bus' property
>   for getting the parent devfreq device of exynos-bus.
> - Replace 'devfreq-events' with 'exynos,ppmu-device' property
>   for getting the devfreq-event device to monitor bus utilization.
> 
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  arch/arm/boot/dts/exynos3250-monk.dts         |  2 +-
>  arch/arm/boot/dts/exynos3250-rinato.dts       | 18 +++++-----
>  .../boot/dts/exynos4412-itop-scp-core.dtsi    | 16 ++++-----
>  arch/arm/boot/dts/exynos4412-midas.dtsi       | 18 +++++-----
>  .../boot/dts/exynos4412-odroid-common.dtsi    | 18 +++++-----
>  arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 34 +++++++++----------
>  6 files changed, 53 insertions(+), 53 deletions(-)
> 

It will have to wait till next release, after driver changes get
accepted.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
