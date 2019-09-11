Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C0EB0532
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Sep 2019 23:26:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eEAHZyDG1udcpdXEo6j96Rd6AaUSyIbnO9wJr7bmBcc=; b=Ff4B0bsnPp053W
	XHrOjt4vaCSo1KUFYwfpZb/jCimxx4jcb9HVzDw3OENyKISkMwQfRP+GlyvS8bsjzMq7mpgrX6T4i
	nJZdZeVVirxefQq1tiQ8oEEkoMFPI5TX1UB3uuqHIxYVG5mevO09MB8Oea2J6x7iFlaPXtJny1SSK
	WH8ilAbsPVKJ/JHWx8VQMDOHb+De1/E6+BieJ3iyPLApnnH16q1+NGgTNMIMiL8qKxeDfE9hApbK0
	w/dOqc9V7+FFPJOLZ7zYc4YC/SQYDFaLSjb1xzPHd2eI/Z6/GzotUIFWLepGKDBsou/YQSRyxTdVS
	abaw9+k+jAIjKlNxptFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8A87-00019K-6b; Wed, 11 Sep 2019 21:26:23 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8A83-00018r-Tr
 for linux-rockchip@lists.infradead.org; Wed, 11 Sep 2019 21:26:21 +0000
Received: by mail-io1-xd43.google.com with SMTP id r8so24435581iol.10
 for <linux-rockchip@lists.infradead.org>; Wed, 11 Sep 2019 14:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=joMxkm9Lfu3s8hTjVmKn7UZQD/plMPjc3HsB2FD38bQ=;
 b=Zx6vpeYVn31jXHkZOhlcgPcW1og+HMJsIpg2RaBgHxyfySTkmxb/1jlnkTPE9Iyb6r
 Uveb2Y2m+bgiiLFvkQeltufJuZft+2rmS04bZBvmIxGGsLuZ63BL71zcyiPV0GMKwqAo
 ICsdNKxpJlFqFbJH/hchMGgXJSgTXGdfd2Ykw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=joMxkm9Lfu3s8hTjVmKn7UZQD/plMPjc3HsB2FD38bQ=;
 b=C53ZILqFyMOkp+HGEeYwMfxwXOMyikCLUJ5Bze96mbznPVn14Uzit6nA7MJMBxy+Gw
 Bm+8TCuvxbaLMuuVW3GVohyU8BKvhF26I1Gkmkz2aNo8CVBJsCSNdyDKDXRhDgdERH/4
 /DqFFFr1dEZjtvEwi6PWhqKwC/AnrW6gf4dcoy3ckNwWU+77iIaZFp2jl14/PCBoJybQ
 P1OXkzaRGKiX8cR9sGeiUCj3xS95Gz5i2DC9m2hW4k86QbvaO2aFY7wrwIp7s5tctWDY
 Mz0IMUSIqTashxDsgfSPqa1erL/HngbV+Ti2V3jV3LlDpQDhksQf93U7iClGoQQCcjC3
 Sq3Q==
X-Gm-Message-State: APjAAAUGzDDwqRgN2GNObRm19BSu0hfYC/qyLmsf8ge6bVHU+L0Ek1Un
 aJhecDKZPcHERYu+tvePUGiXejis9sg=
X-Google-Smtp-Source: APXvYqz78whzYY21shuMETVJsUWfMoRS7cxuvY0UMShOlJIgA8/+hv8aeC7ttpHu1Bjed8rllOpS0g==
X-Received: by 2002:a05:6602:21cb:: with SMTP id
 c11mr2457931ioc.25.1568237178541; 
 Wed, 11 Sep 2019 14:26:18 -0700 (PDT)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com.
 [209.85.166.47])
 by smtp.gmail.com with ESMTPSA id h4sm21587278iok.1.2019.09.11.14.26.15
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Sep 2019 14:26:16 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id h144so49328954iof.7
 for <linux-rockchip@lists.infradead.org>; Wed, 11 Sep 2019 14:26:15 -0700 (PDT)
X-Received: by 2002:a6b:b704:: with SMTP id h4mr16276935iof.218.1568237175640; 
 Wed, 11 Sep 2019 14:26:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190722193939.125578-1-dianders@chromium.org>
 <CAPDyKFoND5Kaam72zxO4wChO0z_1XL2KWX6oNjVcMUGA7G8RFg@mail.gmail.com>
