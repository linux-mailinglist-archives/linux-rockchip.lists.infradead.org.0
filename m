Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC6312DA66
	for <lists+linux-rockchip@lfdr.de>; Tue, 31 Dec 2019 17:48:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GAIGh9raq72yMGaMOaoDPHCem5gh+B0aZtz2DJN5GD8=; b=reiosV0nKnEAz/
	OqtF9xlnC6Vm5zfFXasTOgezj/kPOmiofnS3VDP7JT2EOeXVM9gGAgbYZ04zvLI3oWf7SOLahjOFT
	Nxj160HtlQ1/zUeHQoomdq6u8fxTzx2ECoMR20rGKNySRmyE5k3rPVSYLs5k30ndNJvbWZjJRpJP2
	FGUJFs/yFhdA/L59InXvyDqT6pU7hs3wBRT3fTe4NKXG/XnbZ2YRcHtFqk0VvN/QPO+zpDC0/Z7Ly
	1xBFFl9J+sokwoP+q7HVAAVJjHriPvFT1reVgQNr/+IoDYHrP2j1T1EBM7SDH5T01ht7ejCpHcLEw
	htcVGm8SgEwhfe98RcTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imKgW-0005fx-DP; Tue, 31 Dec 2019 16:47:56 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imKgS-0005fY-Ta; Tue, 31 Dec 2019 16:47:54 +0000
Received: by mail-ed1-x544.google.com with SMTP id dc19so35609546edb.10;
 Tue, 31 Dec 2019 08:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5cGsByFr4h/gn5GTGed+TWKDlfh+tiGQaOBrL5+LciQ=;
 b=tekFZI5vkkt/vDaFdbyXiQ9T9oK543WnjVXoBu2WSNurH2ETaVpPDmsqM/K4vBR/SZ
 QJ9dLI0sWWF7sZt8UB0IgZ9v6sVztJashLl+a+gl5iZq+106TIB6ZxD1SvOu/zmktekT
 PK+wiOiqUfIlKDh8Kx+4Vkthdbov7erfXrdeg7QSQUADqffINId63yD2I8/yhnGoYU44
 Q/uI1s2ZzJ6YVG472BaPdUKx7qXSBEI5Pea9VlVAR95W9Qly/Z+jEFDp/D7AicBTDVir
 PCRXo3PikLY/zOOZKEFuW6wWRvo5r6hpX65ZhrES6wnNDVWK1AWuc/cwHvqDBVHnKmTQ
 ipNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5cGsByFr4h/gn5GTGed+TWKDlfh+tiGQaOBrL5+LciQ=;
 b=pddoVgBPLr+8tgR7e6qt6ZnBXb0zvdS8zzgnmUWZ0rzrPKLijo5d+jwDkoaRjBmJW0
 F1YZp9rZ023ireTu799+7OAk2kyz0PzPAgJbC9q6c89WHcOJLJnzh5npDVyNF8nr6+Wa
 1jqibzlXry371CTo0GUj1UB6EMMf18cmPBScdcjHZYdjC0d7Tv/R4a/53jY/jI8tJITH
 OV484zOgahv9rI+HnD+X05B80d641rfdoysUdoDEgcMQ6lMYHAKrg4w87csvhAKKCe72
 TIcbWDtSw7fQaon06Yv47oVSTk3IfTZLC4wJhrZTl68vPc3U1huK8c3Mk/SXvWmeAdzj
 +xFg==
X-Gm-Message-State: APjAAAU3KgUVYhBq9i7FNsqh10ml6L/qfFyk4ukzxiSeH6iwc6PBgQiW
 5GjiJvkwz5vTrZVAoAAaeE8RYwKXKH0xJMQuEUc=
X-Google-Smtp-Source: APXvYqyPr5J81gQPrQoYCkT+1zBN3nq2chGdkSn9ZwIahevBNVTzIArSqt56/oLThVzZHDREzBC0RWi6Rgxu34poChg=
X-Received: by 2002:a50:fb96:: with SMTP id e22mr77460467edq.18.1577810870473; 
 Tue, 31 Dec 2019 08:47:50 -0800 (PST)
MIME-Version: 1.0
References: <20191227173707.20413-1-martin.blumenstingl@googlemail.com>
 <20191227173707.20413-2-martin.blumenstingl@googlemail.com>
 <dd38ff5c-6a14-bb6a-4df5-d706f99234e9@arm.com>
 <CAFBinCDs3a8TJcQKgHUkDvssMR6Y2Kys38p50P0q=2KOiDTNHg@mail.gmail.com>
 <fe45f4f8-8c67-ded2-90bf-8d5fd6874876@arm.com>
 <CAFBinCByzLLdVTL0v=eC-TbZQnwnDY7cBLf4jyWq7N4PA1rr+A@mail.gmail.com>
 <ff2bdd26-3c34-63db-beb5-8f7c9fc7e790@arm.com>
