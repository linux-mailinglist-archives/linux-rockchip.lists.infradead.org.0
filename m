Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 014651B607C
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Apr 2020 18:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xqakabhVSLTjeSdcRfkYm9TYUPpAQFeCMvMUoxToTI=; b=okQ8v1WuljuOfo
	R/OjGYYgTmi+BfJCb3RESr6iAKB9I3ZeYBmj0jK3A2E64sSKZUOFmBfwIyZQmJr7E9QZphPfMVRRC
	PO8Wcn3/PeqjmQi2BvhLwgoOH/z6tNixaUiHdcAPMceJ4BAcXb6w+kO3I4pFIWQUJjNA7MqCpa24Y
	jjjWa4t5xDgzC+KJygLgNtEUw6UaXm8aQB8vnB3o+97geHGG0M5k61fsLeR8jX21J/fRSWfFDmXuK
	8dAl6yXiHvpkrUF4okatmxeOCZQZuV9AB5S6qKQ1GAXOvYUvFvQHxHhdhpbBDHD8fLkAsKPvdzkk9
	LpF7SRDg6mbPrEYXJfmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jReTw-00075z-Hy; Thu, 23 Apr 2020 16:13:44 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jReTt-00074J-Mw
 for linux-rockchip@lists.infradead.org; Thu, 23 Apr 2020 16:13:43 +0000
Received: by mail-ed1-x544.google.com with SMTP id d16so4751081edq.7
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2020 09:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rFFNeriFnA02G6UneYz/WuGch0xk/VvyNRsskbF1Nbs=;
 b=Inlm1FfquGk3HClZUBKK4Gigwx4ZWfqJ1eHSZf8SS1mEhfqtGq8tj8Ig2omI83apvT
 6qD7S8qwrAGFv7yKyvbc1iNMlfAbfiBExEquKqI/3iZ7jXNYBXkr77YmeEpsQsOi6ZFP
 HwwF3ksOaNLyDqUVzaZT4fywlpDy8SNO+3ZvRErSO6CT3VP4+Tw20iDx/S7ZohEHpI5n
 llcPmE01ZsXKtMtZ9DXNMySf2myPLth9oYqAn9G8eBY0Sv3xuXhPpFpByfSnUJH1Ij1e
 zI7cxj04zJV+I9zc/7jTqjEWvsqCfxob6gJZ5omooChPEwEqj558gK0zPHq0JRDg+SHf
 MGaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rFFNeriFnA02G6UneYz/WuGch0xk/VvyNRsskbF1Nbs=;
 b=II/p41LYr27Tyyk1cuThhb5aUfFcN3jJ7QJlJVJtx8q9VAWOrW4nffRqpyYWfVslmU
 Q0Sfp+wEzpuoq+yWOY8bvY9B0mPe5nRTc59sRQbcEaneDzoaq534iIMprTFSOKhIS9jw
 udDOOSCGFN5n19FHPkHZANOOti0tPwkcpOj/FD7iiQyJDY/MhjwJW/wJq5eTUzkSNiup
 g4+67+9BQQbLufcG9btBmw5tmYwwA26qMg1jGh+0pHUW9Rf40BZ9v/OOGrrC5NtcgU8+
 y07VD2E+3E+Oss9BRZRl4mOubTpIdi418gAY0zEOeN9i4/LjwbYAjnC3m/hMBshjfyY+
 fqSw==
X-Gm-Message-State: AGi0PuboFI9LXbsPsbhKdk67jHSac9X1Ptad9wTUhPsmAEahT5VPt12j
 xzHgyWKG/OY3/DUWD6fALgPl9i27jncRyWtd4ck=
X-Google-Smtp-Source: APiQypLkXhq+TZtZAK+ZuDuFvIYwXMmb+nNBOzPIp0O1U30MApFVOadRDXNdelJxfj0IbhWA2dryl3YgIj0qC7fgAHA=
X-Received: by 2002:a05:6402:48b:: with SMTP id
 k11mr3441031edv.47.1587658418155; 
 Thu, 23 Apr 2020 09:13:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200423150510.6216-1-pgwipeout@gmail.com>
 <CAMdYzYoFvaVXoYo0-vZnEmXK4GKsO_i8Cdggr7AJ8U6uS_ZW8Q@mail.gmail.com>
 <84c67c59-49ec-e33f-250e-875151968ed2@arm.com>
In-Reply-To: <84c67c59-49ec-e33f-250e-875151968ed2@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 23 Apr 2020 12:13:25 -0400
Message-ID: <CAMdYzYq5iQJJ-7qgTvo8j=kEA-rSMCafP2ctsAgmeob7m_oDSw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3399 pcie speed
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_091341_745016_52156713 
X-CRM114-Status: GOOD (  22.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pgwipeout[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 11:49 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-04-23 4:09 pm, Peter Geis wrote:
> > On Thu, Apr 23, 2020 at 11:05 AM Peter Geis <pgwipeout@gmail.com> wrote:
> >>
> >> The rk3399 is capable of operating at PCIe gen 2 as per the TRM.
> >> The device-tree incorrectly limits us to gen 1.
> >>
> >> Correctly set the maximum link speed to <2>.
> >>
> >> Tested on the rockpro64.
> >
> > Note, this was tested on the rockpro64 after I performed the hardware
> > fixes as delineated at
> > https://forum.pine64.org/showthread.php?tid=8374
> >
> > We probably will have to drop this back to <1> on board specific dts
> > files if issues are discovered.
>
> I'd say commit 712fa1777207 and the fact that the current rev 1.8
> datasheet only mentions 2.5GT/s rather weaken that argument. It would
> seem safer to leave the default as-is, and only override it for boards
> where Gen2 really is proven to work reliably. Which, er, is already the
> case ;)

Do we have a copy of this errata?
I can't seem to find it.
The write up in that commit is extremely vague.

As the tegra mailing list often points out, the device-tree describes
the hardware as it is.
As:
The rk3399 itself supports PCIe gen 2.
The board specific implementations determine if we need to limit that to gen 1.
The rk3399 should be set to 2, and any board that requires that to be
redefined should do that via an override in their device-tree.
This is similar to the gmac overrides for timing.

Do we have a list of the boards that require pulling back down to gen 1?

>
> That said, "proven to work reliably" is itself a bit doubtful - my
> NanoPC-T4 has always been rock-solid at Gen2 with a Samsung Evo 960
> NVMe, yet I've seen plenty of reports of other NVMe models being
> unusable with mainline due to failing link training ~90% of the time.
> It's a grey area for sure.
>
> Robin.
>
> >>
> >> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> >> ---
> >>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >> index 74f2c3d49095..e9efd330810b 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >> @@ -248,7 +248,7 @@
> >>                                  <0 0 0 3 &pcie0_intc 2>,
> >>                                  <0 0 0 4 &pcie0_intc 3>;
> >>                  linux,pci-domain = <0>;
> >> -               max-link-speed = <1>;
> >> +               max-link-speed = <2>;
> >>                  msi-map = <0x0 &its 0x0 0x1000>;
> >>                  phys = <&pcie_phy 0>, <&pcie_phy 1>,
> >>                         <&pcie_phy 2>, <&pcie_phy 3>;
> >> --
> >> 2.20.1
> >>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
