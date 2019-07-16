Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC216ACFA
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 18:43:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fsz2mrmu7wVZdMR0Ee7vLJG5bjH4sm76GyknlLUpk9g=; b=rsDiySNJVZVhlo
	FRBF0MjjsBnf0l+AS3fUNgoS/QKSPlNeAYfoKPpUV4ncCdOhjQW+QzQw9L4up5rpkn3uyRtt7fJi+
	o7aPC3CPV189dM6SwRuRjoPSskng1n5NQNEAM05kB5UbJNk8tL2POwpwSEN1CJdKWw3mgtD9WIy/R
	CJ7LrvDfD3FfwK1pqqfMIJArmsccYEYy1KEVUHhLV4mxUc2Q4zjQdiz/Ja4eLAu/EEdpQTdDfbcPw
	csEyni1YOB7cjQGQ8QkCObgpy4F0v/fMra9YAyF6ssrsLqX70LsTjR1p8sAzfJKMoFZk9tGVWdUP4
	5WrI7KOi/5qYNTlvEZOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnQXY-0000Yi-C4; Tue, 16 Jul 2019 16:42:56 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnQXS-0000Vg-Ty
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 16:42:52 +0000
Received: by mail-pf1-x441.google.com with SMTP id p184so9376638pfp.7
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 09:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rFrcYB/60blHV4ScsnDSvK5cMMWLsotfbMwia5Gcc8k=;
 b=DyI11kWox6JsLKIlcyqdfrru7WLeAjEZfzWOOlYwSwRvRrrtxNQXcagDcScn3b/zkJ
 6qeb5qOMbH0HpGabX1URiV16BzvdQtfnKnWBsSiNLegrfq6WivZAh203sdQN0iTrUsH2
 I3kIxfLxmMyZYPNx7SdrAVkXTHsw5DE1NM4Es=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rFrcYB/60blHV4ScsnDSvK5cMMWLsotfbMwia5Gcc8k=;
 b=roXPKQ0xoEHNKX/hfxBD10UTxqRY1JB/bTxxrs52AJq0KvbOiQV0gF8l6Iz+l23MV3
 /jBDABI4e8mVZqxseAfwefNARS8RXd/9YjToSYepVnELPidvPkP70g0RI/gCuaQROZ9Y
 updDUf98LgakmMNduoMU0HMLzKA0vPh7L2nJ1oYM1l9Q8+xo/9vYjQnBQ9kqrrlTv+wu
 dZgS5yI7LGW9+YV3gbe0G1zzqzpy83C3tJxntY5qGRFaxHl5qr2XniEiiwqVg8Abgdbu
 g+HjGF7HLmdnUheB9lWN1nZ2JwcJGC+ZQL0EC0Np0TqDS5My1DXVtocqf+D6/5uQBUN9
 lpeQ==
X-Gm-Message-State: APjAAAWkaddSKNedSPDEpuWIuRFFKFjiM0+r8LXMWGYNNcjcoUejwxjw
 EY09Rtu3zaOOr0OTHHuQn+V8Dw==
X-Google-Smtp-Source: APXvYqyotogvaupNvsmdlWCgKksQmr27uYysrL39mM8+jMRkbsXyPl5BHWP6AbsslubGKoB/gfDKKA==
X-Received: by 2002:a63:db45:: with SMTP id x5mr23385800pgi.293.1563295363884; 
 Tue, 16 Jul 2019 09:42:43 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id r1sm25456468pfq.100.2019.07.16.09.42.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 09:42:43 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 0/2] mmc: core: Fix Marvell WiFi reset by adding SDIO API to
 replug card
Date: Tue, 16 Jul 2019 09:42:07 -0700
Message-Id: <20190716164209.62320-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_094250_963412_79C07E4C 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: Ganapathi Bhat <gbhat@marvell.com>, Ritesh Harjani <riteshh@codeaurora.org>,
 linux-rockchip@lists.infradead.org, Xinming Hu <huxinming820@gmail.com>,
 netdev@vger.kernel.org, Brian Norris <briannorris@chromium.org>,
 linux-wireless@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, linux-kernel@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Nishant Sarmukadam <nishants@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Avri Altman <avri.altman@wdc.com>, Jiong Wu <lohengrin1024@gmail.com>,
 linux-mmc@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 davem@davemloft.net
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


Douglas Anderson (2):
  mmc: core: Add sdio_trigger_replug() API
  mwifiex: Make use of the new sdio_trigger_replug() API to reset

 drivers/mmc/core/core.c                     | 28 +++++++++++++++++++--
 drivers/mmc/core/sdio_io.c                  | 20 +++++++++++++++
 drivers/net/wireless/marvell/mwifiex/sdio.c | 14 +++--------
 include/linux/mmc/host.h                    | 15 ++++++++++-
 include/linux/mmc/sdio_func.h               |  2 ++
 5 files changed, 65 insertions(+), 14 deletions(-)

-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
