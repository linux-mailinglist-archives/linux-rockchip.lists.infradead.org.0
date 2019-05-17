Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2032207D
	for <lists+linux-rockchip@lfdr.de>; Sat, 18 May 2019 00:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JD3juIwrCMB4oQzDYnQlzKK+aCBBbTU935BKLYU7ZeI=; b=CYg/j50VgWfWzF
	hi+8BEZLt3oSZ7p0axkyfNAgkPClHlRK6Fum1lGwrsxPuMwCLmDyn1D7mFDLHoeNWZsFvlg1k38LC
	oiObR90xoaj1IzRUFJC82TQcENprwdbuB9y4SmEGhx1j/IpUd5Wbf/2PlXi1iJOm9QnwM0wDGB1Jd
	ukjl/bKEuCg5lHUPRtafoxvc/wZNRq2Wbg0MLPShhuRng1PhgtQTm/cbEBYmOJ6GZI/F2o6auJDxN
	dO9OdXtgQm/lRAiVTxK9YovxHQAuP5q8fccXetOY4c2KulivWRaIcgEM8HdFlq1ozcfXo2T8GCh7U
	rzn4T+xOvWWwovfdJxLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRlkW-0004EN-95; Fri, 17 May 2019 22:54:48 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRlkS-0004Cf-NV
 for linux-rockchip@lists.infradead.org; Fri, 17 May 2019 22:54:46 +0000
Received: by mail-pl1-x644.google.com with SMTP id a5so3964309pls.12
 for <linux-rockchip@lists.infradead.org>; Fri, 17 May 2019 15:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ul1gLClLY2RLZ2itEzzFB2yOFIqulLy55JPQTAySFDo=;
 b=IF+6pl0A6m1fIH81uzmdTDMrurVWOxHBgZdzg9ueW18kyGxlj6N5aPcTRqNNCU+vTS
 LKiCjnkbIC7ajqH/YtTymknHPW/NY4yPjYIJzDwwYqMMyIAHIYA46a6IB8NY149qfCHK
 CVTekqT/FiWMIwMhhNjynCJ139h41IPM+Swp8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ul1gLClLY2RLZ2itEzzFB2yOFIqulLy55JPQTAySFDo=;
 b=BwSykaP7yAupeNrj3gfWoFyvCYu50OWWq0uj9yos/fALRbiWL7X1U+ph50o9nR5cU4
 qDIZIHdaq+QY9lB/rxgRtNEHyxW94BbaHPhOdzWiZzsblAWqTlQZrYztA79TgXzYXpIl
 muOYontfMaOgdRqe6F2kuOS4aXTzyHiMZbUN9v/Dlg9OZEXYvR66TkRfP5Xm0EGXx0x5
 eUkfiZ5syqIPuZkRKcmWiXmyqCLIzFFxdxBksDwb+bYdFXqFsCEa+wQcjFNjn21xf2XA
 KmRgt9u5o26Z90EcAWrImIHg5NEtHn8roM/oGgbsh4m9ofUHtXMWbd/haxOjVVO5TdmP
 7yXw==
X-Gm-Message-State: APjAAAXyXPZ+uHVQ0RlLoYoCy/ThkUOB90lvvc5n6TVQOVHbj1x/QuW0
 STJz7KOJX5EarBAd7iGWbURTmQ==
X-Google-Smtp-Source: APXvYqz/J4eNQzJXQjOFtQWVtg1bZz7U+KE/9+kUa8iLb3eFelZBp/fzq1UlgJul23Nw2JUqc2sKmA==
X-Received: by 2002:a17:902:7797:: with SMTP id
 o23mr58590219pll.147.1558133683494; 
 Fri, 17 May 2019 15:54:43 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id u11sm11174450pfh.130.2019.05.17.15.54.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 15:54:42 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH 0/3] brcmfmac: sdio: Deal better w/ transmission errors waking
 from sleep
Date: Fri, 17 May 2019 15:54:17 -0700
Message-Id: <20190517225420.176893-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_155444_793401_7FBA5C26 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-wireless@vger.kernel.org, Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 linux-kernel@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>,
 brcm80211-dev-list@cypress.com, Ritesh Harjani <riteshh@codeaurora.org>,
 briannorris@chromium.org, YueHaibing <yuehaibing@huawei.com>,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Madhan Mohan R <MadhanMohan.R@cypress.com>, Martin Hicks <mort@bork.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Double Lo <double.lo@cypress.com>, Avri Altman <avri.altman@wdc.com>,
 Wright Feng <wright.feng@cypress.com>, Jiong Wu <lohengrin1024@gmail.com>,
 Naveen Gupta <naveen.gupta@cypress.com>, Franky Lin <franky.lin@broadcom.com>,
 brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org,
 linux-mmc@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series attempts to deal better with the expected transmission
errors that we get when waking up the SDIO-based WiFi on
rk3288-veyron-minnie, rk3288-veyron-speedy, and rk3288-veyron-mickey.

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


Douglas Anderson (3):
  brcmfmac: re-enable command decode in sdio_aos for BRCM 4354
  mmc: core: API for temporarily disabling auto-retuning due to errors
  brcmfmac: sdio: Disable auto-tuning around commands expected to fail

 drivers/mmc/core/core.c                       | 27 +++++++++++++++++--
 .../broadcom/brcm80211/brcmfmac/sdio.c        |  6 +++--
 include/linux/mmc/core.h                      |  2 ++
 include/linux/mmc/host.h                      |  1 +
 4 files changed, 32 insertions(+), 4 deletions(-)

-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
