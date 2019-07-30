Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 854A57A353
	for <lists+linux-rockchip@lfdr.de>; Tue, 30 Jul 2019 10:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2oLEfCMyEMXy1sH9OZHUYHzrxyNdjgePWNZMPPIyrE4=; b=MW5prfP3IGwLx8
	pymLkoZFp2p639yIP8FbAgzeTaWsNC5CiE8fglykhEfic/jNzDTB5gezEEFWPArCT7goOy5kKp3D3
	glb0z2KlyqZaml2BP/7lD/H5OsX0vucnhUFe4KAjPI8bagPNAD1ogoi2a1ou+fYdTE5Gy5UyASWqp
	141HRztkjmXEiDeMQ0t6iM1LS5DtsiKjjwhVxqNshOo0sgfS0xoG3VkqMfNCdatR/6c9FWhPXoFA2
	UtBP2nFGWWIBQHubWnnwA6ze23VMpEDtaqnfW9dpb/UKdDDpsiud7vsCO99602Zv+mI/zI5qv0SmV
	zWUR6eabl0Fq/uvUPk6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsNmu-0002KI-1a; Tue, 30 Jul 2019 08:47:16 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsNmn-0002J5-9w
 for linux-rockchip@lists.infradead.org; Tue, 30 Jul 2019 08:47:11 +0000
Received: by mail-io1-xd43.google.com with SMTP id z3so7456673iog.0
 for <linux-rockchip@lists.infradead.org>; Tue, 30 Jul 2019 01:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tweUbVZ3TlHSrmKd5A3NkGv9TQYFvzxkm9AoWsk/q30=;
 b=Lnm5pWMO9gDB+xSAlEIw37rit9GWukpli0ciwz3KX3p4EfASEW3ma4NWF3a/1SQXcU
 3arAYwANOaLQH2rJGpccnOvhSUOd6E87lZbFx7BMyf1JRCphLtU1sS52m3ydPtp6jcj3
 7nRj9tovKZ179EkLYguciarwpTad2g/pOd/FrbAm6ldq6ZhS9rkU/7oXpA0kC9utTGWw
 f07hrfSKHY7iyaUEFy0bzUcUYeAcEwU2ckzmi6YX4x3OWm6iXJ6VGlJC+6+fyJbS8uQT
 Ji9nQO6BrVSNMXHXWAV0iwKWe80HuhEmsoSrAo8DSrKUhhHIPD2lSe6tgX3Taivh+AAO
 60TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tweUbVZ3TlHSrmKd5A3NkGv9TQYFvzxkm9AoWsk/q30=;
 b=dYAAnDE4a8bhk4QJSzNElM+q43cHyDhZtNM6BoGqy8WVrZoaQ18n/XqDE8pHCrY8nY
 aNTx1iFhi+aQXFft816IO261zOFvn2FZ/X+kmIcD2D6NVi1UU7H77NbsfcarBPfEcrJA
 KrGLnmlrGA8fUdS1l9QXOxoNLg+NhEP9WeuHrooo61f5hfaD/laYjp0IfO65WwIflxSO
 ea9004oH9GU46BBmkRRNmepyY2q2q8DXPnOC2x5UqE3RUsd34fcEKQ+avHlzwWywDBoN
 UV4yDyixGLRiRobYWtI62EBvrFs4v/SyXNTLbORu2fi+0U5PYh5jjE11aYsI4qA4pn/F
 nMYw==
X-Gm-Message-State: APjAAAWQtEoKTM4ChKoIHSRDAMd+WZp2rjVm+CKhASvDVuKXbPSLSyuf
 lj0pI1M5QsAkFg6vBGFo6jEi/BYwqPom7ConBmk=
X-Google-Smtp-Source: APXvYqz0CFC15wZ2XiWoOhayfdcusTMEkipxhXpT31Qa/75EYarCxrEJN+xvSNxVibKyB1L6/NT5tPx8w8nEPvXN8xY=
X-Received: by 2002:a6b:e60b:: with SMTP id g11mr110036034ioh.9.1564476427973; 
 Tue, 30 Jul 2019 01:47:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190722193939.125578-1-dianders@chromium.org>
In-Reply-To: <20190722193939.125578-1-dianders@chromium.org>
From: Andreas Fenkart <afenkart@gmail.com>
Date: Tue, 30 Jul 2019 10:46:56 +0200
Message-ID: <CALtMJEB871Redpzx1u6G5GVEXz-kAP=vT6Wt98=X=xm4SEMeAQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] mmc: core: Fix Marvell WiFi reset by adding SDIO
 API to replug card
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_014709_371972_8A799462 
X-CRM114-Status: GOOD (  25.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (afenkart[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Ganapathi Bhat <gbhat@marvell.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Xinming Hu <huxinming820@gmail.com>, netdev@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, linux-wireless@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>,
 Amitkumar Karwar <amitkarwar@gmail.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Nishant Sarmukadam <nishants@marvell.com>,
 Avri Altman <avri.altman@wdc.com>, linux-mmc <linux-mmc@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Miller <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Douglas,

Am Mo., 22. Juli 2019 um 21:41 Uhr schrieb Douglas Anderson
<dianders@chromium.org>:
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

This error triggers something. I remember that when I was working on
suspend-to-ram feature, we had problems to wake up the firmware
reliable. I found this patch in one of my old 3.13 tree

    the missing bit -- ugly hack to force cmd52 before cmd53.
---
 drivers/mmc/host/omap_hsmmc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mmc/host/omap_hsmmc.c b/drivers/mmc/host/omap_hsmmc.c
index fb24a006080f..710d0bdf39e5 100644
--- a/drivers/mmc/host/omap_hsmmc.c
+++ b/drivers/mmc/host/omap_hsmmc.c
@@ -2372,6 +2372,12 @@ static int omap_hsmmc_suspend(struct device *dev)
        if (host->flags & HSMMC_SWAKEUP_QUIRK)
                disable_irq(host->gpio_sdio_irq);

+       /*
+        * force a polling cycle after resume.
+        * will issue cmd52, not cmd53 straight away
+        */
+       omap_hsmmc_enable_sdio_irq(host->mmc, false);
+
        if (host->dbclk)
                clk_disable_unprepare(host->dbclk);

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
> --
> 2.22.0.657.g960e92d24f-goog
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
