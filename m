Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF7E709F1
	for <lists+linux-rockchip@lfdr.de>; Mon, 22 Jul 2019 21:42:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UEZheExbaMZ4nmJnjQQE/ETc1q7LPzHNOiqxCkgNlxQ=; b=ax1cVsVeNG+IPS
	D2oumd06xcA+cvMCJXzVRZceKjtUcF9VSqRHBvD2D3l4bqqHGHyGWw8jn7VAgG53JZAMc5kc6p7cG
	VckMRe1l1g5xh2h+xEZSp7AM6MtSq9JaZcdA9QzdyNg+zsYDmYjBEGmbWwUrwFhKXLkFAQecnhoGX
	KV9+XC9yYvckkzOsfs2vGX3tQf0o62u38FJQPvSsLHHDpLQK4Pl1yaw6mVepPAv+UEohZMpMuTLLV
	LfHyTzv+LaJdUleJihZy+6v8LIKCZXiFQQ7q11J3Upn5NXg7uqGuZgY7l+ekTddb3spZ8NuMaIwqD
	juT1eq+RSPGfLg3AbQWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpeCM-0000ar-EH; Mon, 22 Jul 2019 19:42:14 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpeBe-00006O-3C
 for linux-rockchip@lists.infradead.org; Mon, 22 Jul 2019 19:41:32 +0000
Received: by mail-pg1-x544.google.com with SMTP id f20so8917984pgj.0
 for <linux-rockchip@lists.infradead.org>; Mon, 22 Jul 2019 12:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DVKdTNoigJK3tKLrAPYbGoGUg1JbXWzatImSN67GwBc=;
 b=OeH4xnRTpEcCwpDsbln+XVCEDATCRRhFSaioShscdA8yNTlsxxvy0eWwLU2OM5WV/c
 ai0cBFVknsdB24Q1JB5lfHsbzPcQYeVETDj2UWdIFvtOlDQ6afzXVBdpY6WHzlo9SOxC
 8JU/JxUj4CbZVvqUkGs3Y47KMXq1dD3wmtluQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DVKdTNoigJK3tKLrAPYbGoGUg1JbXWzatImSN67GwBc=;
 b=Ztc8MD5UmQ7BBI1p37AnOfKbWgf2gM91TcROeU/fImj+7RRnBSaA/agNZEvkAOIh22
 VgJeL0kqE1Ij9EQai5joFerEOMNYHrsqK6CUlGtRoRTCVFNP/ZQsS3FFlddapnoGmZBl
 OHr7uCRynRV2Z49j6uli9XIFt5ql2W0ful6gYLDIpMHRe2hqmEME9E2JGe9EqwsV20pl
 l4DPJLexOyYmYw2X/UX+J2Yr2hd0JU7aROFBrU+F2MN/AljoJH23j5gpMAFxNd4J0XHL
 omy67umW+DS5+SYNdlJwwXZyC/Gd72rbCPksmaFqRzhPR9Wg/oLnAv5+zXh7DmP4wCIy
 EKhA==
X-Gm-Message-State: APjAAAWE2wi09tVXWQ9W9qjtSMavNdwUQA46tY+jQEA0JYjuJVO6PxZn
 B97u0qNaNxkpgnQZVP89Bf+Fbw==
X-Google-Smtp-Source: APXvYqxEQYeSxC6AA34sxzoDJbLZJgp0tP84qrw7fyPEIReuxzmhiIMgt4eKQcdcsm72+G8sCkgnlg==
X-Received: by 2002:a63:590f:: with SMTP id n15mr26207045pgb.190.1563824488798; 
 Mon, 22 Jul 2019 12:41:28 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id z4sm29838803pgp.80.2019.07.22.12.41.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 12:41:28 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH v2 0/2] mmc: core: Fix Marvell WiFi reset by adding SDIO API
 to replug card
Date: Mon, 22 Jul 2019 12:39:37 -0700
Message-Id: <20190722193939.125578-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.657.g960e92d24f-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_124130_184550_5D05C40F 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
 Xinming Hu <huxinming820@gmail.com>, netdev@vger.kernel.org,
 Andreas Fenkart <afenkart@gmail.com>, linux-wireless@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Nishant Sarmukadam <nishants@marvell.com>,
 Avri Altman <avri.altman@wdc.com>, linux-mmc@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

As talked about in the thread at:

http://lkml.kernel.org/r/CAD=FV=X7P2F1k_zwHc0mbtfk55-rucTz_GoDH=PL6zWqKYcpuw@mail.gmail.com

...when the Marvell WiFi card tries to reset itself it kills
Bluetooth.  It was observed that we could re-init the card properly by
unbinding / rebinding the host controller.  It was also observed that
in the downstream Chrome OS codebase the solution used was
mmc_remove_host() / mmc_add_host(), which is similar to the solution
in this series.

So far I've only done testing of this series using the reset test
source that can be simulated via sysfs.  Specifically I ran this test:

for i in $(seq 1000); do
  echo "LOOP $i --------"
  echo 1 > /sys/kernel/debug/mwifiex/mlan0/reset

  while true; do
    if ! ping -w15 -c1 "${GW}" >/dev/null 2>&1; then
      fail=$(( fail + 1 ))
      echo "Fail WiFi ${fail}"
      if [[ ${fail} == 3 ]]; then
        exit 1
      fi
    else
      fail=0
      break
    fi
  done

  hciconfig hci0 down
  sleep 1
  if ! hciconfig hci0 up; then
    echo "Fail BT"
    exit 1
  fi
done

I ran this several times and got several hundred iterations each
before a failure.  When I saw failures:

* Once I saw a "Fail BT"; manually resetting the card again fixed it.
  I didn't give it time to see if it would have detected this
  automatically.
* Once I saw the ping fail because (for some reason) my device only
  got an IPv6 address from my router and the IPv4 ping failed.  I
  changed my script to use 'ping6' to see if that would help.
* Once I saw the ping fail because the higher level network stack
  ("shill" in my case) seemed to crash.  A few minutes later the
  system recovered itself automatically.  https://crbug.com/984593 if
  you want more details.
* Sometimes while I was testing I saw "Fail WiFi 1" indicating a
  transitory failure.  Usually this was an association failure, but in
  one case I saw the device do "Firmware wakeup failed" after I
  triggered the reset.  This caused the driver to trigger a re-reset
  of itself which eventually recovered things.  This was good because
  it was an actual test of the normal reset flow (not the one
  triggered via sysfs).

Changes in v2:
- s/routnine/routine (Brian Norris, Matthias Kaehlcke).
- s/contining/containing (Matthias Kaehlcke).
- Add Matthias Reviewed-by tag.
- Removed clear_bit() calls and old comment (Brian Norris).
- Explicit CC of Andreas Fenkart.
- Explicit CC of Brian Norris.
- Add "Fixes" pointing at the commit Brian talked about.
- Add Brian's Reviewed-by tag.

Douglas Anderson (2):
  mmc: core: Add sdio_trigger_replug() API
  mwifiex: Make use of the new sdio_trigger_replug() API to reset

 drivers/mmc/core/core.c                     | 28 +++++++++++++++++++--
 drivers/mmc/core/sdio_io.c                  | 20 +++++++++++++++
 drivers/net/wireless/marvell/mwifiex/sdio.c | 16 +-----------
 include/linux/mmc/host.h                    | 15 ++++++++++-
 include/linux/mmc/sdio_func.h               |  2 ++
 5 files changed, 63 insertions(+), 18 deletions(-)

-- 
2.22.0.657.g960e92d24f-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
