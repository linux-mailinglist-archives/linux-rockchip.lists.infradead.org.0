Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8818433365
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 17:22:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EAPGJ/OTY3C3wSGrsks0Rd0ivMgJyWzqyOgZHJaoPrY=; b=g0Iil4HyD3514n
	A6snBLCPXo8y7gzdL9wGlRnTcxDNGysbQiOnOOK4TKEwlTsivTdWufMhAqDtWNCU5uqKMjhsce6GX
	cyZRO9abgl5DkQO7PPxP0numNhKhnTmznfZTlYzs8RJeZrDmgNbou8bOG8FDr0nStVy7auWTPJyNB
	Vcyxj6BuTqMe99R0gl7h7b1o+NV0CyeJNowJRIg0NcY3zv076Gbi5LXBphJHre6B887l4U4gZwfz0
	x9FWaK8Mb04jk1lfYv8nOT35qX3/oF/iKQQvioz9PY7ru74314hocxDFeQgQJqGysWr+ghrZwB68r
	0hc8mAyzHSccaY/KF/iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXonL-0003aX-0r; Mon, 03 Jun 2019 15:22:43 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXonD-0003TZ-6N
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 15:22:36 +0000
Received: by mail-ua1-x941.google.com with SMTP id p5so877653uar.11
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Jun 2019 08:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uUAvxoeII5KrsgiehiEtR11+rs8kWwhifr5LUT7zXxA=;
 b=bGT+bYiM3Dp5MVMx/qeUbjdC9FkljtDPAIP5Y7y07YFogHMKYZCTZn6cpmxLd36Zoa
 89x/+hE3F5AEu0RGNwuirn+ZIHlIhaGBP9FXH5ukvhc757Ro3DIkQjQwkqxwKzaq5iEY
 6FssEapPaCShNs7o8uR9nQ4L+vr2XPr4rjW20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uUAvxoeII5KrsgiehiEtR11+rs8kWwhifr5LUT7zXxA=;
 b=WOcFPA2dFCv73xjLO1BfQ7Bd1ShP3O04LjzeGQXMwOPn3mjRHBXgvo8IpItS4SCacR
 Z0xJvEL437BC9258uPjrqxHCbEdesGnDA3b46U+S75C1LovbDv4dClVWtopf1PHZI/O5
 GM8+mO4d2pe0ldkDIv7LYitH2EGhTvZN915an5SYlOcs0/EetEuMld2jElA7TMDPKEkI
 qYfaH89/ZUTvSzU9mlMpo/aN8SXayiWbeydjuUHTYxtr8N7oaYTu5q6/SeVzHiTq3UHA
 RSCYfck4L8k0DlmkBzClY7D7g2u4StSDOPI8N5jzAjlxzvt2KRHKrWi3F53e8TbWsWYv
 UF9g==
X-Gm-Message-State: APjAAAXKRd3XE9VsbVqWXr0lwTJJF5kux82g/WXMdFtViRuLXOu0Kgbj
 GYkwiVeO+4Q0xgMm3sioiiWizMG9n7w=
X-Google-Smtp-Source: APXvYqy9XvIZrbrlW/OnvDI/JDjWcXgKPaZWWAwMDNV82HH7Ko4BtTVIGyb7Ug21FN9Qr09XQSkTdA==
X-Received: by 2002:ab0:5972:: with SMTP id o47mr13068398uad.9.1559575353709; 
 Mon, 03 Jun 2019 08:22:33 -0700 (PDT)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com.
 [209.85.222.54])
 by smtp.gmail.com with ESMTPSA id l195sm17106629vki.54.2019.06.03.08.22.31
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 08:22:31 -0700 (PDT)
Received: by mail-ua1-f54.google.com with SMTP id j2so2743534uaq.5
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Jun 2019 08:22:31 -0700 (PDT)
X-Received: by 2002:ab0:670c:: with SMTP id q12mr12649951uam.106.1559575350775; 
 Mon, 03 Jun 2019 08:22:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190507234857.81414-1-dianders@chromium.org>
 <79ca5499-6b7d-fe55-2030-283f5cfb1d27@rock-chips.com>
 <82480aa5-ab2e-11c5-8dd5-c395f72fc6e7@ti.com>
