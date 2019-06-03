Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDCF3383D
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 20:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hdMLr9OWzTsYmJzzLcFQmon3rrnA7uOm8t+nHmgQAx0=; b=LUsMAE0r18Kx6Q
	z6uHhMND0jnznYez8E97mr6Thy5Nahj5ECNvriuoihjDYL0eDHpUvMtv+Hdo2crX/3SMUDloDnHcy
	a0EPa6QKK4rVO8zBgDYJDey4hHxDkRLiTt9AJIJ+kcPlcxOpYzYCn87RcC4D6sURxCeEZYH5KgukN
	/AN6fWod1krPo799CQoafXt4xstJtNuLFAZYupDr9++jksDhv0x3yQyabtF0m9YD8Xj3YJNkmGIc1
	R8JJg1ROYKUy2XLYEZ+pTzA6vn/Jllco9TP+ieHOsJX7dwUt8RcM0Bwybwti+IPzigl6Fo0Zl3O3z
	ZvwM8YSOxy79w5iLIeTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXrqL-0003e8-BX; Mon, 03 Jun 2019 18:38:01 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXrqH-0003d4-TE
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 18:37:59 +0000
Received: by mail-pg1-x542.google.com with SMTP id 196so8778449pgc.6
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Jun 2019 11:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YZsnBAN22tVtHFJc56q+rxbdD8fX8T8HXkSym7OyHiQ=;
 b=Ps1O4MtbD2rEMRtRw6yvXGSxDXrH7HjPdY7KCq/lSlW7htShDFp+u033WFVJDjOXPb
 OLNlYon0Wpzph3sUz2BCPyDgUNjVZMpJf1kV0lUidQnpFyFPagCNB03AVdSVyyqUvAr/
 bxUU+BnIId5lrXnzJ6D/l5svsqW8IvWW9U+R8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YZsnBAN22tVtHFJc56q+rxbdD8fX8T8HXkSym7OyHiQ=;
 b=Hr+vCj78hp0wAKERfGF6TpBLXTXiRHSS1Mbk+9xXXBvBfhZ2+bSa35Z8pAriNRKpA4
 8eK7DGLlj92Rpi0yaQPddLsy3zB1oNFDgtYanF9Z/iXCGV7qONTRWuE2auDhmqm2jJ8I
 lrhU94rtC+eNuczierwUOybOtEnHwCFRAs5nbappfRwRYZK0M0FUGpdFOrda52iB0svc
 /2bmcYdQUyK6c4ClLUFaRUpLTWUyt5eYV4NpCxZy4vXUWZzac0JR1nPSdXa96h98MDTR
 eRgE6mfPgutzs5lwl+zeDEnreeLydldL8wJdJ7m5/BUjqnBqNcwvSW9M6GRHNm7DUYBL
 DVhA==
X-Gm-Message-State: APjAAAXjVcrqNoZTtij2aYP6EAZozpzCCPNOLp3FjROF0dEYSNmx/Dcc
 zhr8oTiVhYFXUvRmqFOyowjmCg==
X-Google-Smtp-Source: APXvYqwbLiM1y3Cof2KgcMMeZ8t9NIYK+vbdXny/5bFAdCAVPmxQ/CP9Y2AV9T+xZdprrAWMKhZjdw==
X-Received: by 2002:a62:764d:: with SMTP id r74mr9422273pfc.110.1559587076759; 
 Mon, 03 Jun 2019 11:37:56 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id t2sm14808969pfh.166.2019.06.03.11.37.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 11:37:56 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH v2 0/3] brcmfmac: sdio: Deal better w/ transmission errors
 waking from idle
Date: Mon,  3 Jun 2019 11:37:37 -0700
Message-Id: <20190603183740.239031-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_113757_943841_B86FBDBC 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-mmc@vger.kernel.org, Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 linux-kernel@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>,
 brcm80211-dev-list@cypress.com, briannorris@chromium.org,
 YueHaibing <yuehaibing@huawei.com>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Michael Trimarchi <michael@amarulasolutions.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Madhan Mohan R <madhanmohan.r@cypress.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Double Lo <double.lo@cypress.com>, Hans de Goede <hdegoede@redhat.com>,
 Wright Feng <wright.feng@cypress.com>, Naveen Gupta <naveen.gupta@cypress.com>,
 Franky Lin <franky.lin@broadcom.com>, brcm80211-dev-list.pdl@broadcom.com,
 Avri Altman <avri.altman@wdc.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series attempts to deal better with the expected transmission
errors that we get when waking up (from idle) the SDIO-based WiFi on
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

There wasn't a good resolution on v1 and it's been a while, so I'm
sending out a v2.  Other than changing patch #1 to a full revert, the
only other changes here are just to the patch descriptions.

Changes in v2:
- A full revert, not just a partial one (Arend).  ...with explicit Cc.
- Updated commit message to clarify based on discussion of v1.

Douglas Anderson (3):
  Revert "brcmfmac: disable command decode in sdio_aos"
  mmc: core: API for temporarily disabling auto-retuning due to errors
  brcmfmac: sdio: Disable auto-tuning around commands expected to fail

 drivers/mmc/core/core.c                       | 27 +++++++++++++++++--
 .../broadcom/brcm80211/brcmfmac/sdio.c        |  9 +++----
 include/linux/mmc/core.h                      |  2 ++
 include/linux/mmc/host.h                      |  1 +
 4 files changed, 32 insertions(+), 7 deletions(-)

-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
