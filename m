Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 197BF2238E
	for <lists+linux-rockchip@lfdr.de>; Sat, 18 May 2019 15:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBSOcP5ACDYFEPpmqPXkiZa7TV3MaRa0oBaUNJmdlJo=; b=TtXEPEqJPpva+9
	B9DWWbRFPhPo842AoKY969T+fga06vzn/p9hkPEbaozS3XAx/NQXU66NSCtoA5x0shxt8GXDaqN5h
	0RqLIS9JEf7e6Zz+1nB8hGaGMuEYCaNDWoWONT5TrslLyDa+rj6GXSKfgDt8isBr4OEG+GWKIN3D8
	5z/On9T2iHClZAbNo8EqhE13GG++bXKAHaMVCNJqJ6kSZbH8hXYQOjxQkBYb9P26sEuvcNuTg6u1/
	FWvTOeiLpfcY/VgmGYvonK1wYcQr+ws8PgXYwjWpZ0syCB2WaSyT2fvqW98tZh2I+HNj6681+2qR8
	R3iqHe9KML07tEHFwATA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRzbd-0007ZN-Ue; Sat, 18 May 2019 13:42:33 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRzba-0007Yg-8T
 for linux-rockchip@lists.infradead.org; Sat, 18 May 2019 13:42:32 +0000
Received: by mail-vk1-xa41.google.com with SMTP id k1so2798125vkb.2
 for <linux-rockchip@lists.infradead.org>; Sat, 18 May 2019 06:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5RGFFzjBhNiyidD59Z5h5Zp/VrAgBZOeTOoJ9odKkxU=;
 b=YDXYnqYIaeJRG4ysVyvDzCaIhFqdYTMYbXS2cChMC/tqYsViXrSpvQfFj1YCueaAn9
 VUnk6J+fvbwekMY20xSYwssbKxGE3X1+lo8Z9tD6OkRIplPCUVGDlfmqbPcqns0fI1Np
 /iDN17LGgWZYBF9cCZNP7YkUa9MLXM6AOMgfY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5RGFFzjBhNiyidD59Z5h5Zp/VrAgBZOeTOoJ9odKkxU=;
 b=YRGeo8ZMea+y1ygHgnUOsTD5+lk9jomTQD3baN85O22RVwitUT5/Z/TLm0CaGtd8V+
 bcdTylk6t7FGHMR3DUKSqoyfbreuuSsXX1bCWCTAjYUH/wuTKZkkFyWsOrNEv/TJv68Q
 t0hka8A0qXeVhgJ33gSDF5UfrXIo1h7UIGapSuICzKfzg7BL9Q9SmxXcFvkEeYDDUe6c
 W7ixoY8X3RswsZ42s0vW9Kv23LuYpeuvYusFflt8a7ryz8Yk1vdIGHT7kyx26tQEyOEM
 6FW3n2A6Hi9i632CurGT4C78fIRcSIE66798PdeLP1DgnZpveI5rX69PaM5ReAVILSy8
 0/rA==
X-Gm-Message-State: APjAAAVVWxSBq6Cbb48P3lGW+XL/mDQaKhN6ZfuD/bnh2dN1RtagRPbg
 FB6JYhntPPUXserNpdwJPtJRySGq7sU=
X-Google-Smtp-Source: APXvYqzsX7qgmuHX+7D9J3E3vYnh6zC+zGhOnm3j8grmmvZaXLDibDLme8JitgRgL3kqIHUUO6sAng==
X-Received: by 2002:a1f:a945:: with SMTP id s66mr2175141vke.15.1558186945648; 
 Sat, 18 May 2019 06:42:25 -0700 (PDT)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com.
 [209.85.222.41])
 by smtp.gmail.com with ESMTPSA id t124sm2851205vkf.49.2019.05.18.06.42.23
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 May 2019 06:42:23 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id 7so3794457uah.1
 for <linux-rockchip@lists.infradead.org>; Sat, 18 May 2019 06:42:23 -0700 (PDT)
