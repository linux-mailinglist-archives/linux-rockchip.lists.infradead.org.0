Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F86A45027
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 01:42:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8IMLcyB91w956l4CPp+ANCGK1kO6738ZJBDfHxTcF/w=; b=ShIqE4Yf9GVRJC
	fZyzEyKnxOkAucKekTuftkYYQGTUKQrnd0jV3JuTX59LaH8lq+su9QYLPxDCf0bvz4xHwHZdiIsRB
	dQfw0iVCsFcqRiXLfS2GIodkMuXySrJPN0NzI90e2l2X6gR0RADEwcptmvy/wF8lI83XevD9mr9Ts
	92dvy9r18X3++Cws/8+RZcFfJ8Es6hKq4rnNsWd2Hwsr8DZbVPpf3smS3UHCnNGVP5F5L+MtFQTGH
	KphQlvO3kEET8H3ae0kjZ18+4pdkpturx+my7Cdi3fWZcU0zFpCMoKZYnlRgYEpsgbbYSvnhLNr91
	Zkdw0yeNxnPjQU1n12Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbZMC-0004ej-HI; Thu, 13 Jun 2019 23:42:12 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbZM9-0004dZ-42
 for linux-rockchip@lists.infradead.org; Thu, 13 Jun 2019 23:42:11 +0000
Received: by mail-pl1-x642.google.com with SMTP id i2so190973plt.1
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2019 16:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qJQX+GLD4fwd+GCBrIWjKsA+IAvGAyQwTSeSX2BSMJY=;
 b=LxynRClHhe6x/JL/spDHqC1iBz5ugcvqw4xyZsmxiWuMKvrTOMnUdqDKFM09vDQEXk
 g8D28Mk39C+APeBjMzbC1os4SM6ZMn7qrCbrNb3T3fGmWaX7RMSCe+s43sy4YLrsZYAK
 USjKgfZYVdMtiNjE5ywU7CUZvHRcPUBbocn+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qJQX+GLD4fwd+GCBrIWjKsA+IAvGAyQwTSeSX2BSMJY=;
 b=RGgPfOtxZDw5z9OspIYqfq8nHx8lMO/dPqvfqqSbV4IB5zy+gyN6G6/FDmMnmtas0N
 Wq0GPNaluFRZuue7XvjkUMjyCbzGQmgW5xf1fLPzvaJ8DSZjwLqBH/7dTqy8aVAcTGSj
 fIUoXg0fQCCbEZlJ3Gq2G0fESvVK3KMJ+b8k32HTF4uWcRJ7x0SLbLX16+Wio3Oi1/Wb
 6XCBtvJMGX3BIMv3+AUlLom+2cRqocyiuoYMV99SBfLd33b+jnUs/DSEKi5hUHSESYuf
 naefm5+HWknDDh8dAeydmFtZ7jZULTKkOa/UQv3wB2EwEyfma/Jogm75cmo6HGYpB1Mn
 9KZQ==
X-Gm-Message-State: APjAAAWmqKWTvZoNnIxfkgiMZz8zfvK2JG0bqUxjQEHZ7+1rqNrHL0eP
 AXiU9SjoSO41BuHjgJoDNlhmjA==
X-Google-Smtp-Source: APXvYqyHvmG/55d6riqeb8uT5XjZFjeg3M6IzV8m9M1TGxU2K10/XPwKK4EKmj4io0cDJZmrlM1FDg==
X-Received: by 2002:a17:902:2a26:: with SMTP id
 i35mr51358780plb.315.1560469328377; 
 Thu, 13 Jun 2019 16:42:08 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id p7sm781088pfp.131.2019.06.13.16.42.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 16:42:07 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH v4 0/5] brcmfmac: sdio: Deal better w/ transmission errors
 related to idle
Date: Thu, 13 Jun 2019 16:41:48 -0700
Message-Id: <20190613234153.59309-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_164209_193794_BB71E48E 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Naveen Gupta <naveen.gupta@cypress.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Madhan Mohan R <MadhanMohan.R@cypress.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Double Lo <double.lo@cypress.com>, Hans de Goede <hdegoede@redhat.com>,
 Wright Feng <wright.feng@cypress.com>, Jiong Wu <lohengrin1024@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Franky Lin <franky.lin@broadcom.com>, brcm80211-dev-list.pdl@broadcom.com,
 Avri Altman <avri.altman@wdc.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
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
 drivers/mmc/core/sdio_io.c                    | 76 +++++++++++++++++++
 .../broadcom/brcm80211/brcmfmac/sdio.c        | 17 +++--
 include/linux/mmc/core.h                      |  2 +
 include/linux/mmc/host.h                      |  1 +
 include/linux/mmc/sdio_func.h                 |  6 ++
 6 files changed, 100 insertions(+), 7 deletions(-)

-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
