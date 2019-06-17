Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E1847BB3
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7HeQK2MjXCYRulQbMkps0BKxuZcjSjxeNmDVDwpXVns=; b=XlNnWsOCgktIIu
	kq1yD48QaedUGpmyWySFEvwBLsmJSE60OXoyV6EtObK7+GU3uP0q5rouPYgBa3QPC+MeYJIYH4hQD
	7r1lWwHDE9PywFktP2YkCDT7JytxToKV6pwHhQ21JUDY1f8kuMvif3/PSc9C3SWCFI7T5s2CSUb0W
	KiJfoNDLryJCycfwpaGKGQ+sjn0ZbhqQbeGjOY6lK4tsxm2MOlwFigEhJabEKpkyqIj2diICAMssY
	55ADZOC4lxU4YW9wRWi5wLpqKRvZdFDMsitD6WnehC0rCx8RbBsVrdBgMXmok1Okji9rqNbFxSq1B
	M74pfS4wTqXYKeCfsn8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmSp-0007qJ-7O; Mon, 17 Jun 2019 07:54:03 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmSl-0007pm-IO
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:54:00 +0000
Received: by mail-ua1-x943.google.com with SMTP id v18so3091345uad.12
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tRW1fNYqfwgQBy9THQpXCwuo5cDKvcErh5obSg7YYNc=;
 b=rF1z+kGx4xXL8zfFmisXiiKRC1ok9357niHWA7JwibX0ET3Sg2Vx/C91G3nrLc+Xhe
 BPK1VcVetMEFD5keUYeTb5W3hxqOdM34b/M9bruL5im6NuFkKRqVC7jsMPkebP2tAn6Y
 D94jWFD4CUzmB3wQv0vDlpQdduzhIvtbUwbiHXA/jfeOFu2cvoIcibGdp+E+Bd3gGBoy
 3gl7atT4pvqbvXUtPRwvJqQds1zAPHerPuoQw/wouC1cnIz0xBuv7d33qJEKP6bN2kwZ
 CNzBAvYinLErfw6BiZX1TKiSPZVm6+weN+Ve92dW+5Ee4stiJZG0x7ywBtwPHFq7QAAV
 g3Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tRW1fNYqfwgQBy9THQpXCwuo5cDKvcErh5obSg7YYNc=;
 b=OhRR+Bq7DcTtE7FNImwfHbJu9tK2gd7lbdZpOe+5xgeYednUOHGZvP6GKgdlYIY0OG
 O156euolzynizUswKixFh9B9qjVm6uSyTTU/s+SENsa9F7BbX2fR9TRUtI10fUgKwfEY
 3rY/9TE/+KG+9gvGHj1JdztjGdTnr6enzZj7g6+4Nuu4KIh0ZfM9eKoMXpqVNVyFx091
 TxSJo/eqMfEKekHlhpHLCkl6+m5eyNzf41cgINe/wuamYestPPupvB/zdhCY9ChX2yQ1
 kPFF5jThddX1zQhm83+Lti1ZHpD2Rrl2iuWkYoXI7McmHObFr1tJ4k0NoJdnX4BoTs6X
 uXig==
X-Gm-Message-State: APjAAAVTlmEg0dKxv/ITrNs7SlFLbLBn0ZgrtjYJMxbxqfF+ujCVxQTK
 dte1KyrbbiTA68jOoROaN7MMLH+9ZbRHDOpsdAty9g==
X-Google-Smtp-Source: APXvYqyhLV0eZUsbwyc8+v3TnW8XR69RoxoH9782ZqeCtf+IvVa1gMZ7SgjScvGxko8mmZpldj50C+TaD9ZWqmsljgk=
X-Received: by 2002:a9f:31a2:: with SMTP id v31mr6656078uad.15.1560758038323; 
 Mon, 17 Jun 2019 00:53:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190613234153.59309-1-dianders@chromium.org>
 <20190613234153.59309-3-dianders@chromium.org>
 <CAPDyKFrgXGf_9=H7G40fiUQj=da5WWRys_oim2azgL4FEOeUVA@mail.gmail.com>
 <CAD=FV=UA9i1eEi3Mx0WF-DnCnr4O4-MfOxa=axZOJtXzxbV7Tw@mail.gmail.com>
In-Reply-To: <CAD=FV=UA9i1eEi3Mx0WF-DnCnr4O4-MfOxa=axZOJtXzxbV7Tw@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 17 Jun 2019 09:53:20 +0200
Message-ID: <CAPDyKFqNUJospyV05ZC7Y894QB6a9LQ8cjdT+zrD9EQvm_OWRg@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] mmc: core: API to temporarily disable retuning for
 SDIO CRC errors
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_005359_668059_3447FF0E 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 Ritesh Harjani <riteshh@codeaurora.org>,
 Brian Norris <briannorris@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Madhan Mohan R <madhanmohan.r@cypress.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Double Lo <double.lo@cypress.com>, Avri Altman <avri.altman@wdc.com>,
 Wright Feng <wright.feng@cypress.com>, Jiong Wu <lohengrin1024@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 brcm80211-dev-list.pdl@broadcom.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kalle Valo <kvalo@codeaurora.org>, netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

[...]

> > > --- a/include/linux/mmc/sdio_func.h
> > > +++ b/include/linux/mmc/sdio_func.h
> > > @@ -167,4 +167,7 @@ extern void sdio_f0_writeb(struct sdio_func *func, unsigned char b,
> > >  extern mmc_pm_flag_t sdio_get_host_pm_caps(struct sdio_func *func);
> > >  extern int sdio_set_host_pm_flags(struct sdio_func *func, mmc_pm_flag_t flags);
> > >
> > > +extern void sdio_retune_crc_disable(struct sdio_func *func);
> > > +extern void sdio_retune_crc_enable(struct sdio_func *func);
> > > +
> > >  #endif /* LINUX_MMC_SDIO_FUNC_H */
> > > --
> > > 2.22.0.rc2.383.gf4fbbf30c2-goog
> > >
> >
> > Besides the minor comments, this looks good to me.
>
> Thank you for the reviews!
>
> I'll plan to send a v5 on my Monday with the fixes assuming no new
> heated discussion starts up.  If it's less work for you, I'm also
> happy if you just want to make the trivial fixes yourself when
> applying.

It really doesn't matter to me, feel free to pick the option you
prefer. At this point I am just awaiting acks for the broadcom patces
and some clarity of what stable releases we should target for
non-tagged patches.

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
