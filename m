Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B72CF1CAA3
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 May 2019 16:43:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtpgVl3A7FFxaMPOAcjR5BsJniWUNuBOeqVK7Ny3FAg=; b=G1wlSKMPtNrg/P
	mdqAFO9qfmtuE9rpOEoF8cn3fKEXTgED8I1j6x8sLMJ1nHzAwsD7EyqK207t0JT8nH2yPUbOAzcjQ
	948dt2QApjbPZCbkgor1cQ7jKRAE1P765BrHwMUwxD0FPQTx62Wz5Kw3GhfonqLX8R1515Youv87g
	ekppmhar8SGTzqf9H7a6TzCDRi73WCAI61LTXGV193M85FAfemUX5s0e3uqQN2H3FGTwSpB7Kcx0D
	kgSzXkG8WEEWRhGGImKnACTDG4fCFLULo3WQuBG4KAv9UWHpj6mz/BmEFNXKpHciqIZ7x8TdPky6v
	W/2Ck7rOYYNE6+fOrHoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQYdt-0002WY-Ul; Tue, 14 May 2019 14:42:57 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQYdq-0002Vi-B7
 for linux-rockchip@lists.infradead.org; Tue, 14 May 2019 14:42:55 +0000
Received: by mail-ua1-x943.google.com with SMTP id t15so6301383uao.5
 for <linux-rockchip@lists.infradead.org>; Tue, 14 May 2019 07:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HxDUMgya6C+pewtw7CuJTqXH1C16ghWjNPJmFKzBodw=;
 b=YnagnjO5b68039SYmxN/WdB6Ql0sRD42h+ael4hmT//KXQ86nw8uXrPU+1d9zAISK0
 B/ZPTyFXNf5dghs1EWBTX81mNIRNG38fXxm6eUqFxpimvYxcKZ/s8SzEqss7mf3T9NG9
 c6Mwmn07wSQZkXlpK4KSKMGmtVb7c83RJWuXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HxDUMgya6C+pewtw7CuJTqXH1C16ghWjNPJmFKzBodw=;
 b=FvlohPoILqHxVMBU0TfNFDO2hyVQ+BTkrvjIvuyAIK6bxxVu88TNn9d/0KZsMRbFA+
 3K41Q3cnFthY42p81c7rM1BSnF6czq9XxirSBUwMQdV943+Vd8i/+DGsaHt6SfP0uL2u
 8mR0FLBux6oIG7j8uZ4PvNBnMT4AcFHobxAv9a27qidUjV6x4q2HKodwucteWkpVby/7
 W+AVVv9mpU0hgFsLd+PZQc6nPstYNs5ewuheBJ00KFnoeZI1hLSS61yWcwbiRz7miHT/
 G89s01Pg6Zl0NuAUA2rVB6OirWC7cX9hopO7mGIZ1oHluYF6mhfLyOf/Ybh2uI/6IJNg
 +gZw==
X-Gm-Message-State: APjAAAV+f8xrd9tbbf527AmbeqmsokiR04KhaAOM1uz2oCgUzcRIuWIJ
 VhDdaYrPrYqIQOnLOxTL5efXRExyJSs=
X-Google-Smtp-Source: APXvYqydy4nCgyM9R2TRkralIxxPeQeOxh1GsF412dbsi4iVnqIRtzrxEjqG71FRhnAJUjESmBGhPA==
X-Received: by 2002:ab0:4882:: with SMTP id x2mr15687809uac.125.1557844972818; 
 Tue, 14 May 2019 07:42:52 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com.
 [209.85.217.42])
 by smtp.gmail.com with ESMTPSA id z128sm1847389vsb.22.2019.05.14.07.42.51
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 07:42:51 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id d128so10467470vsc.10
 for <linux-rockchip@lists.infradead.org>; Tue, 14 May 2019 07:42:51 -0700 (PDT)
X-Received: by 2002:a67:79ca:: with SMTP id u193mr16139657vsc.20.1557844970925; 
 Tue, 14 May 2019 07:42:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-2-dianders@chromium.org>
 <20190512073301.GC21483@sirena.org.uk>
 <CAD=FV=UBic4qywgYQFGEXx_frD9ZoRJX7XGgDbQCvb2CbkBa9w@mail.gmail.com>
 <20190514093038.GB8665@sirena.org.uk>
In-Reply-To: <20190514093038.GB8665@sirena.org.uk>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 14 May 2019 07:42:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UXhQg2CuNsTCkSe1BuEvkGMj6qeUB2iF=Qfj=Z0fLiWw@mail.gmail.com>
Message-ID: <CAD=FV=UXhQg2CuNsTCkSe1BuEvkGMj6qeUB2iF=Qfj=Z0fLiWw@mail.gmail.com>
Subject: Re: [PATCH 1/4] spi: For controllers that need realtime always use
 the pump thread
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_074254_568430_97A95F26 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Brian Norris <briannorris@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Tue, May 14, 2019 at 2:30 AM Mark Brown <broonie@kernel.org> wrote:

> On Mon, May 13, 2019 at 01:24:57PM -0700, Doug Anderson wrote:
> > On Sun, May 12, 2019 at 10:05 AM Mark Brown <broonie@kernel.org> wrote:
>
> > In my case performance is 2nd place to a transfer not getting
> > interrupted once started (so we don't break the 8ms rule of the EC).
>
> That's great but other users do care very much about performance and are
> also interested in both priority control and avoiding context thrashing.
>
> > My solution in v2 of my series is to take out the forcing in the case
> > that the controller wanted "rt" priority and then to add "force" to
> > the parameter name.  If someone wants rt priority for the thread but
> > doesn't want to force all transfers to the thread we can later add a
> > different parameter for that?
>
> I think that's going to be the common case for this.  Forcing context
> thrashing is really not something anyone else is asking for.

OK, that's fair.  Even if nobody else is asking for it, the solution
I've coded up for v2 still allows cros_ec to use the SPI core's thread
in a pretty clean way and saves a bunch of code in cros_ec.  It
shouldn't penalize any other SPI users.

...but I guess you're saying that you don't want to guarantee that the
SPI core will happen to have this thread sitting around in the future
so you'd rather add the extra complexity to cros_ec so the core can
evolve more freely?

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
