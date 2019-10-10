Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B972CD335B
	for <lists+linux-rockchip@lfdr.de>; Thu, 10 Oct 2019 23:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aqj2tO2Fv30DHwcypGHyt8GcyggmmJ9jR4lyl+ojETU=; b=NZNBzgW3qs1pez
	8SWAwX4vMX9KpAjA8rr7p5ub/ZfDXP1bQEoPFqZ8TS59qiFmCK7yRW6q9EJ27hMjvOG5P7aZaulw2
	dhnUkHNTAch04ko14KiR2XJN1zDgdX5q6UpmlWmOlpAZYXLrVCv0xEKy2UvS7GQLfZjforqc+gMgg
	sc+xWZHSQewgYF//kfVitkrYmrC1hzpwbiCHOvHkd8ZoCYGP0K2Dz/w1UrOCH1qSLfpV21fNt2TSt
	0jSRHxZ9Fr4QjX+j6ibC3C5L5bsmmTwFYPfinIJiiA703TjeKiO/bO8VwOG6j9iXBtMFnYyYBTcqK
	Uw3gu+66voKbJPfW7q9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfvC-0005Fb-DN; Thu, 10 Oct 2019 21:24:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfud-0004rs-E9; Thu, 10 Oct 2019 21:24:02 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iIfuX-000786-Im; Thu, 10 Oct 2019 23:23:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v2] ARM: dts: rockchip: Use interpolated brightness tables
 for veyron
Date: Thu, 10 Oct 2019 23:23:48 +0200
Message-ID: <3947291.Wl2KGcTfji@phil>
In-Reply-To: <20191003094137.v2.1.Ic9fd698810ea569c465350154da40b85d24f805b@changeid>
References: <20191003094137.v2.1.Ic9fd698810ea569c465350154da40b85d24f805b@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_142355_737258_6EF862C1 
X-CRM114-Status: GOOD (  11.65  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 3. Oktober 2019, 18:41:52 CEST schrieb Matthias Kaehlcke:
> Use interpolated brightness tables (added by commit 573fe6d1c25
> ("backlight: pwm_bl: Linear interpolation between
> brightness-levels") for veyron, instead of specifying every single
> step. Some devices/panels have intervals that are smaller than
> the specified 'num-interpolated-steps', the driver interprets
> these intervals as a single step.
> 
> Another option would be to switch to a perceptual brightness curve
> (CIE 1931), with the caveat that it would change the behavior of
> the backlight. Also the concept of a minimum brightness level is
> currently not supported for CIE 1931 curves.
> 
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>

applied for 5.5

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