In-Reply-To: <ff2bdd26-3c34-63db-beb5-8f7c9fc7e790@arm.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 31 Dec 2019 17:47:39 +0100
Message-ID: <CAFBinCAgzHJQpcf1WVQPkNXOq1ziXp7nx=ZAU9_2-VzA9hg-Yw@mail.gmail.com>
Subject: Re: [RFC v2 1/1] drm/lima: Add optional devfreq support
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_084752_979334_BE11B3CD 
X-CRM114-Status: GOOD (  25.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, airlied@linux.ie,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 steven.price@arm.com, linux-rockchip@lists.infradead.org, wens@csie.org,
 yuq825@gmail.com, daniel@ffwll.ch, linux-amlogic@lists.infradead.org,
 alyssa.rosenzweig@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Robin,

On Tue, Dec 31, 2019 at 5:40 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2019-12-31 2:17 pm, Martin Blumenstingl wrote:
> > Hi Robin,
> >
> > On Mon, Dec 30, 2019 at 1:47 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >>
> >> On 2019-12-29 11:19 pm, Martin Blumenstingl wrote:
> >>> Hi Robin,
> >>>
> >>> On Sun, Dec 29, 2019 at 11:58 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >>>>
> >>>> Hi Martin,
> >>>>
> >>>> On 2019-12-27 5:37 pm, Martin Blumenstingl wrote:
> >>>>> Most platforms with a Mali-400 or Mali-450 GPU also have support for
> >>>>> changing the GPU clock frequency. Add devfreq support so the GPU clock
> >>>>> rate is updated based on the actual GPU usage when the
> >>>>> "operating-points-v2" property is present in the board.dts.
> >>>>>
> >>>>> The actual devfreq code is taken from panfrost_devfreq.c and modified so
> >>>>> it matches what the lima hardware needs:
> >>>>> - a call to dev_pm_opp_set_clkname() during initialization because there
> >>>>>      are two clocks on Mali-4x0 IPs. "core" is the one that actually clocks
> >>>>>      the GPU so we need to control it using devfreq.
> >>>>> - locking when reading or writing the devfreq statistics because (unlike
> >>>>>      than panfrost) we have multiple PP and GP IRQs which may finish jobs
> >>>>>      concurrently.
> >>>>
> >>>> I gave this a quick try on my RK3328, and the clock scaling indeed kicks
> >>>> in nicely on the glmark2 scenes that struggle, however something appears
> >>>> to be missing in terms of regulator association, as the appropriate OPP
> >>>> voltages aren't reflected in the GPU supply (fortunately the initial
> >>>> voltage seems close enough to that of the highest OPP not to cause major
> >>>> problems, on my box at least). With panfrost on RK3399 I do see the
> >>>> supply voltage scaling accordingly, but I don't know my way around
> >>>> devfreq well enough to know what matters in the difference :/
> >>> first of all: thank you for trying this out! :-)
> >>>
> >>> does your kernel include commit 221bc77914cbcc ("drm/panfrost: Use
> >>> generic code for devfreq") for your panfrost test?
> >>> if I understand the devfreq API correct then I suspect with that
> >>> commit panfrost also won't change the voltage anymore.
> >>
> >> Oh, you're quite right - I was already considering that change as
> >> ancient history, but indeed it's only in 5.5-rc, while that board is
> >> still on 5.4.y release kernels. No wonder I couldn't make sense of how
> >> the (current) code could possibly be working :)
> >>
> >> I'll try the latest -rc kernel tomorrow to confirm (now that PCIe is
> >> hopefully fixed), but I'm already fairly confident you've called it
> >> correctly.
> > I just tested it with the lima driver (by undervolting the GPU by
> > 0.05V) and it seems that dev_pm_opp_set_regulators is really needed.
> > I'll fix this in the next version of this patch and also submit a fix
> > for panfrost (I won't be able to test that though, so help is
> > appreciated in terms of testing :))
>
> Yeah, I started hacking something up for panfrost yesterday, but at the
> point of realising the core OPP code wants refactoring to actually
> handle optional regulators without spewing errors, decided that was
> crossing the line into "work" and thus could wait until next week :D
I'm not sure what you mean, dev_pm_opp_set_regulators uses
regulator_get_optional.
doesn't that mean that it is optional already?


Martin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
