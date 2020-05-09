Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B05001CC2DA
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 May 2020 18:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ar4UT7VvF6W+hmw1lyGCCDGTuRvx397ur3tyEvHr/Xk=; b=fiKbL7AopAcu1k
	B8NHw64pXr9z2AuUsIEUTU8XqiZ+d8G9rzOM1PEGWNDvq519+dLtULQq0HHXxGkxZBe2hrz9fpnS3
	4eQHvPwRSrIiNdR0nTOHdCZcuAZOMbVsiJgh8Ae3KcHxgocItde31ebLibYG7VJhAU/YO++k1Y0a6
	3g2ffXLaG7nExgwtMPXBaV0dKRPPxvJ08exDyCYCiQBEg9ZGbmWd5fC8g0oI48w96Z6PTolWxee7f
	41ohPp1aPFT7C11xA8ekGIkLZTV34tXmxr+QRkFDQNWgjZNhzNgiA6Dq2/loMd+W/TQzctHkqRYWl
	sQ4djkN6dkX6PeQJAJlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXSd5-0005j1-1e; Sat, 09 May 2020 16:47:11 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXSd1-0005hy-3c
 for linux-rockchip@lists.infradead.org; Sat, 09 May 2020 16:47:09 +0000
Received: by mail-ej1-x642.google.com with SMTP id n17so4032790ejh.7
 for <linux-rockchip@lists.infradead.org>; Sat, 09 May 2020 09:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BtCKp4AGPhPF6KENlaa3wSo8dEmGL1XnJntVOvzmP6g=;
 b=Rg02YZM90SYCZC9+fxwI8qbM+B6KhIXb+pk9DaMhiTsLczUwIeqhAvGNKBxUPVpIVY
 1CXMdCJxPW70SBHszvfIUWJqEPgTIWjoAxbKqy7saZRT81/TtysCoXllDCPXssUFAXZ0
 PhjzKCL4ZEdyj7gY0uKoxcAHPY5cjdXqz/CnU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BtCKp4AGPhPF6KENlaa3wSo8dEmGL1XnJntVOvzmP6g=;
 b=WL1N/3K8wGhStKDRHCz7Dsdbioyalt2GEN/X7qoSosllkVJ79+Ydn/smxBqlocw9Xi
 4Wgzc6X0wR9nSLKtR5lxjVqj/C/NzWFJYKyEdSnk3fjPTWHNwCGoQFIP3/jKQPaYPHZC
 zlqXk7KkxDPOc0XIKCyfCaPs/75vYO5m3q+yFjPGdDt0bLWXrIOoCcgtKHvFkR52ifud
 o+aCTXjhXGTPoWPMjmfXJW9V49Ex5nmZvjrveQVuSXgvmsOuasHoWwqSu90C3DDUQ5ZZ
 0J+E7ujCf15jIB1ZnS3J4kBMkiPrpCp1lPBGyTUY3L1jAKwlu5KQmBB/uogETuU6z+2e
 YFYg==
X-Gm-Message-State: AGi0PuZFBS4dagPRAMSoBQNINZ2PA43s5zPhulqPfXdHlqkS5dbZs++6
 kv/Mm7QSf9jiQnqYeQ0/FLYA/3Pn/Kd+bwsbkNDmsA==
X-Google-Smtp-Source: APiQypK3FqLd2lC4TJZWTOcBNhjJUs79wet0GfOLB6nulpAL0sOMrJ3xWfx6wyIh9WwxvnefBhmHG4K9yH0LgDbjVNI=
X-Received: by 2002:a17:906:1c94:: with SMTP id
 g20mr6535699ejh.319.1589042824802; 
 Sat, 09 May 2020 09:47:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
 <20200430070412.12499-9-jagan@amarulasolutions.com>
 <20200503133944.GA28003@Mani-XPS-13-9360>
In-Reply-To: <20200503133944.GA28003@Mani-XPS-13-9360>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sat, 9 May 2020 22:16:53 +0530
Message-ID: <CAMty3ZCsW+XnT7NHh08N8FpTx4XYPnH0_9K_6PbMqG50xAp2vw@mail.gmail.com>
Subject: Re: [PATCH v2 8/8] rockchip: Enable PCIe/M.2 on rock960 board
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_094707_587556_1A895520 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Patrick Wildt <patrick@blueri.se>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tom Cubie <tom@radxa.com>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, U-Boot-Denx <u-boot@lists.denx.de>,
 Peter Robinson <pbrobinson@gmail.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sun, May 3, 2020 at 7:09 PM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> On Thu, Apr 30, 2020 at 12:34:12PM +0530, Jagan Teki wrote:
> > Due to some on board limitation rock960 PCIe
> > works only with 1.8V IO domain.
> >
> > So, this patch enables grf io_sel explicitly
> > to make PCIe/M.2 to work.
> >
> > Cc: Tom Cubie <tom@radxa.com>
> > Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v2:
> > - none
> >
> >  board/vamrs/rock960_rk3399/rock960-rk3399.c | 20 ++++++++++++++++++++
> >  configs/rock960-rk3399_defconfig            |  5 +++++
> >  2 files changed, 25 insertions(+)
> >
> > diff --git a/board/vamrs/rock960_rk3399/rock960-rk3399.c b/board/vamrs/rock960_rk3399/rock960-rk3399.c
> > index 68a127b9ac..98d62e89ca 100644
> > --- a/board/vamrs/rock960_rk3399/rock960-rk3399.c
> > +++ b/board/vamrs/rock960_rk3399/rock960-rk3399.c
> > @@ -2,3 +2,23 @@
> >  /*
> >   * Copyright (C) 2018 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> >   */
> > +
> > +#include <common.h>
> > +#include <syscon.h>
> > +#include <asm/io.h>
> > +#include <asm/arch-rockchip/clock.h>
> > +#include <asm/arch-rockchip/grf_rk3399.h>
> > +#include <asm/arch-rockchip/hardware.h>
> > +
> > +#ifdef CONFIG_MISC_INIT_R
> > +int misc_init_r(void)
> > +{
> > +     struct rk3399_grf_regs *grf =
> > +         syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
> > +
> > +     /* BT565 is in 1.8v domain */
>
> From where this BT565 comes in?

If my understanding was correct, some SSD's to work on this board do
require this explicit domain voltage change. Usually it requires GPIO
enablement followed by grf voltage domain update [1] but in my case it
worked w/o gpio.

Maybe I will update this details in the commit message and also in the code.

[1] https://github.com/radxa/u-boot/blob/stable-4.4-rockpi4/board/rockchip/evb_rk3399/evb-rk3399.c#L194

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
