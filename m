Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBBE74F70
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 15:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GGYOiPk+pN2S5tAGDo0tBukKnAbXSV2gHN3HlM7l1Kc=; b=TjDpVQskyfPvcr
	ar6F4lLAjVvhWlNL2L4zI9CEJERsJrMNg8MGpvtzSrY7xhx50P7PJ6Xw2ad8LTf3Q30SSbVsi2Kls
	An15uAdqJMvxGddDuIN0255OfHSh3RBLQHQ9LQaMQgXScxKEILf1bsMLvmE/Oo18eD6xpyKoNKkS4
	dOMLwB96eH4QVMIoXXumq/hrnn6CmiwUyEbjkwiI160gKqRfepiAlKqcLQ1xwSvRVYRdK24BIhrs9
	sO17df14ONOJtTDdMjvebrTc0zyUmfVksBwwhNYYJhf9aLlC36Xtnn0125u6bRjkGKRCnvf1Z/RgO
	u8qRJD+oQnhw6nJ1H/FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdnw-0003mE-1U; Thu, 25 Jul 2019 13:29:08 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdnd-0003SK-3s
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 13:28:51 +0000
Received: by mail-vs1-xe41.google.com with SMTP id 2so33663118vso.8
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Jul 2019 06:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vXKNB/T35UEJpgjy5bQMa/g2p0OKD2QzsqlMlAa6XPw=;
 b=f/uQQYPHA8g4EJYLPYLuJ1y5iqC+JXr+y3ZExBNQFRTKMBE0ptdYkfXtsOwg8bWulp
 zZ8vUXVHZTtT4veYqE6FY3J9yFjAWOKah4KLs0giuYjbw9oX80NdYOLQLeEpMoPXSM6F
 LNu9DnmAgcDf2vlgWEuiZiTg9pVoHA9Kkn6k5l9MtGEZO/630B/DkxncJQpZvT08FtmE
 ifzxx8MnhDevDnFLTEhcuytmqcQSWHjXXKaWyxOrUa4+IMAdtbxkxnY+4AzTBJuCCibf
 ZN5FXJyrsuZFnYPkovS2Im/Jo42DNXFxP9f+RaIyJMosOPS+ykDNufilHeZ0jIjlcLVL
 uwmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vXKNB/T35UEJpgjy5bQMa/g2p0OKD2QzsqlMlAa6XPw=;
 b=RdrumHdXa8toaxzvI8lcj+kFIUkXaSBPY7COlJQmwpXPKYA0/Z57g1GRXquS2xmnvA
 87P4LSOVLtkpCXFHNVYaQ87MM1QOi+ZuhSMkgrMRT10avFNYTrEQ04XcJ2A9X4QKSdd6
 57mv6UuqilIFxgv9FgSNydTX3T3kr3xo+uO293dn2gCu/M9nWDmmIw1mBHstAUj7T+sT
 Mn2o5kBcpH2ai2cukH0ffFzRY8l5yVqh7xRFyMNagR5RUUsErD+wp7C9VHddrtFwR96i
 /bu4E5k/y8qGphyv1zZMpWMKDBEOTUXVNl6urXy8+jPvjrE1YhofKecMcP5/5hjKqFnD
 4+fQ==
X-Gm-Message-State: APjAAAW32ZqXXDdLkAWtXQ79yOU8QPKkPi/fMwodQCEiGtBQYt/Hjb+7
 INMnLclpxyRlc4l4FLS80unogGwBxUKzNFQQFskD24x3
X-Google-Smtp-Source: APXvYqxQVUGQaO08z8JvqC/8hjWZk0eU15RGOsp4tEzLJQFfOVWtNAiPhhBmEDA9IIpQqprtF6qepXrstTHdGFfN0SU=
X-Received: by 2002:a67:61c7:: with SMTP id v190mr4507235vsb.165.1564061327635; 
 Thu, 25 Jul 2019 06:28:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190722193939.125578-1-dianders@chromium.org>
