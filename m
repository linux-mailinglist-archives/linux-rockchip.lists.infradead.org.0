Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CDCB5E0D
	for <lists+linux-rockchip@lfdr.de>; Wed, 18 Sep 2019 09:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jYGnNCktZn6HVm4tm15s1V+hbGsD2FFeT7+1DcupvMw=; b=j+fZf++YcjOS/w
	1B2jxbjYaXjlbAGnq0k1veCFwQ0PgfajupExGOIS44A5eg3ifySdCpGRuO4n86pEG+iBFKkOQyfh5
	/NryxxekAMquL9Nc/jXVMGFQYCe3i5fnAAqn8tUMpGgLffDrePjcr3S5ncSx1tDJZwsUmYdpFswrP
	6r3zSv7fccBMcgzjDqUwEqwJ5iufZCQKM5GQJhes2tT2NJfw6EmoO02vDs4nlFUrj5t0cwpa6V5UV
	WQLSGnH+ecQAqw7maAEUJbSpMBe3CYk8yi1RdwMeIfEGy5wTHO4FC6gcdT45HHiqv+B7lvVjyi5bQ
	fTLfR+oMQNKQknShAY6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAUQm-00012k-CL; Wed, 18 Sep 2019 07:31:16 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUP5-0007vu-Er
 for linux-rockchip@lists.infradead.org; Wed, 18 Sep 2019 07:29:32 +0000
Received: by mail-vs1-xe43.google.com with SMTP id l2so3807662vsr.8
 for <linux-rockchip@lists.infradead.org>; Wed, 18 Sep 2019 00:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SDoUVLf2sM2Wd7eza5DvRhJf8f3rN/ciRvE3nXJqNFQ=;
 b=bHgC61S83XFKjjHLXOkOq4DxsfgHo2iXOrB0kGNER7zB3qrVVxUkcW0pixzEoZ/hFO
 9zlhd8/Ni87ZlTvrJ0eiUB+ehwc8ERiN1SdYfkRdu5K74DlnoLi+h/s3kgUV+MO5yxI4
 IpXJ9/umG++g7tOVTqBUHyZhF1w1+BHeH19F0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SDoUVLf2sM2Wd7eza5DvRhJf8f3rN/ciRvE3nXJqNFQ=;
 b=TCSCeqNAdXD81shgSeaSh3N6pjOCQxukoeVibcYhH6Z3lYE0w0KmQMeF1TSW90mlxv
 mR1ULuZUusHgmOD+UlrmA3Kg9JCO5cxL57xJPrmFbLyU+4K7n5YCJmNksQaYF4E61XyG
 cs0RApDdTlRNaufudz65mikfG3iJBfkUsaZiSKkbAoY6wpv7qjQ3gyxFy82sXKtzEf7b
 +e7w4jYaUqtYkM7CHWLo18+UllTaDJfmanrKhnUabvsKvl77U0ojL8807ODgxz8urRHe
 Pl2OFCX7g2/mS4GArAbJJ3Qa11EUiC1uEIKJ+zcRxTvZECZlb103XsB8Cq0PJHdKesBm
 ET+w==
X-Gm-Message-State: APjAAAWFlrH7BXjZQKbdkllNv0Kdb+gtI0jDTQhXf/djqKHiaJ+sp2LY
 J/RJ06bYbEjANTOk82yesCyEkmd5vnaMCqPrnDXnaw==
X-Google-Smtp-Source: APXvYqz3X6HVZiW3ZAIrMpmqoTkGT9csY3mslQR+djJ/IC/kNyPMlb3OEGubgnn0YA3Nv38dQWDVGsLPAgmKFKrvNcM=
X-Received: by 2002:a67:db8d:: with SMTP id f13mr1362214vsk.163.1568791763011; 
 Wed, 18 Sep 2019 00:29:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190717083327.47646-1-cychiang@chromium.org>
 <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
 <CAFv8NwLiY+ro0L4c5vjSOGN8jA-Qr4zm2OWvVHkiuoa7_4e2Fg@mail.gmail.com>
 <CAFv8NwJjG4mwfnYO=M3O9nZN48D6aY72nQuqEFpZL68dh5727w@mail.gmail.com>
 <7019a223-cc97-e1c6-907b-e6b3d626164f@baylibre.com>
 <20190909135346.GG2036@sirena.org.uk>
 <3fc94731-f66a-223d-995e-97ac67f9e882@baylibre.com>
In-Reply-To: <3fc94731-f66a-223d-995e-97ac67f9e882@baylibre.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Wed, 18 Sep 2019 15:28:56 +0800
Message-ID: <CAFv8NwL3+4Qsv0B7PtVhB=HX6uFUMMaw5V=E3NTRE-v_jDVAxg@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Add HDMI jack support on RK3288
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_002931_529562_CCB439AB 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Liam Girdwood <lgirdwood@gmail.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-rockchip@lists.infradead.org, Takashi Iwai <tiwai@suse.com>,
 Tzung-Bi Shih <tzungbi@google.com>, Dylan Reid <dgreid@chromium.org>,
 tzungbi@chromium.org, Jonas Karlman <jonas@kwiboo.se>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Douglas Anderson <dianders@chromium.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 5:33 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Hi,
>
> On 09/09/2019 15:53, Mark Brown wrote:
> > On Mon, Sep 09, 2019 at 09:37:14AM +0200, Neil Armstrong wrote:
> >
> >> I'd like some review from ASoC people and other drm bridge reviewers,
> >> Jernej, Jonas & Andrzej.
> >
> >> Jonas could have some comments on the overall patchset.
> >
> > The ASoC bits look basically fine, I've gone ahead and applied
> > patch 1 as is since we're just before the merge window and that
> > way we reduce potential cross tree issues.  I know there's a lot
> > of discussion on the DRM side about how they want to handle
> > things with jacks, I'm not 100% sure what the latest thinking is
> > there.
> >
>
> Thanks Mark.
>
>
> Cheng-Yi can you resent this serie without the already applied
> first patch with Jernej, Jonas, and Jerome Brunet <jbrunet@baylibre.com> CCed ?

Hi Neil,
Got it. Sorry for the late reply.
I will resend this series without the first patch, based on latest
drm-misc-next, and cc the folks.
Thanks!

>
> Thanks,
> Neil
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
