Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B36E512D96F
	for <lists+linux-rockchip@lfdr.de>; Tue, 31 Dec 2019 15:18:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9U2+99aOipbkermAdU9oj2VvUOyvLqwdGwispW5dttc=; b=KHh9tx3uISDc/q
	XXLovfrECdNSEjOtVwtEYJjmWccmOI0CvpW7z0e19WvVZpAqtf1j4Tp/n8DZ/4yFFCn1BOeQImngC
	ENiGoq51mUY5/Vq6JOrr8U4kg+Ly4D1CtH5EOJ4QF+qZ+sCwKMdd9Z/mrmyNReVZKVomQcb5hwUGI
	uag29G699ttvC2xA0fEZdqhfKrYT04nZ9OUrLwjwuvjGfBbS9cSDwBAwIf3umD2yjmLlT1aFxTKiV
	kTPUAjB2l2YufNkaO/VnMPztxNqaRWm3oX5H6u8OmVjHWuuGMwEdIZmJLVf2pHrt/+dGnDlYpYH1m
	tPFGpzcGPOGK0YWLkHng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imILP-0006cH-GS; Tue, 31 Dec 2019 14:17:59 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imILL-0006bv-Lt; Tue, 31 Dec 2019 14:17:57 +0000
Received: by mail-ed1-x541.google.com with SMTP id dc19so35335116edb.10;
 Tue, 31 Dec 2019 06:17:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QNs8OlYzsZsgaTVTJ4d2AeZZS0KH6pA84bynm/T8fmw=;
 b=gdHiHIYZpnEpU9UnRF0qMaOQd/vPNh1srUcHFRQTZCCWy/OgG4612UzuYrLW90hbcU
 2FJj3DWjTlw/QQf12H8e3CC54SFF0KaFjGVsRBBNqs2igzCrKfPKjmaTQw1xhMg4C2RI
 LcToOOmbdeMjMXtjfkDCrrqsGdW2YKTbzbrX3FdXCgDbHOW0mqbRjzVRml2FKRHMrykb
 5zLuHok6Hl6e6IgLYSN4hytm1fu9r4EiMxoXmZhdq2g8FNGhpotKcz0rClrK4GD2Ba9i
 bFNpoBS5u4IRNHgVV7BfeDZ/KrFmv2notP1GU+lkSv4N9J+3Dd0fdJYotb6F1oai5FUa
 +W0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QNs8OlYzsZsgaTVTJ4d2AeZZS0KH6pA84bynm/T8fmw=;
 b=gEPALqGDWg8RiDeb+BafH3iqltCTt0AncEr0VuRGH/lCQFXZpG+4wvEug88/EROw5f
 N2kOb9t5OdwNsYS31sMfxW189MDvLJjZzmLIQ5hVtXrJdyFJ2ZM3LuRvcaqtnoyNbhOV
 zSY+8hVc2hE8LDjNMEGkcvLzjwEIqBGbA2K0G4HhP/DWSQ5qEGtGkU24ffUFM5fmnTdd
 8oKwJbX66U4LRd0xdMw8QgBa5cWTCpbwepG7As6es1uJQa2qCtYOUfo+N94ylOLV9IjS
 /8OXDSrdf7QDhZS4GqNF2Uso5DViMOrmbB7OXIN8tNLzBBz8q/iBOBk0Y0rWf9rk+6Rm
 NpUg==
X-Gm-Message-State: APjAAAUST+gl87xLHiCkcgWJOEh/GSTMLTXB5Z86z/WRJOcKo/LMhIXQ
 NTnYEVn8BRV2l5998G9GhWwzJZBjUOLTlTNB7yw=
X-Google-Smtp-Source: APXvYqwSiePXVoRUw8gJ/sEg4LKPTsG3G7GWxVQyLT4WISsO6zZ4PPra5S6beiWn62LpvYWzUGdJKa4tYfMAlEsF000=
X-Received: by 2002:a17:906:1a50:: with SMTP id
 j16mr70863648ejf.106.1577801873680; 
 Tue, 31 Dec 2019 06:17:53 -0800 (PST)
