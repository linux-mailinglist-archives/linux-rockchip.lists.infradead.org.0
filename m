Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A9233865
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 20:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gFTKdGJKM6ZVRhP9zLN6BTC6uwP5+wNv+yiy3Y0/j9M=; b=qTzZ2NMkkplpwt
	HmaQQU5Pu2jrgTCS79Ngk7j5/MJoGpk8vBfpTVO6R/Q0sjBx378qcraiVeJOR3EO+IOxPfU6nE1Gy
	B2gzFk331+2O+SW2jd21IvDMs+Tnk/lV+PCgvmObk7v980Z0+XN2WgIl8VAEa9UxPLANR8AWa0k7c
	C1sNi6VdaB/SJb971nfYz7bvBn5+kBdb4/4cZUyBwIPCMOaj2qRtUHepydh6a/hN5KNmEfJgHw1Hr
	8Lr1wczxxOyxy9g6b38ourc9fdzPnDWk89jp2DK+OdC5Ze5QC1DoD2/51xB+k6LmUG5tKA03lPYh6
	Dp5lFczbfueIOsTDugpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXruE-00057e-It; Mon, 03 Jun 2019 18:42:02 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXruB-00056z-8V
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 18:42:00 +0000
Received: by mail-ua1-x942.google.com with SMTP id e9so6851886uar.9
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Jun 2019 11:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VsSotgwA1nxU4EAySnnvJ5ZgB7iMM3DB2x56bZwTUg8=;
 b=a09cCL26+bNOhQdoUo4x1wwzRc4g9+ZUKrcQIliCV1lVo86BnM7yonXBOHs3n8ThUp
 tBeLLscjAUtngd30ZkAshMl1RND5mQUFk5hVmajXhWgn0Q6ATNrv0OJKmvUbmJLKJjZp
 7PN3dXgD7aCNGHhYS/nSswGo8LZlcgEqVC4Fc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VsSotgwA1nxU4EAySnnvJ5ZgB7iMM3DB2x56bZwTUg8=;
 b=fC6qjaHxQrjMwMsbSVih92DzhY+lt9vnImzqhKDzVOud3jO58q1+54CcDZ0qLF1ksP
 MFkwUVSv10HiC7BG/KOSjX/grrij3aQRrDWdoNX1ggN+NY3SaVacLCuhKCri6NhSxl7k
 xgUdObeU8htfRebYCC5Mq53AOuzpsbNgsFNAACC/LL2i7/9q4BUTinaNLmdfNosSOI7E
 xCwo/SBTSx6+nlMENulbyeP8ft6XO32TQPeLutdhHEU+sBS3GdqoPZAvBj2ya/db3k0f
 XaNOblxiLNc5bCrrPcsNh0ijIfNXSEhFBfFY1roHwkqE1lMJGXLHlXX4c7PNtnLSLWNX
 y06A==
X-Gm-Message-State: APjAAAVI4hM1ZfbAXnPD/SHsAIZeoDO2mYSEvbp5fgG5LLr5Gr3uhyEK
 OhxTYlIAvVuaIMGUiAMtthHDiLaCvTc=
X-Google-Smtp-Source: APXvYqyEMqvxewyuXUNOCX9xD6A/QidZsuyhWcI4yPBKVEf2GxdoNiremBi5N0AEt7lQ0LWfytG6vQ==
X-Received: by 2002:ab0:14a:: with SMTP id 68mr1934587uak.126.1559587317721;
 Mon, 03 Jun 2019 11:41:57 -0700 (PDT)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com.
 [209.85.217.53])
 by smtp.gmail.com with ESMTPSA id g133sm4325730vke.25.2019.06.03.11.41.55
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 11:41:55 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id n2so3515258vso.6
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Jun 2019 11:41:55 -0700 (PDT)
X-Received: by 2002:a67:ec5a:: with SMTP id z26mr9662027vso.144.1559587314889; 
 Mon, 03 Jun 2019 11:41:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190429204040.18725-1-dianders@chromium.org>
 <CAPDyKFp0fQ+3CS-DadE9rO-9Npzve-nztY9hRaMdX7Pw9sUZMw@mail.gmail.com>
 <CAD=FV=XMph_CE3pFZGP+5d0K2FgbPbheF1oX72TfZn_dpf8SQA@mail.gmail.com>
In-Reply-To: <CAD=FV=XMph_CE3pFZGP+5d0K2FgbPbheF1oX72TfZn_dpf8SQA@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 3 Jun 2019 11:41:42 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U7_ek_z7UfaDn9My8UfZfpNom04OJHowoH-sNsGZQnxA@mail.gmail.com>
Message-ID: <CAD=FV=U7_ek_z7UfaDn9My8UfZfpNom04OJHowoH-sNsGZQnxA@mail.gmail.com>
Subject: Re: [PATCH v2] mmc: dw_mmc: Disable SDIO interrupts while suspended
 to fix suspend/resume
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_114159_305838_301B6D10 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "# 4.0+" <stable@vger.kernel.org>, Jaehoon Chung <jh80.chung@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>,
 Guenter Roeck <groeck@chromium.org>,
 Emil Renner Berthing <emil.renner.berthing@gmail.com>,
 Sonny Rao <sonnyrao@chromium.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ulf,

On Tue, May 28, 2019 at 3:49 PM Doug Anderson <dianders@chromium.org> wrote:
>
> > 1) As kind of stated above, did you consider a solution where the core
> > simply disables the SDIO IRQ in case it isn't enabled for system
> > wakeup? In this way all host drivers would benefit.
>
> I can give it a shot if you can give me a bunch of specific advice,
> but I only have access to a few devices doing anything with SDIO and
> they are all using Marvell or Broadcom on dw_mmc.
>
> In general I have no idea how SDIO wakeup (plumbed through the SD
> controller) would work.  As per below the only way I've seen it done
> is totally out-of-band.  ...and actually, I'm not sure I've actually
> ever seen even the out of band stuff truly work on a system myself.
> It's always been one of those "we should support wake on WiFi" but
> never made it all the way to implementation.  In any case, if there
> are examples of people plumbing wakeup through the SD controller I'd
> need to figure out how to not break them.  Just doing a solution for
> dw_mmc means I don't have to worry about this since dw_mmc definitely
> doesn't support SDIO wakeup.
>
> Maybe one way to get a more generic solution is if you had an idea for
> a patch that would work for many host controllers then you could post
> it and I could test to confirm that it's happy on dw_mmc?  ...similar
> to when you switched dw_mmc away from the old kthread-based SDIO
> stuff?

Unless you have time to help dig into all the possibilities here to
help understand how this should behave across all the different host
controllers / wakeup setups, maybe we could just land ${SUBJECT} patch
for now and when there is more clarity we can revisit?

Thanks!

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
