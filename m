Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAC263346
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jul 2019 11:07:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jx+bHKEa3GQjYmcuacMgmp2tOZTuSfxnCGFJ0G4e/JM=; b=QSpOvrrl7FPJya
	RedDmodYzedgGCoMod2GD4U9vl5LejIZb/aqLZ0MiG+M+U7QEs3zJ6BBqD6yPWxQV892OA+LXG3Kb
	wLE4gDT8jP1zVX2aFy7yQUjM7j8sO/FvnFLQ5UZIBrsRwoDr/YNM0yfUSYKNxR7Nb5y8Tci/EqUB3
	gdPRiFbETydrLqfn+lBFUy/gVxz8CkGMNw2MdsN+ZE+By4t5L5auLUe4qclwqWi6xc7gn7Lfhszk/
	NwRbyeYQ5p2D4VR8GJC0v5G0AOvKGdlyBFDIg70K/818n5hH0XtkjFW1BlRhqe53/HSBE2ZLhMORz
	r+lQxT8vCMmRj38aiLVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkm5c-0004q7-3R; Tue, 09 Jul 2019 09:07:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkm5W-0004pf-H8
 for linux-rockchip@lists.infradead.org; Tue, 09 Jul 2019 09:07:04 +0000
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41B3D21743
 for <linux-rockchip@lists.infradead.org>; Tue,  9 Jul 2019 09:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562663221;
 bh=gBRbV35m5F7XIm4mY3P77vIRA1ulbfrdqYeY5XmCOgk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=gxorLcYJevSSmtpzy/o0ew1VV/QK4r2pm5NRoEH/VSxNz9qvy3wP64EGkH6vdnfn5
 xcaPE11FnphyP26cvOIJEE/cJwEmiqRLj8nwvBsJmE3hSHAANeOMpVVviPHzMIDUX0
 czxnOGsSYcDxeLI7YO03LwH2/5T7yhyHcyv3B938=
Received: by mail-lj1-f182.google.com with SMTP id r9so18792255ljg.5
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Jul 2019 02:07:01 -0700 (PDT)
X-Gm-Message-State: APjAAAU3PUOi+lz3yUDyShEHSncxVWoLw+pSAuEAVVfsLLV6C5O5mLYV
 W+RyO1ojvOJgOSqnqmVD2Yi7j7FBz3zHcM4d6tE=
X-Google-Smtp-Source: APXvYqwRGEMAT7YRdSOSn3gQFgEwbb92VncYwQYDe1Ihzvsow5YWnFGx7ye2yBLB8agC6UeZtzmBb1KtmubvXQ6NpxE=
X-Received: by 2002:a2e:980a:: with SMTP id a10mr10458109ljj.40.1562663219477; 
 Tue, 09 Jul 2019 02:06:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190708195613.205729-1-dianders@chromium.org>
In-Reply-To: <20190708195613.205729-1-dianders@chromium.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 9 Jul 2019 11:06:48 +0200
X-Gmail-Original-Message-ID: <CAJKOXPf9OTPaheUdiZtaDGU0sE2vsdRiLx5nptMt_EVKU7GObA@mail.gmail.com>
Message-ID: <CAJKOXPf9OTPaheUdiZtaDGU0sE2vsdRiLx5nptMt_EVKU7GObA@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc: Fix occasional hang after tuning on eMMC
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_020702_603992_CFF065B2 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 briannorris@chromium.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jaehoon Chung <jh80.chung@samsung.com>,
 linux-rockchip@lists.infradead.org, mka@chromium.org, groeck@chromium.org,
 Alim Akhtar <alim.akhtar@gmail.com>, sonnyrao@chromium.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 9 Jul 2019 at 00:48, Douglas Anderson <dianders@chromium.org> wrote:
>
> In commit 46d179525a1f ("mmc: dw_mmc: Wait for data transfer after
> response errors.") we fixed a tuning-induced hang that I saw when
> stress testing tuning on certain SD cards.  I won't re-hash that whole
> commit, but the summary is that as a normal part of tuning you need to
> deal with transfer errors and there were cases where these transfer
> errors was putting my system into a bad state causing all future
> transfers to fail.  That commit fixed handling of the transfer errors
> for me.
>
> In downstream Chrome OS my fix landed and had the same behavior for
> all SD/MMC commands.  However, it looks like when the commit landed
> upstream we limited it to only SD tuning commands.  Presumably this
> was to try to get around problems that Alim Akhtar reported on exynos
> [1].
>
> Unfortunately while stress testing reboots (and suspend/resume) on
> some rk3288-based Chromebooks I found the same problem on the eMMC on
> some of my Chromebooks (the ones with Hynix eMMC).  Since the eMMC
> tuning command is different (MMC_SEND_TUNING_BLOCK_HS200
> vs. MMC_SEND_TUNING_BLOCK) we were basically getting back into the
> same situation.
>
> I'm hoping that whatever problems exynos was having in the past are
> somehow magically fixed now and we can make the behavior the same for
> all commands.
>
> [1] https://lkml.kernel.org/r/CAGOxZ53WfNbaMe0_AM0qBqU47kAfgmPBVZC8K8Y-_J3mDMqW4A@mail.gmail.com
>
> Fixes: 46d179525a1f ("mmc: dw_mmc: Wait for data transfer after response errors.")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Cc: Marek Szyprowski <m.szyprowski@samsung.com>
> Cc: Alim Akhtar <alim.akhtar@gmail.com>
> Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> Marek (or anyone else using exynos): is it easy for you to test this
> and check if things are still broken when we land this patch?  If so,
> I guess we could have a quirk to have different behavior for just
> Rockchip SoCs but I'd rather avoid that if possible.
>
> NOTE: I'm not hoping totally in vain here.  It is possible that some
> of the CTO/DTO timers that landed could be the magic that would get
> exynos unstuck.

I have eMMC module attached to Odroid U3 (Exynos4412,
samsung,exynos4412-dw-mshc). What is the testing procedure? With your
patch it boots fine:
[    3.698637] mmc_host mmc1: Bus speed (slot 0) = 50000000Hz (slot
req 52000000Hz, actual 50000000HZ div = 0)
[    3.703900] mmc1: new DDR MMC card at address 0001
[    3.728458] mmcblk1: mmc1:0001 008G92 7.28 GiB

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