In-Reply-To: <82480aa5-ab2e-11c5-8dd5-c395f72fc6e7@ti.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 3 Jun 2019 08:22:18 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Us1WyEqYDqVSuA+QPCDU7ceMEwwaWKtLz9ZNBFD0E7NQ@mail.gmail.com>
Message-ID: <CAD=FV=Us1WyEqYDqVSuA+QPCDU7ceMEwwaWKtLz9ZNBFD0E7NQ@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip-dp: Avoid power leak by leaving the PHY
 power on
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_082235_229607_04D56A21 
X-CRM114-Status: GOOD (  27.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
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
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Lin Huang <hl@rock-chips.com>,
 Derek Basehore <dbasehore@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 Huang Jiachai <hjc@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "nickey.yang \(nickey.yang@rock-chips.com\)" <nickey.yang@rock-chips.com>,
 Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>,
 wzz <wzz@rock-chips.com>, Guenter Roeck <groeck@chromium.org>,
 Caesar Wang <wxt@rock-chips.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Kishon,

On Mon, Jun 3, 2019 at 4:22 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi,
>
> On 20/05/19 1:34 PM, Caesar Wang wrote:
> > Hi Doug,
> >
> > For now,  nobody of rockchip is responsible for this driver.
> > Cc: Nickey, Zain, Hjc
> >
> >
> > On 5/8/19 7:48 AM, Douglas Anderson wrote:
> >> While testing a newer kernel on rk3288-based Chromebooks I found that
> >> the power draw in suspend was higher on newer kernels compared to the
> >> downstream Chrome OS 3.14 kernel.  Specifically the power of an
> >> rk3288-veyron-jerry board that I tested (as measured by the smart
> >> battery) was ~16 mA on Chrome OS 3.14 and ~21 mA on a newer kernel.
> >>
> >> I tracked the regression down to the fact that the "DP PHY" driver
> >> didn't exist in our downstream 3.14.  We relied on the eDP driver to
> >> turn on the clock and relied on the fact that the power for the PHY
> >> was default turned on.
> >>
> >> Specifically the thing that caused the power regression was turning
> >> the eDP PHY _off_.  Presumably there is some sort of power leak in the
> >> system and when we turn the PHY off something is leaching power from
> >> something else and causing excessive power draw.
> >>
> >> Doing a search through device trees shows that this PHY is only ever
> >> used on rk3288.  Presumably this power leak is present on all
> >> rk3288-SoCs running upstream Linux so let's just whack the driver to
> >> make sure we never turn off power.  We'll still leave the parts that
> >> turn _on_ the power and grab the clock, though.
> >>
> >> NOTES:
> >> A) If someone can identify what this power leak is and fix it in some
> >>     other way we can revert this patch.
> >> B) If someone can show that their particular board doesn't have this
> >>     power leak (maybe they have rails hooked up differently?) we can
> >>     perhaps add a device tree property indicating that for some boards
> >>     it's OK to turn this rail off.  I don't want to add this property
> >>     until I know of a board that needs it.
> >>
> >> Fixes: fd968973de95 ("phy: Add driver for rockchip Display Port PHY")
> >> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> >
> >
> > Reviewed-by: Caesar Wang <wxt@rock-chips.com>
> >
> >> ---
> >> As far as I know Yakir (the original author) is no longer at Rockchip.
> >> I've added a few other Rockchip people and hopefully one of them can
> >> help direct even if they're not directly responsible.
> >>
> >>   drivers/phy/rockchip/phy-rockchip-dp.c | 11 +++++++----
> >>   1 file changed, 7 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/phy/rockchip/phy-rockchip-dp.c
> >> b/drivers/phy/rockchip/phy-rockchip-dp.c
> >> index 8b267a746576..10bbcd69d6f5 100644
> >> --- a/drivers/phy/rockchip/phy-rockchip-dp.c
> >> +++ b/drivers/phy/rockchip/phy-rockchip-dp.c
> >> @@ -35,7 +35,7 @@ struct rockchip_dp_phy {
> >>   static int rockchip_set_phy_state(struct phy *phy, bool enable)
> >>   {
> >>       struct rockchip_dp_phy *dp = phy_get_drvdata(phy);
> >> -    int ret;
> >> +    int ret = 0;
> >>         if (enable) {
> >>           ret = regmap_write(dp->grf, GRF_SOC_CON12,
> >> @@ -50,9 +50,12 @@ static int rockchip_set_phy_state(struct phy *phy, bool
> >> enable)
> >>       } else {
> >>           clk_disable_unprepare(dp->phy_24m);
> >>   -        ret = regmap_write(dp->grf, GRF_SOC_CON12,
> >> -                   GRF_EDP_PHY_SIDDQ_HIWORD_MASK |
> >> -                   GRF_EDP_PHY_SIDDQ_OFF);
> >> +        /*
> >> +         * Intentionally don't turn SIDDQ off when disabling
> >> +         * the PHY.  There is a power leak on rk3288 and
> >> +         * suspend power _increases_ by 5 mA if you turn this
> >> +         * off.
> >> +         */
>
> Can someone in Rockchip try to find the root-cause of the issue? Keeping the
> PHY off shouldn't increase power draw.

It sounded like Chris already answered this, though?  Basically things
aren't hooked up in a way that this line can be turned safely turned
off in rk3288 with the current state of the world.  Chris says that
there's an ordering problem where we've got to turn off PD_VIO
_before_ we turn off SIDDQ.  ...but PD_VIO is a power domain that
contains much more than just eDP.  So if we truly wanted to try to
solve this we'd need to come up with a way to make sure PD_VIO got all
the way off and then turn this off only afterwards.

...and right now on rk3288 it looks like we never actually turn off
PD_VIO while the system is running.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