In-Reply-To: <20190722193939.125578-1-dianders@chromium.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 25 Jul 2019 15:28:11 +0200
Message-ID: <CAPDyKFoND5Kaam72zxO4wChO0z_1XL2KWX6oNjVcMUGA7G8RFg@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] mmc: core: Fix Marvell WiFi reset by adding SDIO
 API to replug card
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_062849_207938_2A70B9E1 
X-CRM114-Status: GOOD (  20.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Mon, 22 Jul 2019 at 21:41, Douglas Anderson <dianders@chromium.org> wrote:
>
> As talked about in the thread at:
>
> http://lkml.kernel.org/r/CAD=FV=X7P2F1k_zwHc0mbtfk55-rucTz_GoDH=PL6zWqKYcpuw@mail.gmail.com
>
> ...when the Marvell WiFi card tries to reset itself it kills
> Bluetooth.  It was observed that we could re-init the card properly by
> unbinding / rebinding the host controller.  It was also observed that
> in the downstream Chrome OS codebase the solution used was
> mmc_remove_host() / mmc_add_host(), which is similar to the solution
> in this series.
>
> So far I've only done testing of this series using the reset test
> source that can be simulated via sysfs.  Specifically I ran this test:
>
> for i in $(seq 1000); do
>   echo "LOOP $i --------"
>   echo 1 > /sys/kernel/debug/mwifiex/mlan0/reset
>
>   while true; do
>     if ! ping -w15 -c1 "${GW}" >/dev/null 2>&1; then
>       fail=$(( fail + 1 ))
>       echo "Fail WiFi ${fail}"
>       if [[ ${fail} == 3 ]]; then
>         exit 1
>       fi
>     else
>       fail=0
>       break
>     fi
>   done
>
>   hciconfig hci0 down
>   sleep 1
>   if ! hciconfig hci0 up; then
>     echo "Fail BT"
>     exit 1
>   fi
> done
>
> I ran this several times and got several hundred iterations each
> before a failure.  When I saw failures:
>
> * Once I saw a "Fail BT"; manually resetting the card again fixed it.
>   I didn't give it time to see if it would have detected this
>   automatically.
> * Once I saw the ping fail because (for some reason) my device only
>   got an IPv6 address from my router and the IPv4 ping failed.  I
>   changed my script to use 'ping6' to see if that would help.
> * Once I saw the ping fail because the higher level network stack
>   ("shill" in my case) seemed to crash.  A few minutes later the
>   system recovered itself automatically.  https://crbug.com/984593 if
>   you want more details.
> * Sometimes while I was testing I saw "Fail WiFi 1" indicating a
>   transitory failure.  Usually this was an association failure, but in
>   one case I saw the device do "Firmware wakeup failed" after I
>   triggered the reset.  This caused the driver to trigger a re-reset
>   of itself which eventually recovered things.  This was good because
>   it was an actual test of the normal reset flow (not the one
>   triggered via sysfs).
>
> Changes in v2:
> - s/routnine/routine (Brian Norris, Matthias Kaehlcke).
> - s/contining/containing (Matthias Kaehlcke).
> - Add Matthias Reviewed-by tag.
> - Removed clear_bit() calls and old comment (Brian Norris).
> - Explicit CC of Andreas Fenkart.
> - Explicit CC of Brian Norris.
> - Add "Fixes" pointing at the commit Brian talked about.
> - Add Brian's Reviewed-by tag.
>
> Douglas Anderson (2):
>   mmc: core: Add sdio_trigger_replug() API
>   mwifiex: Make use of the new sdio_trigger_replug() API to reset
>
>  drivers/mmc/core/core.c                     | 28 +++++++++++++++++++--
>  drivers/mmc/core/sdio_io.c                  | 20 +++++++++++++++
>  drivers/net/wireless/marvell/mwifiex/sdio.c | 16 +-----------
>  include/linux/mmc/host.h                    | 15 ++++++++++-
>  include/linux/mmc/sdio_func.h               |  2 ++
>  5 files changed, 63 insertions(+), 18 deletions(-)
>

Doug, thanks for sending this!

As you know, I have been working on additional changes for SDIO
suspend/resume (still WIP and not ready for sharing) and this series
is related.

The thing is, that even during system suspend/resume, synchronizations
are needed between the different layers (mmc host, mmc core and
sdio-funcs), which is common to the problem you want to solve.

That said, I need to scratch my head a bit more before I can provide
you some feedback on $subject series. Moreover, it's vacation period
at my side so things are moving a bit slower. Please be patient.

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
