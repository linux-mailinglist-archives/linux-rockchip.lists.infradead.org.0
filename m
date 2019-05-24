Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9899290FE
	for <lists+linux-rockchip@lfdr.de>; Fri, 24 May 2019 08:32:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTX7E0mnMWHgNMmo5zjoQg1ix3i/aVeAZzkXb23t8uI=; b=peI/3MZ0rHafjN
	K6QJdsQDL6xPihG09A/IYFBMpXN8MouPWKDgf3/WxHucqcAvFJKMWFwek1DPQbtqY6jwFgd5u+wQp
	SK0JQP57Xn/bBVdNJufNErLxrYRaAt6NAUdRB/O72edW5OjCB+NLE3kN7tVrW0UzqP8xW0SA1At3V
	bHAhccvYQA/K+c1w9VtoEdwxT9BZU4MsvmkUXxg3BINiSNOibONE6Phl/MROiSFrZMkFa9H5vitrE
	8V5dyxBoZUpNPXokE3V1CY1mLlAVgPY+P9qryGzD1ys+LTTNwbJL6foTtDbu5XBlgRpCCVVng0DjY
	bI7Y3evGgaqPc/hzPteQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU3kz-0004Rr-CG; Fri, 24 May 2019 06:32:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU3kv-0004RJ-Qj
 for linux-rockchip@lists.infradead.org; Fri, 24 May 2019 06:32:43 +0000
Received: from [46.183.103.17] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hU3ka-0002QF-W5; Fri, 24 May 2019 08:32:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Eduardo Valentin <edubezval@gmail.com>
Subject: Re: [PATCH] Revert "thermal: rockchip: fix up the tsadc pinctrl
 setting error"
Date: Fri, 24 May 2019 08:32:19 +0200
Message-ID: <2521723.3ZzQbFiSsD@phil>
In-Reply-To: <20190524022042.GA1936@localhost.localdomain>
References: <20190522141236.26987-1-heiko@sntech.de>
 <CAD=FV=UxwqkHpsxXhEHrQDY6MtymeT3Gn_G4Q5xSh6pZVWTRHA@mail.gmail.com>
 <20190524022042.GA1936@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_233242_189262_73D65868 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Enric Balletbo Serra <eballetbo@gmail.com>,
 Brian Norris <briannorris@chromium.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Doug Anderson <dianders@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Zhang Rui <rui.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 24. Mai 2019, 04:20:43 CEST schrieb Eduardo Valentin:
> On Wed, May 22, 2019 at 08:34:34AM -0700, Doug Anderson wrote:
> > Hi,
> > 
> > On Wed, May 22, 2019 at 7:12 AM Heiko Stuebner <heiko@sntech.de> wrote:
> > >
> > > This reverts commit 28694e009e512451ead5519dd801f9869acb1f60.
> > >
> > > The commit causes multiple issues in that:
> > > - the added call to ->control does potentially run unclocked
> > >   causing a hang of the machine
> > > - the added pinctrl-states are undocumented in the binding
> > > - the added pinctrl-states are not backwards compatible, breaking
> > >   old devicetrees.
> > >
> > > Fixes: 28694e009e51 ("thermal: rockchip: fix up the tsadc pinctrl setting error")
> > > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > > ---
> > >  drivers/thermal/rockchip_thermal.c | 36 +++---------------------------
> > >  1 file changed, 3 insertions(+), 33 deletions(-)
> > 
> > In case it helps with the urgency, there are lots of people who have
> > all independently needed to identify which commit stopped their boards
> > from booting mainline or broke temperature reading.  I'm aware of at
> > least these reports:
> > 
> > Reported-by: kernelci.org bot <bot@kernelci.org>
> > Reported-by: Enric Balletbo Serra <eballetbo@gmail.com>
> > Reported-by: Vicente Bergas <vicencb@gmail.com>
> > Reported-by: Jack Mitchell <ml@embed.me.uk>
> > Reported-by: Douglas Anderson <dianders@chromium.org>
> > 
> > I can confirm that my board boots again after this revert, thus:
> > 
> > Tested-by: Douglas Anderson <dianders@chromium.org>
> 
> I see. I can collect this revert if that is what unblocks you guys.
>
> Elaine, do you mind checking why these pinctrl changes are causing
> boot issues?

The pinctrl issue is secondary, it makes the thermal driver fail to
probe, due to not handling existing devicetrees properly.
Hence the driver needs to stay backwards compatible with existing
devicetrees.

The hang is caused by the call to the per-soc ->control callback before
the clocks get enabled, relying on it being on at boot and that isn't the
case everywhere.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
