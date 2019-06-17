Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DE548AE1
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 19:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FjU3Fx/1E9azWYaRhjadYD9+jASfwqM1fLqefBRtCWM=; b=Dn4dzAm4VbRZy6
	W4C68CmsyfjNRDF2HCtbjgHpkjF2wp7T76ESkwMUnF/eMqbd3pISyp0uFqYdHIKpeRQB5Q3nytnq+
	j4DljAno8ng4WOxi5TYAXEgZOmTnL0ZOked+apmXYDPIg2GeGgm7bwQhepn82xxmxmaQZbdXwWk6y
	JWldS8GpkuzW0uqP2Frxz1oKVxaaG82gNPHsCqjMXeWAZRxFhQO1sg5JkQkWRX6eIvmKv3+8BjU7A
	Bn+RVzbOJRfp9emhGpUGHMlVWI1cj7JyrSkibV9pz3nxC80ojnwyh+C4eJGC6q8nAswhLD+qFF7t3
	r+9hMyp/zMckzj+G9F1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcvtE-0002Hm-29; Mon, 17 Jun 2019 17:57:56 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcvtB-0002GT-2a
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 17:57:54 +0000
Received: by mail-pg1-x544.google.com with SMTP id v11so6230920pgl.5
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 10:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f9pIBJIx5KyoFRd/bdMWO0ltZcMM5qXRNGUXR67YrGQ=;
 b=iN8UJ+1H+LLjCAE7ZOe8TFSmKlR/Zt9Ir81Ky0rIilfvkaD2u5NXfvBjxAkJmMe+g8
 Kdi+mp01jN3oWhOTozGO/8mCtAQv2LGKB+cD4rluMbIwL3l99CPkR9mZpg9u5Z9n3Ytn
 RdVpKZYKwzqy/qahwneUnjr6yugbbjlt4KRjM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f9pIBJIx5KyoFRd/bdMWO0ltZcMM5qXRNGUXR67YrGQ=;
 b=l1NaQ1BAq/vOgyngiJHFSc+jaoQlQyfkU2SOdiMkUoiDcm6xqHxwT8g3Swwpdxv/FX
 m7VAhJPdm01MXzKXgsYTa8EsWGlmjhlV9QQ3Y9d9VZzfWFTOqwvwjSAGnCmEvp617jou
 Jb/CmgHqy1/tpy3oEZo5ScgeFsyHhUhIDLW0l9YdgE5aSiWd6stdaDW0p5Wxzj9jt1PW
 A9U+dAXtO5fdMLkU+F5qpFMv/e7MqKJpPMYqIHig/vKmK8tConSBdehcJxP1zVezqPJs
 DYpncW3Fgte2jNJw07E2c8J4wU0ESt+EWxNGHLsmVignNmfFJSxaKkUN3fAd1JIYcB74
 vfnQ==
X-Gm-Message-State: APjAAAXXLDltI29W2PFOq3tdrM6Zm1B7MGLqOO3J8RpTNCufVfl8F5mc
 Bv1w5jJxDzn21Ome9EADa9wrag==
X-Google-Smtp-Source: APXvYqwxiy2sTP4aHQThn6yUsnnxea9KMuOdDQS+o1XQ29m7RKGm2fcTiPiFUq9yNh50U8PSmx4rMQ==
X-Received: by 2002:aa7:8202:: with SMTP id k2mr10940559pfi.31.1560794260643; 
 Mon, 17 Jun 2019 10:57:40 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id q1sm15145809pfn.178.2019.06.17.10.57.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 10:57:27 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH v5 0/5] brcmfmac: sdio: Deal better w/ transmission errors
 related to idle