X-Received: by 2002:ab0:2709:: with SMTP id s9mr14728825uao.21.1558186942832; 
 Sat, 18 May 2019 06:42:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190507234857.81414-1-dianders@chromium.org>
 <CAD=FV=VcF688tSArf5gu0sV5oKVgFEvPBxXm7j-5GXXMP_CYRw@mail.gmail.com>
 <1862323.vETM5zrFmV@phil>
In-Reply-To: <1862323.vETM5zrFmV@phil>
From: Doug Anderson <dianders@chromium.org>
Date: Sat, 18 May 2019 06:42:14 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XhQtsPkvFuQ4cP5769XmbvkT7csFrcVkHT6ktySSYOdw@mail.gmail.com>
Message-ID: <CAD=FV=XhQtsPkvFuQ4cP5769XmbvkT7csFrcVkHT6ktySSYOdw@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip-dp: Avoid power leak by leaving the PHY
 power on
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_064230_327035_7C7A7A8F 
X-CRM114-Status: GOOD (  26.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Derek Basehore <dbasehore@chromium.org>, Lin Huang <hl@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, LKML <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>,
 Guenter Roeck <groeck@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Caesar <wxt@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Sat, May 18, 2019 at 12:51 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi,
>
> Am Samstag, 18. Mai 2019, 01:57:47 CEST schrieb Doug Anderson:
> > Elaine and Caesar,
> >
> > On Tue, May 7, 2019 at 4:50 PM Douglas Anderson <dianders@chromium.org> wrote:
> > >
> > > While testing a newer kernel on rk3288-based Chromebooks I found that
> > > the power draw in suspend was higher on newer kernels compared to the
> > > downstream Chrome OS 3.14 kernel.  Specifically the power of an
> > > rk3288-veyron-jerry board that I tested (as measured by the smart
> > > battery) was ~16 mA on Chrome OS 3.14 and ~21 mA on a newer kernel.
> > >
> > > I tracked the regression down to the fact that the "DP PHY" driver
> > > didn't exist in our downstream 3.14.  We relied on the eDP driver to
> > > turn on the clock and relied on the fact that the power for the PHY
> > > was default turned on.
> > >
> > > Specifically the thing that caused the power regression was turning
> > > the eDP PHY _off_.  Presumably there is some sort of power leak in the
> > > system and when we turn the PHY off something is leaching power from
> > > something else and causing excessive power draw.
> > >
> > > Doing a search through device trees shows that this PHY is only ever
> > > used on rk3288.  Presumably this power leak is present on all
> > > rk3288-SoCs running upstream Linux so let's just whack the driver to
> > > make sure we never turn off power.  We'll still leave the parts that
> > > turn _on_ the power and grab the clock, though.
> > >
> > > NOTES:
> > > A) If someone can identify what this power leak is and fix it in some
> > >    other way we can revert this patch.
> > > B) If someone can show that their particular board doesn't have this
> > >    power leak (maybe they have rails hooked up differently?) we can
> > >    perhaps add a device tree property indicating that for some boards
> > >    it's OK to turn this rail off.  I don't want to add this property
> > >    until I know of a board that needs it.
> > >
> > > Fixes: fd968973de95 ("phy: Add driver for rockchip Display Port PHY")
> > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > ---
> > > As far as I know Yakir (the original author) is no longer at Rockchip.
> > > I've added a few other Rockchip people and hopefully one of them can
> > > help direct even if they're not directly responsible.
> > >
> > >  drivers/phy/rockchip/phy-rockchip-dp.c | 11 +++++++----
> > >  1 file changed, 7 insertions(+), 4 deletions(-)
> >
> > Can you help direct this to the right person?  ...or should we just
> > land it and assume it's fine?
>
> I tink Kishon as phy-maintainer is the correct person to take on this
> patch, but maybe he's waiting for the merge-window to be over.

Yeah, definitely Kishon should be the one to land.  I was kinda hoping
to get confirmation from the Rockchip guys that this was a good idea
across the board for rk3288 since I can only really test
rk3288-veyron.  They'd have access to the SoC design and could tell
more about what this bit actually does in the SoC.

...in any case, if they don't respond then presumably we'd be good to
land once the merge window is over and Kishon is landing patches
again.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
