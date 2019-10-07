Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4608DCEAAB
	for <lists+linux-rockchip@lfdr.de>; Mon,  7 Oct 2019 19:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbDJfbT69ap3cAM31sF6Nmh1PM3xmO1NYk8/hmkfK/s=; b=Ip/U6xkS/kshzu
	FIdutoB7ivqDot2GY6uUhJGeW0vEb75KTyEo8RotoqPCnBJcyrI+QINh9yvYLdtnS/WTC1es+gufv
	eshZyTsnW4LvT4OxD3sYrNVPfvlTb9dldYalx5INP4xUKh0WxkoUA0Mc2wl3bE7p32IYJdnoS+Rv1
	gELmrqSu2gDX3FrLBcudY1pXio+rbTc5qFgXWnWonv3GZ1Etufi/M0dhY/iKF+TjHt6FTBGYjA3LH
	Zt2OSdQBFa/RGny34qgGdTSkwyZcYlupeQ7jT6opyYtihekwN48gk1rm36zSxAXqns9i88ZB8BJSK
	79oWP4njR0tiHlnGfF2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHWpx-0005vB-E9; Mon, 07 Oct 2019 17:30:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHWpk-0005Zo-0D; Mon, 07 Oct 2019 17:30:09 +0000
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2EA1A218AC;
 Mon,  7 Oct 2019 17:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570469407;
 bh=7BgONx2fxTCBerkz+kZbipHG1ITh4B74FEdi9hVq484=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qWQvAQdNF/Y5LcuOkgQNFbrOYyT9zV8nGvQWGIalDCdrCIVR6/XSgL48CyNJqeOpW
 wkoJhtMz7y3IYD01mP1Wrjl9bN977MFW9mehzUiNsgxus43IHZn6NsBgmCM2nRA94W
 gP8kq+CEaHsP6v680i7rvL8uFTY1XraSbw5To80E=
Received: by mail-lj1-f180.google.com with SMTP id a22so14600836ljd.0;
 Mon, 07 Oct 2019 10:30:07 -0700 (PDT)
X-Gm-Message-State: APjAAAXUyP2Dw08iixJpiniOVda7zVue9QcN1R9yxW+ZZ/ttFXyPku24
 CrDwLEx3mLYpAat+aGsuPuUtsLZPzNkWOENSnc8=
X-Google-Smtp-Source: APXvYqwmBhQ/7r1sccn69bdteEM2oYrlVQ4Im2gzzv/FHBYneH2khccdbHlxPWXIpivEwoFLYEN1637fU1HLJrcElvg=
X-Received: by 2002:a2e:9159:: with SMTP id q25mr376354ljg.225.1570469405263; 
 Mon, 07 Oct 2019 10:30:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191004144549.3567-1-krzk@kernel.org> <87sgo4hjii.fsf@intel.com>
 <CADnq5_MqGehpWwOAxYg0T2x3qXisqmae2uGG5dijQX+Aa4NsoQ@mail.gmail.com>
In-Reply-To: <CADnq5_MqGehpWwOAxYg0T2x3qXisqmae2uGG5dijQX+Aa4NsoQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 7 Oct 2019 19:29:54 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeVFeSDpxPv-rDywCafWbN3mivtcM3UQX_+wZkyPcZwPQ@mail.gmail.com>
Message-ID: <CAJKOXPeVFeSDpxPv-rDywCafWbN3mivtcM3UQX_+wZkyPcZwPQ@mail.gmail.com>
Subject: Re: [PATCH TRIVIAL v2] gpu: Fix Kconfig indentation
To: Alex Deucher <alexdeucher@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_103008_077635_4C69325C 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Jiri Kosina <trivial@kernel.org>, lima@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, nouveau <nouveau@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sean Paul <sean@poorly.run>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019 at 18:09, Alex Deucher <alexdeucher@gmail.com> wrote:
>
> On Mon, Oct 7, 2019 at 7:39 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
> >
> > On Fri, 04 Oct 2019, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >  drivers/gpu/drm/i915/Kconfig             |  12 +-
> > >  drivers/gpu/drm/i915/Kconfig.debug       | 144 +++++++++++------------
> >
> > Please split these out to a separate patch. Can't speak for others, but
> > the patch looks like it'll be conflicts galore and a problem to manage
> > if merged in one big lump.
>
> Yes, it would be nice to have the amd patch separate as well.

I'll split the AMD and i915 although I am not sure if it is sense to
split such trivial patch per each driver.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