Date: Mon, 17 Jun 2019 10:56:48 -0700
Message-Id: <20190617175653.21756-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_105753_123014_B0A537A7 
X-CRM114-Status: GOOD (  16.30  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, linux-mmc@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, linux-kernel@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 brcm80211-dev-list@cypress.com, Ritesh Harjani <riteshh@codeaurora.org>,
 briannorris@chromium.org, YueHaibing <yuehaibing@huawei.com>,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Naveen Gupta <naveen.gupta@cypress.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Madhan Mohan R <madhanmohan.r@cypress.com>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Double Lo <double.lo@cypress.com>, Avri Altman <avri.altman@wdc.com>,
 Wright Feng <wright.feng@cypress.com>, Jiong Wu <lohengrin1024@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Franky Lin <franky.lin@broadcom.com>, brcm80211-dev-list.pdl@broadcom.com,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series attempts to deal better with the expected transmission
errors related to the idle states (handled by the Always-On-Subsystem
or AOS) on the SDIO-based WiFi on rk3288-veyron-minnie,
rk3288-veyron-speedy, and rk3288-veyron-mickey.

Some details about those errors can be found in
<https://crbug.com/960222>, but to summarize it here: if we try to
send the wakeup command to the WiFi card at the same time it has
decided to wake up itself then it will behave badly on the SDIO bus.
This can cause timeouts or CRC errors.

When I tested on 4.19 and 4.20 these CRC errors can be seen to cause
re-tuning.  Since I am currently developing on 4.19 this was the
original problem I attempted to solve.

On mainline it turns out that you don't see the retuning errors but
you see tons of spam about timeouts trying to wakeup from sleep.  I
tracked down the commit that was causing that and have partially
reverted it here.  I have no real knowledge about Broadcom WiFi, but
the commit that was causing problems sounds (from the descriptioin) to
be a hack commit penalizing all Broadcom WiFi users because of a bug
in a Cypress SD controller.  I will let others comment if this is
truly the case and, if so, what the right solution should be.

For v3 of this series I have added 2 patches to the end of the series
to address errors that would show up on systems with these same SDIO
WiFi cards when used on controllers that do periodic retuning.  These
systems need an extra fix to prevent the retuning from happening when
the card is asleep.

I believe v5 of this series is all ready to go assuming Kalle Valo is
good with it.  I've added after-the-cut notes to patches awaiting his
Ack and have added other tags collected so far.

Changes in v5:
- Add missing sdio_retune_crc_enable() in comments (Ulf).
- /s/reneable/re-enable (Ulf).
- Remove leftover prototypes: mmc_expect_errors_begin() / end() (Ulf).
- Rewording of "sleep command" in commit message (Arend).

Changes in v4:
- Moved to SDIO API only (Adrian, Ulf).
- Renamed to make it less generic, now retune_crc_disable (Ulf).
- Function header makes it clear host must be claimed (Ulf).
- No more WARN_ON (Ulf).
- Adjust to API rename (Adrian, Ulf).
- Moved retune hold/release to SDIO API (Adrian).
- Adjust to API rename (Adrian).

Changes in v3:
- Took out the spinlock since I believe this is all in one context.
- Expect errors for all of brcmf_sdio_kso_control() (Adrian).
- ("mmc: core: Export mmc_retune_hold_now() mmc_retune_release()") new for v3.
- ("brcmfmac: sdio: Don't tune while the card is off") new for v3.

Changes in v2:
- A full revert, not just a partial one (Arend).  ...with explicit Cc.
- Updated commit message to clarify based on discussion of v1.

Douglas Anderson (5):
  Revert "brcmfmac: disable command decode in sdio_aos"
  mmc: core: API to temporarily disable retuning for SDIO CRC errors
  brcmfmac: sdio: Disable auto-tuning around commands expected to fail
  mmc: core: Add sdio_retune_hold_now() and sdio_retune_release()
  brcmfmac: sdio: Don't tune while the card is off

 drivers/mmc/core/core.c                       |  5 +-
 drivers/mmc/core/sdio_io.c                    | 77 +++++++++++++++++++
 .../broadcom/brcm80211/brcmfmac/sdio.c        | 17 ++--
 include/linux/mmc/host.h                      |  1 +
 include/linux/mmc/sdio_func.h                 |  6 ++
 5 files changed, 99 insertions(+), 7 deletions(-)

-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
