Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCDECF8D2
	for <lists+linux-rockchip@lfdr.de>; Tue,  8 Oct 2019 13:49:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VhjRitgAMTayrBcQnLc+QzwSbPrsqAH4PSBAOlme60w=; b=oK4BwEjc+kU/d1
	y+O2Ez+OX+5o3cMfUP76OOA3nPiCUV4TnI3P78jU49wnguL8zXBRNxjWaaWNV5X5TnaUkfr/w1LNH
	4LqXqeposTVUvtCYEiACaZteVQaLBlMJjlUwJCxBEvkK2WiXT2u7huCp7jUIh2fae/ZyJ4ZXnc0py
	VA/PSuHlvQme7s1uqncIS+CgnTl/DPxxO8RWfvsNEQi1IqeNKesL7f+t3y0oAudrPbHFPPgIQzn6I
	X5/5m9XfgCdxf2547wIkuqH0hcwsjDe6w8BACBeSzXEoiQahi4bvuLcWBPbxwCwvrfPcJIN2HT1eS
	UqBZ5qnDAY8vV+DHCj+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHnzw-0006Ru-Po; Tue, 08 Oct 2019 11:49:48 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHnzt-0006Qy-2v
 for linux-rockchip@lists.infradead.org; Tue, 08 Oct 2019 11:49:46 +0000
Received: by mail-vs1-xe41.google.com with SMTP id v19so11099797vsv.3
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Oct 2019 04:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gashf1ZAzd7Key4/NTgvhc64QRBwluBpWB6I3jCKxOs=;
 b=fiKEYopPXYm6rnp9NjGkZ1KcxJYHZsxjBsMcc4hv/5OjHpyX6k5WIZm5dG9fad39cl
 Xtf1v1I9/muc4vBfWDoHarMolIog9R7edzArMf/o2czUC+w50R5TMNqP3rzykMDI+E2t
 jnjKDrirhh3DlISSyuneGArhMkA2RopW8++mtlSmrDMvtMFAzq9nh1UcDtrWzpFldPSp
 21K/vLD74zrdAEg567mSi9sOZcJWbTBZK/S+CBLwbF26h+hAilx7tORo5YQ8GMwtXwpf
 CfMcWqI2vDL/JiCrV2asdoqPcJOctLMLTRciRj0d9PNZtHT3HwjFlBCRWjkFcBA1eH1+
 Qs5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gashf1ZAzd7Key4/NTgvhc64QRBwluBpWB6I3jCKxOs=;
 b=MgzEsZxxeqo8poomAy8/xHNUgwEKq/ZV0JYQNCEA2BKfej9t5Iw+7t8oFdBdJojy0W
 /I23NeDER90gZ2AZfPW+1NBUR3NFDZJw8zCOKrB3iXZVkT4KQy8XhrO0KE+fOKA2tvcI
 f1Wy/jd2t3Ivp0GdsmcBKdbp5gJ2nbFJzdEMQhw07Fgl821vQu43ao7Yf8coStf5GqGc
 rhKtqb2Tj0TUId0gzm3IpthY5fw7omA5z0xc8mXJuaq8Yh7qnxWqqXOqqrwNErIDdgTv
 ut48OdcagWCccMJzpkL/7wJPU22yunWL85yCQ+Eh/PjUykYaAGYeWzeb2AopC7NI2jYl
 VVkg==
X-Gm-Message-State: APjAAAXhcUGwK36t+fvMaLGADDxdYkMJ4R0cyrzUCQeL1hxD1aA2hF5+
 wS5+DIlD17nsMxsqjTS399pFz6qpKQoUtfOW8gC2YQ==