In-Reply-To: <CAPDyKFoND5Kaam72zxO4wChO0z_1XL2KWX6oNjVcMUGA7G8RFg@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 11 Sep 2019 14:26:04 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VTLoqGbxFFMT8h72cfHCLupyvZpD75JB0N86+kFA+vzw@mail.gmail.com>
Message-ID: <CAD=FV=VTLoqGbxFFMT8h72cfHCLupyvZpD75JB0N86+kFA+vzw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] mmc: core: Fix Marvell WiFi reset by adding SDIO
 API to replug card
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_142619_992455_D4638A82 
X-CRM114-Status: GOOD (  25.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi,

On Thu, Jul 25, 2019 at 6:28 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Mon, 22 Jul 2019 at 21:41, Douglas Anderson <dianders@chromium.org> wrote:
> >
> > As talked about in the thread at:
> >
> > http://lkml.kernel.org/r/CAD=FV=X7P2F1k_zwHc0mbtfk55-rucTz_GoDH=PL6zWqKYcpuw@mail.gmail.com
> >
> > ...when the Marvell WiFi card tries to reset itself it kills
> > Bluetooth.  It was observed that we could re-init the card properly by
> > unbinding / rebinding the host controller.  It was also observed that
> > in the downstream Chrome OS codebase the solution used was
> > mmc_remove_host() / mmc_add_host(), which is similar to the solution
> > in this series.
> >
> > So far I've only done testing of this series using the reset test
> > source that can be simulated via sysfs.  Specifically I ran this test:
> >
> > for i in $(seq 1000); do
> >   echo "LOOP $i --------"
> >   echo 1 > /sys/kernel/debug/mwifiex/mlan0/reset
> >
> >   while true; do
> >     if ! ping -w15 -c1 "${GW}" >/dev/null 2>&1; then
> >       fail=$(( fail + 1 ))
> >       echo "Fail WiFi ${fail}"
> >       if [[ ${fail} == 3 ]]; then
> >         exit 1
> >       fi
> >     else
> >       fail=0
> >       break
> >     fi
> >   done
> >
> >   hciconfig hci0 down
> >   sleep 1
> >   if ! hciconfig hci0 up; then
> >     echo "Fail BT"
> >     exit 1
> >   fi
> > done
> >
> > I ran this several times and got several hundred iterations each
> > before a failure.  When I saw failures:
> >
> > * Once I saw a "Fail BT"; manually resetting the card again fixed it.
> >   I didn't give it time to see if it would have detected this
> >   automatically.
> > * Once I saw the ping fail because (for some reason) my device only
> >   got an IPv6 address from my router and the IPv4 ping failed.  I
> >   changed my script to use 'ping6' to see if that would help.
> > * Once I saw the ping fail because the higher level network stack
> >   ("shill" in my case) seemed to crash.  A few minutes later the
> >   system recovered itself automatically.  https://crbug.com/984593 if
> >   you want more details.
> > * Sometimes while I was testing I saw "Fail WiFi 1" indicating a
> >   transitory failure.  Usually this was an association failure, but in
> >   one case I saw the device do "Firmware wakeup failed" after I
> >   triggered the reset.  This caused the driver to trigger a re-reset
> >   of itself which eventually recovered things.  This was good because
> >   it was an actual test of the normal reset flow (not the one
> >   triggered via sysfs).
> >
> > Changes in v2:
> > - s/routnine/routine (Brian Norris, Matthias Kaehlcke).
> > - s/contining/containing (Matthias Kaehlcke).
> > - Add Matthias Reviewed-by tag.
> > - Removed clear_bit() calls and old comment (Brian Norris).
> > - Explicit CC of Andreas Fenkart.
> > - Explicit CC of Brian Norris.
> > - Add "Fixes" pointing at the commit Brian talked about.
> > - Add Brian's Reviewed-by tag.
> >
> > Douglas Anderson (2):
> >   mmc: core: Add sdio_trigger_replug() API
> >   mwifiex: Make use of the new sdio_trigger_replug() API to reset
> >
> >  drivers/mmc/core/core.c                     | 28 +++++++++++++++++++--
> >  drivers/mmc/core/sdio_io.c                  | 20 +++++++++++++++
> >  drivers/net/wireless/marvell/mwifiex/sdio.c | 16 +-----------
> >  include/linux/mmc/host.h                    | 15 ++++++++++-
> >  include/linux/mmc/sdio_func.h               |  2 ++
> >  5 files changed, 63 insertions(+), 18 deletions(-)
> >
>
> Doug, thanks for sending this!
>
> As you know, I have been working on additional changes for SDIO
> suspend/resume (still WIP and not ready for sharing) and this series
> is related.
>
> The thing is, that even during system suspend/resume, synchronizations
> are needed between the different layers (mmc host, mmc core and
> sdio-funcs), which is common to the problem you want to solve.
>
> That said, I need to scratch my head a bit more before I can provide
> you some feedback on $subject series. Moreover, it's vacation period
> at my side so things are moving a bit slower. Please be patient.

I had kinda forgotten about this series after we landed it locally in
Chrome OS, but I realized that it never got resolved upstream.  Any
chance your head has been sufficiently scratched and you're now happy
with $subject series?  ;-)

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