MIME-Version: 1.0
References: <20191227173707.20413-1-martin.blumenstingl@googlemail.com>
 <20191227173707.20413-2-martin.blumenstingl@googlemail.com>
 <dd38ff5c-6a14-bb6a-4df5-d706f99234e9@arm.com>
 <CAFBinCDs3a8TJcQKgHUkDvssMR6Y2Kys38p50P0q=2KOiDTNHg@mail.gmail.com>
 <fe45f4f8-8c67-ded2-90bf-8d5fd6874876@arm.com>
In-Reply-To: <fe45f4f8-8c67-ded2-90bf-8d5fd6874876@arm.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 31 Dec 2019 15:17:42 +0100
Message-ID: <CAFBinCByzLLdVTL0v=eC-TbZQnwnDY7cBLf4jyWq7N4PA1rr+A@mail.gmail.com>
Subject: Re: [RFC v2 1/1] drm/lima: Add optional devfreq support
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_061755_744102_63BD90BC 
X-CRM114-Status: GOOD (  23.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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

On Mon, Dec 30, 2019 at 1:47 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2019-12-29 11:19 pm, Martin Blumenstingl wrote:
> > Hi Robin,
> >
> > On Sun, Dec 29, 2019 at 11:58 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >>
> >> Hi Martin,
> >>
> >> On 2019-12-27 5:37 pm, Martin Blumenstingl wrote:
> >>> Most platforms with a Mali-400 or Mali-450 GPU also have support for
> >>> changing the GPU clock frequency. Add devfreq support so the GPU clock
> >>> rate is updated based on the actual GPU usage when the
> >>> "operating-points-v2" property is present in the board.dts.
> >>>
> >>> The actual devfreq code is taken from panfrost_devfreq.c and modified so
> >>> it matches what the lima hardware needs:
> >>> - a call to dev_pm_opp_set_clkname() during initialization because there
> >>>     are two clocks on Mali-4x0 IPs. "core" is the one that actually clocks
> >>>     the GPU so we need to control it using devfreq.
> >>> - locking when reading or writing the devfreq statistics because (unlike
> >>>     than panfrost) we have multiple PP and GP IRQs which may finish jobs
> >>>     concurrently.
> >>
> >> I gave this a quick try on my RK3328, and the clock scaling indeed kicks
> >> in nicely on the glmark2 scenes that struggle, however something appears
> >> to be missing in terms of regulator association, as the appropriate OPP
> >> voltages aren't reflected in the GPU supply (fortunately the initial
> >> voltage seems close enough to that of the highest OPP not to cause major
> >> problems, on my box at least). With panfrost on RK3399 I do see the
> >> supply voltage scaling accordingly, but I don't know my way around
> >> devfreq well enough to know what matters in the difference :/
> > first of all: thank you for trying this out! :-)
> >
> > does your kernel include commit 221bc77914cbcc ("drm/panfrost: Use
> > generic code for devfreq") for your panfrost test?
> > if I understand the devfreq API correct then I suspect with that
> > commit panfrost also won't change the voltage anymore.
>
> Oh, you're quite right - I was already considering that change as
> ancient history, but indeed it's only in 5.5-rc, while that board is
> still on 5.4.y release kernels. No wonder I couldn't make sense of how
> the (current) code could possibly be working :)
>
> I'll try the latest -rc kernel tomorrow to confirm (now that PCIe is
> hopefully fixed), but I'm already fairly confident you've called it
> correctly.
I just tested it with the lima driver (by undervolting the GPU by
0.05V) and it seems that dev_pm_opp_set_regulators is really needed.
I'll fix this in the next version of this patch and also submit a fix
for panfrost (I won't be able to test that though, so help is
appreciated in terms of testing :))


Martin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
