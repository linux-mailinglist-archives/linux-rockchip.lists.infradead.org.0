Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EAA1B60E4
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Apr 2020 18:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ms2hOiIu8HAnU7FQSOfRxsZe7NLzBc/s/vQtuaujpLg=; b=k1SQUR6azWn0Oy
	UOSM7REgjXGtnFGSEyb1TcTOQfBHywKYOx1Qs60DAisv+/1XunwT4U+YF2mgJEDz1fa4H/gVNJNe0
	a2g51Q0oYQeAtM2X1tl7k1JODPnunYU/gvlN+doeClBtC3NGsPpxse3IT1cHlcu/i4MiEsNzUkIER
	qg94NKQ+Rh25Wu6ccxct5GrYiQbuzjxuIcfN9WzKtLJ8iUIkOzYOpoxbavD+Moyxu7AXBeETGBK0K
	v9c3kalnjRtN1V1AD18hZVQ9qMctaaY21q9uQLYBEGXdV3T7K1w4QjxEGSNF1/v8gglq6v/gcwa+X
	djjr/e+DPx/wTjXPnPag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jReh2-00017U-5N; Thu, 23 Apr 2020 16:27:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRegy-00015t-4o
 for linux-rockchip@lists.infradead.org; Thu, 23 Apr 2020 16:27:13 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C7C620704
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2020 16:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587659231;
 bh=oJ34fM4Ta8hdDUPK1NIZ5OW2YxGAZMAYKgcFrPLTFQw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=aeU19feiG1kal70oSGAvJnOtFDYKasdOn4ynQ+0JK9dpefRFOIEZAxFji43g6Q3zS
 vCRGpnYWa5Gk7apdbl1sgU/goi1pYzaaPr91sv8CHOHvyUJ2HQqtshuu4JF0E0Sqsn
 W5UEEO6yDqcMM/UAjCr2OvlxuHEkLFhN69AEFh90=
Received: by mail-qk1-f174.google.com with SMTP id l78so7003371qke.7
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2020 09:27:11 -0700 (PDT)
X-Gm-Message-State: AGi0PuZ0rLm66k4O1j6o8zxrUw5iG8K9PgSy9r7Iq6pY0TmY3yAvftUe
 ZnaGgDLoureqzKXDoYZjCOnl/mypqWag3xjpFQ==
X-Google-Smtp-Source: APiQypIHALtV6iDmzojAyUtQ54md8sedeQ7gh2nNx8UteLQUiYwnKBLuTP0Z3aJUvEizhFqA4pvIyAPLe8aSBUzbOtY=
X-Received: by 2002:a37:cc1:: with SMTP id 184mr4588821qkm.254.1587659230145; 
 Thu, 23 Apr 2020 09:27:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200423150510.6216-1-pgwipeout@gmail.com>
 <CAMdYzYoFvaVXoYo0-vZnEmXK4GKsO_i8Cdggr7AJ8U6uS_ZW8Q@mail.gmail.com>
 <84c67c59-49ec-e33f-250e-875151968ed2@arm.com>
 <CAMdYzYq5iQJJ-7qgTvo8j=kEA-rSMCafP2ctsAgmeob7m_oDSw@mail.gmail.com>
In-Reply-To: <CAMdYzYq5iQJJ-7qgTvo8j=kEA-rSMCafP2ctsAgmeob7m_oDSw@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 23 Apr 2020 11:26:58 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+Wg=q2YcWPUAYoZO8YE9s56KvEC_YUyMB2TmyRqsjFTQ@mail.gmail.com>
Message-ID: <CAL_Jsq+Wg=q2YcWPUAYoZO8YE9s56KvEC_YUyMB2TmyRqsjFTQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3399 pcie speed
To: Peter Geis <pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_092712_230282_D9316FD9 
X-CRM114-Status: GOOD (  22.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 11:13 AM Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Thu, Apr 23, 2020 at 11:49 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 2020-04-23 4:09 pm, Peter Geis wrote:
> > > On Thu, Apr 23, 2020 at 11:05 AM Peter Geis <pgwipeout@gmail.com> wrote:
> > >>
> > >> The rk3399 is capable of operating at PCIe gen 2 as per the TRM.
> > >> The device-tree incorrectly limits us to gen 1.
> > >>
> > >> Correctly set the maximum link speed to <2>.
> > >>
> > >> Tested on the rockpro64.
> > >
> > > Note, this was tested on the rockpro64 after I performed the hardware
> > > fixes as delineated at
> > > https://forum.pine64.org/showthread.php?tid=8374

Are you going to fix everyone's board?

> > >
> > > We probably will have to drop this back to <1> on board specific dts
> > > files if issues are discovered.
> >
> > I'd say commit 712fa1777207 and the fact that the current rev 1.8
> > datasheet only mentions 2.5GT/s rather weaken that argument. It would
> > seem safer to leave the default as-is, and only override it for boards
> > where Gen2 really is proven to work reliably. Which, er, is already the
> > case ;)
>
> Do we have a copy of this errata?
> I can't seem to find it.
> The write up in that commit is extremely vague.
>
> As the tegra mailing list often points out, the device-tree describes
> the hardware as it is.

I think that's DT describes the h/w not settings for the Linux kernel
which is different from what's discussed here.

> As:
> The rk3399 itself supports PCIe gen 2.
> The board specific implementations determine if we need to limit that to gen 1.
> The rk3399 should be set to 2, and any board that requires that to be
> redefined should do that via an override in their device-tree.
> This is similar to the gmac overrides for timing.
>
> Do we have a list of the boards that require pulling back down to gen 1?
>
> >
> > That said, "proven to work reliably" is itself a bit doubtful - my
> > NanoPC-T4 has always been rock-solid at Gen2 with a Samsung Evo 960
> > NVMe, yet I've seen plenty of reports of other NVMe models being
> > unusable with mainline due to failing link training ~90% of the time.
> > It's a grey area for sure.

That seems pretty clear to me as to what the default should be. What's
most likely to work OOTB for users.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
