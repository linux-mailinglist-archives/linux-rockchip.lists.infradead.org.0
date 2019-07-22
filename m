Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD5670154
	for <lists+linux-rockchip@lfdr.de>; Mon, 22 Jul 2019 15:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/oNKS8X9DPYptwe85O9zmvLuJEhVb+xooSP1/3A1PS8=; b=tXkopKWWX7Qpe0
	VCfaxgKKVXTsT4/vQvG0Wqs2aC774JtDjQ6qs8rlUbEk6rcmwRo955G1GfKwsmbHn8K71rhePzuCN
	5k+/J1aJ0Ps2P19LZY4Ju7ZjP2k5C9sYf9vsI5GMIt2vjdo/VUP2GB1Bos9vsFFqfBcay2qJkwUvi
	2fkOuGQ4RUJgqmK/Zglm8TduxqH5NrmEMxzysEioMzK0wzSAWmeWKeV/YhAgm5uftAgViRjt7XEc3
	+i+l/FhZqytUgagNzl4tetfm0H23Odhvbv+SNlG1O1q1AhdYUsXOryAqIpD58UcWS9DwAS4GFEhwn
	n/LLpOWcLILF28ac7mgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYaZ-0000Qc-3E; Mon, 22 Jul 2019 13:42:51 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYaE-000086-KH
 for linux-rockchip@lists.infradead.org; Mon, 22 Jul 2019 13:42:32 +0000
Received: by mail-vs1-xe44.google.com with SMTP id u3so26085207vsh.6
 for <linux-rockchip@lists.infradead.org>; Mon, 22 Jul 2019 06:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qoQdDffqX8NBzaTkQfhvAHhztASiaANiufyf578HpGA=;
 b=hlf36gHZhD/tS5G06dvQKalHNMkuU0cPoYxvqMowCMiM9+5PuvZs+04mLOqMz2VeuW
 U8dAGoQv9k54c85MyxcwsDF2A+inBvqw62id8DJVpiPw7bvZbXA/njP/C0RrYsZMy3tG
 wpjnT74c3n53mUIeMtdr+TaEKIMxUwRK6caFdudW0oLatFOWjv7hKp5H2M2hUTQi+BwB
 ESp1bk+Fpi1F+8T/ue3qVOEWi4Oyjp7xADz8+qOfUpHdXJNxyfNoDoE/2S/6G4j2pOZ4
 idBpfMzjfaoP3PkIyenxLmYvTqcyTF1J3Pool3TykdtIKk1c0OWr8xEPfoWWYVvviyqa
 NPJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qoQdDffqX8NBzaTkQfhvAHhztASiaANiufyf578HpGA=;
 b=tiihawLssoerxiz2vlvfZ+nQ4ty2QKJdfa6M3FHxUj1Kj0rQskkLDAT/Q8k57bBOk4
 PqQpLTLB9VaNBGQOzcTPmhNiEkQZDlCfHLebWtlVJ1X+2fTCnVTZ7lCJ/26pIfFB7Ry/
 WXrmfIvowajZSO+Zfsu8ssVAr3le+Ub9By1CWt0btzim7vWU0fmhvxg8viU9wBcupsfe
 rbHdK2nlu69rSboWuvYukHBdTwKZdzbVegoo4tV0Io1vFLcWayG7xB4JBlG0yxvHqj1d
 ZsgOrZbBiSk/ACKNuKnGKkUetxUyYb37b1NhsEyWkTWj7bZqOmaaAQNdV+2ywOuuHCsW
 Uy4g==
X-Gm-Message-State: APjAAAWvf2ermzjbYWtVvoJizi8YblStspKAxDQBG1cxbLjZZWWfINjw
 cSXrp3xaYXkvA6D2GTIslzLA1TLGyG7AsGvxiN62EA==
X-Google-Smtp-Source: APXvYqxbn8CFIXmBHNgvuCDDcp2KcviU5e69X/Dns7ukIv9wF0j92U/Jl2H0QImdSFYkQRQTfAnh2+VcAVwgZp1J98Y=
X-Received: by 2002:a67:7a90:: with SMTP id
 v138mr41898336vsc.200.1563802947659; 
 Mon, 22 Jul 2019 06:42:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190708195613.205729-1-dianders@chromium.org>
In-Reply-To: <20190708195613.205729-1-dianders@chromium.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 22 Jul 2019 15:41:51 +0200
Message-ID: <CAPDyKFqcbFZWiMc3zLFP7cvkNG0hMB91rfy6T=dbrFks9EWMsQ@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc: Fix occasional hang after tuning on eMMC
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064230_687696_48A67965 
X-CRM114-Status: GOOD (  24.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Brian Norris <briannorris@chromium.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Guenter Roeck <groeck@chromium.org>,
 Alim Akhtar <alim.akhtar@gmail.com>, Sonny Rao <sonnyrao@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 8 Jul 2019 at 21:56, Douglas Anderson <dianders@chromium.org> wrote:
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

Applied for fixes and by adding a stable tag, thanks!

Kind regards
Uffe


> ---
> Marek (or anyone else using exynos): is it easy for you to test this
> and check if things are still broken when we land this patch?  If so,
> I guess we could have a quirk to have different behavior for just
> Rockchip SoCs but I'd rather avoid that if possible.
>
> NOTE: I'm not hoping totally in vain here.  It is possible that some
> of the CTO/DTO timers that landed could be the magic that would get
> exynos unstuck.
>
>  drivers/mmc/host/dw_mmc.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
> index b53b6b7d4dd4..60c3a06e3469 100644
> --- a/drivers/mmc/host/dw_mmc.c
> +++ b/drivers/mmc/host/dw_mmc.c
> @@ -2034,8 +2034,7 @@ static void dw_mci_tasklet_func(unsigned long priv)
>                                  * delayed. Allowing the transfer to take place
>                                  * avoids races and keeps things simple.
>                                  */
> -                               if ((err != -ETIMEDOUT) &&
> -                                   (cmd->opcode == MMC_SEND_TUNING_BLOCK)) {
> +                               if (err != -ETIMEDOUT) {
>                                         state = STATE_SENDING_DATA;
>                                         continue;
>                                 }
> --
> 2.22.0.410.gd8fdbe21b5-goog
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