X-Google-Smtp-Source: APXvYqx1S5aRGmUgzD93NIsrCsojrRb50hnb1dlLYGdT6Yjq5noW1W3AgzaTaEm3MSleilsKWehRv1NgQwfNWVYKRbE=
X-Received: by 2002:a67:eb84:: with SMTP id e4mr17918307vso.165.1570535380644; 
 Tue, 08 Oct 2019 04:49:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190722193939.125578-1-dianders@chromium.org>
 <CAPDyKFoND5Kaam72zxO4wChO0z_1XL2KWX6oNjVcMUGA7G8RFg@mail.gmail.com>
 <CAD=FV=VTLoqGbxFFMT8h72cfHCLupyvZpD75JB0N86+kFA+vzw@mail.gmail.com>
 <CAPDyKFrPHguMrMvXN0yHbD9GmEg4m=J1Un=LcpE0PB7WqMRYSg@mail.gmail.com>
 <CAD=FV=W-qh2NnDc-C1_Tki3=D7vzNGG2PgnZjCjdLU9gL68AxA@mail.gmail.com>
In-Reply-To: <CAD=FV=W-qh2NnDc-C1_Tki3=D7vzNGG2PgnZjCjdLU9gL68AxA@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 8 Oct 2019 13:49:04 +0200
Message-ID: <CAPDyKFoXh9dzunsac9M43gHky1HjWvEBXXGp5Mj=0g3APM36aw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] mmc: core: Fix Marvell WiFi reset by adding SDIO
 API to replug card
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_044945_131018_62D9D3EB 
X-CRM114-Status: GOOD (  31.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Ganapathi Bhat <gbhat@marvell.com>, Brian Norris <briannorris@chromium.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Xinming Hu <huxinming820@gmail.com>, netdev <netdev@vger.kernel.org>,
 Andreas Fenkart <afenkart@gmail.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Amitkumar Karwar <amitkarwar@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Nishant Sarmukadam <nishants@marvell.com>, Avri Altman <avri.altman@wdc.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, "David S. Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 8 Oct 2019 at 01:39, Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Mon, Sep 16, 2019 at 2:25 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > On Wed, 11 Sep 2019 at 23:26, Doug Anderson <dianders@chromium.org> wrote:
> > >
> > > Hi,
> > >
> > > On Thu, Jul 25, 2019 at 6:28 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > > >
> > > > On Mon, 22 Jul 2019 at 21:41, Douglas Anderson <dianders@chromium.org> wrote:
> > > > >
> > > > > As talked about in the thread at:
> > > > >
> > > > > http://lkml.kernel.org/r/CAD=FV=X7P2F1k_zwHc0mbtfk55-rucTz_GoDH=PL6zWqKYcpuw@mail.gmail.com
> > > > >
> > > > > ...when the Marvell WiFi card tries to reset itself it kills
> > > > > Bluetooth.  It was observed that we could re-init the card properly by
> > > > > unbinding / rebinding the host controller.  It was also observed that
> > > > > in the downstream Chrome OS codebase the solution used was
> > > > > mmc_remove_host() / mmc_add_host(), which is similar to the solution
> > > > > in this series.
> > > > >
> > > > > So far I've only done testing of this series using the reset test
> > > > > source that can be simulated via sysfs.  Specifically I ran this test:
> > > > >
> > > > > for i in $(seq 1000); do
> > > > >   echo "LOOP $i --------"
> > > > >   echo 1 > /sys/kernel/debug/mwifiex/mlan0/reset
> > > > >
> > > > >   while true; do
> > > > >     if ! ping -w15 -c1 "${GW}" >/dev/null 2>&1; then
> > > > >       fail=$(( fail + 1 ))
> > > > >       echo "Fail WiFi ${fail}"
> > > > >       if [[ ${fail} == 3 ]]; then
> > > > >         exit 1
> > > > >       fi
> > > > >     else
> > > > >       fail=0
> > > > >       break
> > > > >     fi
> > > > >   done
> > > > >
> > > > >   hciconfig hci0 down
> > > > >   sleep 1
> > > > >   if ! hciconfig hci0 up; then
> > > > >     echo "Fail BT"
> > > > >     exit 1
> > > > >   fi
> > > > > done
> > > > >
> > > > > I ran this several times and got several hundred iterations each
> > > > > before a failure.  When I saw failures:
> > > > >
> > > > > * Once I saw a "Fail BT"; manually resetting the card again fixed it.
> > > > >   I didn't give it time to see if it would have detected this
> > > > >   automatically.
> > > > > * Once I saw the ping fail because (for some reason) my device only
> > > > >   got an IPv6 address from my router and the IPv4 ping failed.  I
> > > > >   changed my script to use 'ping6' to see if that would help.
> > > > > * Once I saw the ping fail because the higher level network stack
> > > > >   ("shill" in my case) seemed to crash.  A few minutes later the
> > > > >   system recovered itself automatically.  https://crbug.com/984593 if
> > > > >   you want more details.
> > > > > * Sometimes while I was testing I saw "Fail WiFi 1" indicating a
> > > > >   transitory failure.  Usually this was an association failure, but in
> > > > >   one case I saw the device do "Firmware wakeup failed" after I
> > > > >   triggered the reset.  This caused the driver to trigger a re-reset
> > > > >   of itself which eventually recovered things.  This was good because
> > > > >   it was an actual test of the normal reset flow (not the one
> > > > >   triggered via sysfs).
> > > > >
> > > > > Changes in v2:
> > > > > - s/routnine/routine (Brian Norris, Matthias Kaehlcke).
> > > > > - s/contining/containing (Matthias Kaehlcke).
> > > > > - Add Matthias Reviewed-by tag.
> > > > > - Removed clear_bit() calls and old comment (Brian Norris).
> > > > > - Explicit CC of Andreas Fenkart.
> > > > > - Explicit CC of Brian Norris.
> > > > > - Add "Fixes" pointing at the commit Brian talked about.
> > > > > - Add Brian's Reviewed-by tag.
> > > > >
> > > > > Douglas Anderson (2):
> > > > >   mmc: core: Add sdio_trigger_replug() API
> > > > >   mwifiex: Make use of the new sdio_trigger_replug() API to reset
> > > > >
> > > > >  drivers/mmc/core/core.c                     | 28 +++++++++++++++++++--
> > > > >  drivers/mmc/core/sdio_io.c                  | 20 +++++++++++++++
> > > > >  drivers/net/wireless/marvell/mwifiex/sdio.c | 16 +-----------
> > > > >  include/linux/mmc/host.h                    | 15 ++++++++++-
> > > > >  include/linux/mmc/sdio_func.h               |  2 ++
> > > > >  5 files changed, 63 insertions(+), 18 deletions(-)
> > > > >
> > > >
> > > > Doug, thanks for sending this!
> > > >
> > > > As you know, I have been working on additional changes for SDIO
> > > > suspend/resume (still WIP and not ready for sharing) and this series
> > > > is related.
> > > >
> > > > The thing is, that even during system suspend/resume, synchronizations
> > > > are needed between the different layers (mmc host, mmc core and
> > > > sdio-funcs), which is common to the problem you want to solve.
> > > >
> > > > That said, I need to scratch my head a bit more before I can provide
> > > > you some feedback on $subject series. Moreover, it's vacation period
> > > > at my side so things are moving a bit slower. Please be patient.
> > >
> > > I had kinda forgotten about this series after we landed it locally in
> > > Chrome OS, but I realized that it never got resolved upstream.  Any
> > > chance your head has been sufficiently scratched and you're now happy
> > > with $subject series?  ;-)
> >
> > It's still on my TODO list. Apologize for the delay, but I still need
> > more time to look into it, possibly later this week.
> >
> > In any case, let's make sure we get this problem resolved for v5.5.
>
> Hi Ulf.  It's your friendly pest, Doug, here to ask how things are going.  :-P

:-)

The series on the top of my "things to review" list. I will definitely
provide you with some feedback then next days or so.

Again, sorry for the delay!

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
