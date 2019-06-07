Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CEF6398E0
	for <lists+linux-rockchip@lfdr.de>; Sat,  8 Jun 2019 00:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3oz0eiCPs+KEScu0K4F/9RXZkCJY6H+dJN/ITziUNzQ=; b=kzRhkBpjIf/4aS
	jfcbiBdh9U/rbB6oDf89bAd5mLZ+VRU0SVOXbnbsVffUGnIiYUw49ptHRKtrbxKTEPtatMLWKtq+C
	NRlO5OBilKpy0548zWQrg6uAWBsoAzGd6aF7PZqcKnIk+Ap2gIw4nyocGBKyVR649j/BVcHImUuF6
	caqa0pGky3ksjG5RnlQqcK1qLMKOyagLNyx2lZsg8WeW7ohOs5Da3beExDvBVFQmShtySxpv/BjkB
	z2V1fzNRXRsVTSVoGQ84E6jStZNyDth/6x56DSPTocnjeqQuwEt3JVpzD+P1VPQ4KinHaYcbmAfcT
	6aY3EZpm0BRZarprt6uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNUY-0004rR-EP; Fri, 07 Jun 2019 22:37:46 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNUU-0004pO-9k
 for linux-rockchip@lists.infradead.org; Fri, 07 Jun 2019 22:37:43 +0000
Received: by mail-pg1-x543.google.com with SMTP id n2so1855602pgp.11
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jun 2019 15:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UkQI8hX0vIUpVc3tfTJ4CpjSb/8p01+g0dvWePLdY08=;
 b=e+vKvdKnQ/cr5CGuTa5EK01cZ+MfRnMYC41CccgXzHQwKg/POij2RhNAaHeGK5TdVM
 NYenBPuQyROBou1KlsUskYhDUQCGPp4n4PkvdKpwxUNIuxqAaQD3sMzt3joDkZBHy1C5
 6uAsWmd444nBt/Xf4T4r+T1ujKXJx+/0JVRuQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UkQI8hX0vIUpVc3tfTJ4CpjSb/8p01+g0dvWePLdY08=;
 b=mYbFg2Rzk/+jMJHlU+ddULwvmCBLUWJMW4Zfvu1DEWdqJlDm3vWS37gjHakXBHY+8z
 thZ2FHfubNiCj3/haMbiEwUsQ7tQ/5sIDE6GoWEuFGIkYsf6LQdtoktOn64OgBq2BPQa
 Cgs3iqP4KJNx5EQMOpAOrEAArJq5WyhZRA82UON3R5lQ/o2UalK283BrskwJB5mljDwR
 hEBP6vntfz0pMJcnHzduhp8dXKIZeKC/DOlJyw3+Q5ZsyYWlXSDagqyF86/Hb5US2nX1
 a43MQtXc6sBE6DNSkkyqSt1rY2JYfGUuy7VOWNRC5kGQ+Mwu5vatNkPexpPVzlTvSq+4
 MAHg==
X-Gm-Message-State: APjAAAW5popdkl0z+X4s5RP3ZtZXyquAXIXagTKZIBjFsg2zzCDkNT8c
 DOKNSrSPYsFpiosoEmLJRfvTfQ==
X-Google-Smtp-Source: APXvYqwiSuAGcVzbwTvmm2ZIw/J7BlC5c609f8Ulw7reX7J6HoWIpxjWRSnpfKnbC7g5fUiN6hOMHQ==
X-Received: by 2002:a63:2206:: with SMTP id i6mr2387516pgi.349.1559947060322; 
 Fri, 07 Jun 2019 15:37:40 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id j23sm4185193pgb.63.2019.06.07.15.37.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 15:37:39 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH v3 0/5] brcmfmac: sdio: Deal better w/ transmission errors
 related to idle
Date: Fri,  7 Jun 2019 15:37:11 -0700
Message-Id: <20190607223716.119277-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_153742_338649_CD7878DC 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Ondrej Jirman <megous@megous.com>, Tony Lindgren <tony@atomide.com>,
 linux-mmc@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 brcm80211-dev-list@cypress.com, Ritesh Harjani <riteshh@codeaurora.org>,
 Pan Bian <bianpan2016@163.com>, briannorris@chromium.org,
 YueHaibing <yuehaibing@huawei.com>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Madhan Mohan R <MadhanMohan.R@cypress.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Double Lo <double.lo@cypress.com>, Avri Altman <avri.altman@wdc.com>,
 Wright Feng <wright.feng@cypress.com>, Jiong Wu <lohengrin1024@gmail.com>,
 Naveen Gupta <naveen.gupta@cypress.com>, Franky Lin <franky.lin@broadcom.com>,
 brcm80211-dev-list.pdl@broadcom.com, Mathieu Malaterre <malat@debian.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
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
  mmc: core: API for temporarily disabling auto-retuning due to errors
  brcmfmac: sdio: Disable auto-tuning around commands expected to fail
  mmc: core: Export mmc_retune_hold_now() mmc_retune_release()
  brcmfmac: sdio: Don't tune while the card is off

 drivers/mmc/core/core.c                       | 19 +++++++++++++++++--
 drivers/mmc/core/host.c                       |  7 +++++++
 drivers/mmc/core/host.h                       |  7 -------
 .../broadcom/brcm80211/brcmfmac/sdio.c        | 18 +++++++++++++-----
 include/linux/mmc/core.h                      |  4 ++++
 include/linux/mmc/host.h                      |  1 +
 6 files changed, 42 insertions(+), 14 deletions(-)

-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
