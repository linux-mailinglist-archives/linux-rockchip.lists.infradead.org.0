Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04980488F8
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 18:31:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ztinYDouMmIty48jEJtROBkJRveAuJFfaRqO132jOM=; b=Au6LKMslj2OVmv
	arfp/iaXSCDeN9IeyLNUMg0T++UJ6EqxbUzFoD5cSZAPgZjC74UFZIfbSYxXEPKBjrcRQnPm1XG6T
	gadnymM/grWGEHE/6TktObM4Sz7+/8HAUUC4FfM6AHFbfLOPW7qU/3lpLMpAVLLK0bKMjK5M0NGvu
	p5wasAY7dfRTa1gm71P9iuf5VuDxYxUMMIdC4mjc/a5LXHKMDUshK/l0LjnfI803w/pfbSkagS+ND
	xMsVXujbGcleoOp2ogpiCeUawbak/x7kO+yJOQxU3rqn5JanB5hQqL/6+2ieoAPZgH7v/ppfKaC+I
	/+unVr3+Dq/BSVFpv5UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuXK-0004pp-6U; Mon, 17 Jun 2019 16:31:14 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuWf-00042B-Bd
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 16:30:35 +0000
Received: by mail-pg1-x534.google.com with SMTP id k187so6117992pga.0
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 09:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MZrjut71NWNNaKlLd3kxdXdldXiQAJyc0Qxm4bxHoDY=;
 b=CPHtJ2By0lXch1LgQEpHWMooMYGBDG2ewjy5cFlf67lYX9MHcxSYLY29NJuImhdguf
 /+igoGJC4XV5ibOc1FOAUdO6E0/P1MSwn86hbG9Z79eHYo6+WNHqw75pV4imKh2vrtm9
 eBeLhPIORJTD+D/nevbhWZqjiS6LMYN8AQvCg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MZrjut71NWNNaKlLd3kxdXdldXiQAJyc0Qxm4bxHoDY=;
 b=QhV+zeKh/+opkuUh3es+xSNqq0Dos4rjt35G+Qo/9pQYmkTM6+fDRzc1WqnCN2//Av
 tnTz2obn2EHPIOK/mIEqEJalf3BB8I3vROk0Qvl8TuGMVLlnPMMVB3ek9TTCJXDvyDMG
 d/OlyGnT7Xc7RdVzVOValenKc4cWMDDnYc9UMJdEGYNZXcgM6JHqxkPV2luKt9ryXhQr
 ITEds5XGImCpal5ajp7dE774v4U73F1Z+KfN8f9L+Clx8CUGddTzlX4G8Cq1oxA5wsJ3
 jToPGCY8ePAP2MMIkN095t2MVvn50eD8wT+SaLODg6S+dqdSos0ZUP7VSlpbtjqkISYD
 bOWg==
X-Gm-Message-State: APjAAAXGWB1gDSLyVl6nK/+eZZgIH9Dnq6mF3Idv/Z9dbuxDAKD0aJ5i
 u7Zr5YN6E6mpwETOWwR3X9XRcg==
X-Google-Smtp-Source: APXvYqyeGb12otld5CDA+Wx17m4Ieywv4C5/6/QbfVQQ946V3lEKoBfvkyLivdI7EXj5RHu0cN6fug==
X-Received: by 2002:a17:90a:9289:: with SMTP id
 n9mr27273064pjo.35.1560789032483; 
 Mon, 17 Jun 2019 09:30:32 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id ci15sm8076407pjb.12.2019.06.17.09.30.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 09:30:32 -0700 (PDT)
Date: Mon, 17 Jun 2019 09:30:30 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: set PWM delay backlight
 settings for Minnie"
Message-ID: <20190617163030.GS137143@google.com>
References: <20190614224533.169881-1-mka@chromium.org>
 <20190616154143.GA28583@atrey.karlin.mff.cuni.cz>
 <c88619de-45f4-9ba7-cfdc-0cedb764f6f4@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c88619de-45f4-9ba7-cfdc-0cedb764f6f4@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_093033_472482_87988AF6 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:534 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Enric,

On Mon, Jun 17, 2019 at 12:08:25PM +0200, Enric Balletbo i Serra wrote:
> Hi,
> 
> On 16/6/19 17:41, Pavel Machek wrote:
> > Hi!
> > 
> >> This reverts commit 288ceb85b505c19abe1895df068dda5ed20cf482.
> >>
> >> According to the commit message the AUO B101EAN01 panel on minnie
> >> requires a PWM delay of 200 ms, however this is not what the
> >> datasheet says. The datasheet mentions a *max* delay of 200 ms
> >> for T2 ("delay from LCDVDD to black video generation") and T3
> >> ("delay from LCDVDD to HPD high"), which aren't related to the
> >> PWM. The backlight power sequence does not specify min/max
> >> constraints for T15 (time from PWM on to BL enable) or T16
> >> (time from BL disable to PWM off).
> >>
> 
> Hmm, clearly we are not looking at the same datasheet, because in the one I have
> I don't see any reference to T15/T16 or LCDVDD. And, I assume I am probably
> wrong because you might have better access to the specific panel specs for minnie.
> 
> I looked at my archive and the datasheet I have is similar to this [1]. In page
> 21, Section 6.5 Power ON/OFF Sequence, there are two delays T3 and T4, it is
> *min* time between the pwm signal and the bl_en and it is 200 ms. That's the
> delay the patch was adding.
> 
> [1] http://www.yslcd.com.tw/docs/product/B101EAN01.1.pdf
> 
> >> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> >> ---
> >> Enric, if you think I misinterpreted the datasheet please holler!
> > 
> > Was this tested? Was previous patch tested?
> > 
> 
> IIRC, It was tested measuring the backlight power on timing (although I am not
> sure if I tested this on minnie or another board with better access to the pins)
> 
> > Does patch being reverted actually break anything? If so, cc stable?
> > 
> > 								Pavel
> > 								
> > 
> 
> Probably will not break anything, I don't remember the reverted patch as a fix
> of any specific issue. IIRC it was more a fear to be out of specs but I'll not
> be surprised if the datasheet lies and this delay is not needed at all.

Indeed, we are looking at different datasheets. It turns out that
'B101EAN01' is an underspecification, minnie uses the 'B101EAN01.8'
(eDP interface), your datasheet describes the 'B101EAN01.1' (LVDS
interface).

> Matthias, are you reverting this to solve any problem?

With the patch there is a user perceptible delay between switching on
the LCD and the backlight. Not necessarily a big problem, but better
avoid it if the delay is not needed.

> Could you share your datasheet?

http://www.yslcd.com.tw/docs/product/B101EAN01.8.pdf (the server seems
to be down currently).

Thanks

Matthias

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
