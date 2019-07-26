Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB2976548
	for <lists+linux-rockchip@lfdr.de>; Fri, 26 Jul 2019 14:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKqwdsdhymTMMd5lJybCfNWVik/vRLy9dIH6JrkwxLw=; b=XZ1W/YPZed1/Vw
	8kywazMhJDwbOBAItY7TytQ50Bm6sGLLpFut5hKpQA5tUOLAgl135l/lNl/xp8Ptr6RTGGFZqhZH1
	i29cxNGtNZxNjUmqURlM35gtlun2Q+DLjlZNm7QyN4mqqXmC2gVjOauTlEqr1EV/FHM4JeNEkVKwb
	myIULv0+LGb9L0+VFhs+1NQWAd/Z5cRmY1BldSaFIq0tkGKsByhTnpggeuV9IxRUTwWwQcnxtiDqr
	3pMv4PIQCkmT+zdGSdMuM60alhy7MzDLR0WCWDfO4/usQgoaBLEbodWKnLTa1/z5d4HpQLmQfafM3
	QzlNUFigPsW/0U7mE6gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqz3g-0005uA-UF; Fri, 26 Jul 2019 12:10:48 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqz3e-0005t3-CL
 for linux-rockchip@lists.infradead.org; Fri, 26 Jul 2019 12:10:47 +0000
Received: by mail-vs1-xe42.google.com with SMTP id a186so34305929vsd.7
 for <linux-rockchip@lists.infradead.org>; Fri, 26 Jul 2019 05:10:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3Hk/ddKDjoh3rwEJrDhaz3iODFHsGs5iANDx40FYTho=;
 b=NtCq+FPK94+cvz+LxBD1ik58Euv8pnMYGOB5sJi8/gCvTrdjnxQzLolpowpC9ijbye
 C59/PhPvLwAPBORN4l7mgwO+HQTjyloYV1GDx/oFwYaJv1XfXqW9k9eUqWz1HQfjtj34
 LZoMbu4mHtz2br0/8RyvDY/R80R4B4J+9YjaU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3Hk/ddKDjoh3rwEJrDhaz3iODFHsGs5iANDx40FYTho=;
 b=oK9toi8mxSpnONBWUhyxbrXsYVYAddE1BaJYx4+7qMWMumJcqhej7MhOkR+LiIwrJr
 cD2ZeIJyT2vWJKVedUrUyCrDtqc9w5i6CRl8ygMmvJfA7UqzBTcBqvzi0nseBY1S0xtb
 b584ej4HRRId81P/1D0U+ikx6/17G8osgCnTpOmP1Exuu/JD96SpTccKjcvXuviJlZF1
 rrxkGoHM/lHRKMG5jyDmO5G0M+vyi5hzeDEnUJRCKKbcE2s8QxgaKUhU7Do+tubYo8Gt
 WbtaXFOrWXAzu0M9PJVgwh/w0WIsDuyYrodr+HzOWaG8FlhgNzTRV/r62WaV7S/vwNtY
 k1uw==
X-Gm-Message-State: APjAAAU4JL//iK09MQnY7zQV2EaJwWigtGTJTjvPglzgdNwlg8kS7cv0
 5GSirSd1A7zoLyxQVj60cRuZHM9jd93cpNL0kjxENQ==
X-Google-Smtp-Source: APXvYqzvjy8zCiVZsbAMpzxFBmwdjzNDLhL/0NIc8p6K0jlM7GCFN0g706IM3lhQXZiAwJDLHY0z+t81Nwo+kvfoFcM=
X-Received: by 2002:a67:f7cd:: with SMTP id a13mr60241411vsp.163.1564143041404; 
 Fri, 26 Jul 2019 05:10:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190726044202.26866-1-cychiang@chromium.org>
 <20190726111717.GB4902@sirena.org.uk>
In-Reply-To: <20190726111717.GB4902@sirena.org.uk>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Fri, 26 Jul 2019 20:10:15 +0800
Message-ID: <CAFv8NwLyTPXJ0x9F-wcGM-XFcCp+Nb1s96u9=_2xhs+=Q=E+fw@mail.gmail.com>
Subject: Re: [PATCH] Revert "ASoC: rockchip: i2s: Support mono capture"
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_051046_420754_DA0090D7 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, tzungbi@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel <linux-kernel@vger.kernel.org>,
 Takashi Iwai <tiwai@suse.com>, Doug Anderson <dianders@chromium.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, Dylan Reid <dgreid@chromium.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 7:17 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Fri, Jul 26, 2019 at 12:42:02PM +0800, Cheng-Yi Chiang wrote:
> > This reverts commit db51707b9c9aeedd310ebce60f15d5bb006567e0.
> >
> > Previous discussion in
>
> Please use subject lines matching the style for the subsystem.  This
> makes it easier for people to identify relevant patches.
>
>
> Please include human readable descriptions of things like commits and
> issues being discussed in e-mail in your mails, this makes them much
> easier for humans to read especially when they have no internet access.
> I do frequently catch up on my mail on flights or while otherwise
> travelling so this is even more pressing for me than just being about
> making things a bit easier to read.
Hi Mark,
Thank you for the reply.
Fixed the title and commit messages in v2.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
