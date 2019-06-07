Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CC5393D7
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Jun 2019 20:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sr05sztHNaOBcQXe199bp+6l1DFYQ7iW1YwToFhpW64=; b=WJc+L0BlD+Mw4t
	mORgTvYEnCoUU4KX/+whNitfDk7o7cIiOoYf1CV0uGxyUqP7dPag5mX1+04jhzNzvuXmrdEB0sqI2
	fPvzjrNGgdVDbMpv8RFnWkwnuWalaxVj+BpDvz6mzQ+zS0HhA3ctxwc9Y2uPW3RHC/rQ7sUfdBQmS
	YB4DQBq1e2duwTw3E/uRYIadcvkGGMuPL0mGpfOyzlLvFxfEJq15iWJ7NGVCpw66dF3iiIABpigQm
	cmrKQXglhh46gbSip0PYYPE+nb5NZnotWhHB+iVYhbp1Y7djpuuoEoKrNdcb1iRDR3m0pftggtTTQ
	ksyNshpd2rQyFQp+hvRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZJA6-00052G-SZ; Fri, 07 Jun 2019 18:00:22 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZJA3-00051Z-5i
 for linux-rockchip@lists.infradead.org; Fri, 07 Jun 2019 18:00:20 +0000
Received: by mail-it1-x144.google.com with SMTP id m187so4035188ite.3
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jun 2019 11:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JpEKImARlNSrR2CnDXXq0hDAys3pJayRssH3rrFbf2w=;
 b=B/6hqqM0rL+x3KFCsh7CUaMSPWa9JWojv6AjMWoMhrS0wrU1xTYxzwXiUvpjHpkUQw
 SNx2W7ZoTf+ySa7oHh505uHwWR+M3fqOEIJUN0a63wixYrtcrvUANb5EgLcalI+np2RJ
 HiB74IYHz905zihBSHU9WNQVreYfYBXw2lEW0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JpEKImARlNSrR2CnDXXq0hDAys3pJayRssH3rrFbf2w=;
 b=ugY1Mm5AQ0iGVxhiNHPl6N+EXjLQgdmGo4HUafxpkx0960Mee+L6S56apMcA3URHj7
 qSTP7WFVqrbDIOdKeOv4hrRnzk26ABhV3UGs4cU/1EFetyj4bhd81jWs+S7K2ZDT0x+3
 AlfdYh4VTNReaxFOir3OB+EL0Yht9Y6rse8XyJIuW6YKb9+Ylf1cDk+Lnmpnw87xMIKb
 6CdSpYXWPrq9IiBEyq5R6Mr6sztpMwZALECUQZD3nco1FEDvxyDoPvP++77VwG5k6dks
 DUXi9uyTGnkYj/lmI6w66qS8uXYPMKcnwDn4xrWlR95FtSvMw5gLEE57NzT9uIqUsiCr
 QHAw==
X-Gm-Message-State: APjAAAUUkTZm0cigGJ9KGxcEJ7WhJQhHXKK3BplEca7VamR9DXBNdBZH
 q01cNFVFItFFziHXwGDMAW09uXEod3w=
X-Google-Smtp-Source: APXvYqww0z2g5dUBPF4Lj4BuHvYw22qJyZbQWHwpt6oKMXvMRCLz/k6KGccmWM8C8+v4z2o5v48FEg==
X-Received: by 2002:a24:8189:: with SMTP id q131mr5051049itd.27.1559930414775; 
 Fri, 07 Jun 2019 11:00:14 -0700 (PDT)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com.
 [209.85.166.43])
 by smtp.gmail.com with ESMTPSA id c2sm900308iok.53.2019.06.07.11.00.14
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 11:00:14 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id n5so2089408ioc.7
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jun 2019 11:00:14 -0700 (PDT)
X-Received: by 2002:a6b:b642:: with SMTP id g63mr18948289iof.142.1559930414169; 
 Fri, 07 Jun 2019 11:00:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190603183740.239031-1-dianders@chromium.org>
 <20190603183740.239031-4-dianders@chromium.org>
 <42fc30b1-adab-7fa8-104c-cbb7855f2032@intel.com>
 <CAD=FV=UPfCOr-syAbVZ-FjHQy7bgQf5BS5pdV-Bwd3hquRqEGg@mail.gmail.com>
 <2e9f80af-aa26-5590-9ff0-9889400068d6@intel.com>
In-Reply-To: <2e9f80af-aa26-5590-9ff0-9889400068d6@intel.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 7 Jun 2019 11:00:02 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WGxXvcCuuspAkHY=m+vhQ+R96i4HCBZNCO1-jQ5U9+3Q@mail.gmail.com>
Message-ID: <CAD=FV=WGxXvcCuuspAkHY=m+vhQ+R96i4HCBZNCO1-jQ5U9+3Q@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
To: Adrian Hunter <adrian.hunter@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_110019_284269_026FF6FA 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>, netdev <netdev@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Double Lo <double.lo@cypress.com>, "David S. Miller" <davem@davemloft.net>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Fri, Jun 7, 2019 at 5:29 AM Adrian Hunter <adrian.hunter@intel.com> wrote:
>
> >> @@ -711,8 +720,16 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
> >>                         err_cnt = 0;
> >>                 }
> >>                 /* bail out upon subsequent access errors */
> >> -               if (err && (err_cnt++ > BRCMF_SDIO_MAX_ACCESS_ERRORS))
> >> -                       break;
> >> +               if (err && (err_cnt++ > BRCMF_SDIO_MAX_ACCESS_ERRORS)) {
> >> +                       if (!retune_release)
> >> +                               break;
> >> +                       /*
> >> +                        * Allow one more retry with re-tuning released in case
> >> +                        * it helps.
> >> +                        */
> >> +                       sdio_retune_release(bus->sdiodev->func1);
> >> +                       retune_release = false;
> >
> > I would be tempted to wait before adding this logic until we actually
> > see that it's needed.  Sure, doing one more transfer probably won't
> > really hurt, but until we know that it actually helps it seems like
> > we're just adding extra complexity?
>
> Depends, what is the downside of unnecessarily returning an error from
> brcmf_sdio_kso_control() in that case?

I'm not aware of any downside, but without any example of it being
needed it's just untested code that might or might not fix a problem.
For now I'm going to leave it out of my patch and if someone later
finds it needed or if you're convinced that we really need it we can
add it as a patch atop.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
