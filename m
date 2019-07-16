Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C2D6ACFC
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 18:43:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TRI8X1h3aauSJ8EftCUXnIfAYvntc1WRsy2n1Jks1O4=; b=UU8UC4dpBaYlu0
	k25C7M6+wk/8RcAmefTNqHFM4bHRsRE3aiRbmXgB9dhPv6aJqRUZDLYgo2zMUEGmyFtDlVALAr0D8
	+Gy0ztZo4PUy5AcCc4dVaL1xPFKmBaKbWBjlbjg1n9vnHOTuqQGrix8aQairR3Fzph4G1IXjKN4tB
	WprJiCNU7Jp/e1s8lkJ9lmXCX5Ke9T9nqb8rPRTIfN3mFW6PABMkrrihomjXVqlXQm2SidC8Fb/d8
	7gLPW5vabMlU4Y4j8PXzSD4NrLm+aOuBqrZJOpRLg5om8eurN3LFEmAFVS2zknZyLcs0oX7g+L/jx
	Ptrj9WO0MeGEZhmNUTQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnQXW-0000Xs-Ib; Tue, 16 Jul 2019 16:42:55 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnQXS-0000Vp-0M
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 16:42:51 +0000
Received: by mail-pg1-x544.google.com with SMTP id f5so883473pgu.5
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 09:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G0ynwreDQx55Cdn2k1+KVcd1p88/D0r6svcv1QlBO3o=;
 b=irjFbOPzoCsmoIZq13YOds5hccWx9OiE071z79slMWaKwUnr0Gw8NqkCvXGuxofvkE
 b2DbVQ8khrwbZ1fgtJzGUdLN3xC5o1VqML1rE0tFczdIs5fX+WoRn0m64ZSj09uLaKp8
 W4JTJ5GuZwoocTLDXiTmbxT27wq8MYbdfM4/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G0ynwreDQx55Cdn2k1+KVcd1p88/D0r6svcv1QlBO3o=;
 b=GcrWsdzh2YoM16X4PlxmDx+N1a77jBBjJpHV8/Pm6wO/1yw+0yNfnuB4GiUq/++hMF
 GmOsXL3zg1/goKc2tbnJnnyo6eFH+UOxnyI2BxSa7trLez0Y1SXz9NeqYMY6nzczV9QD
 y6LuIsh2YK/mVr0miU2JE6ZPalYJr/akFkIZiLAC5WYkS0ACSK/tjdgnoecDQ8pGPHNi
 49BFl1tcQL+H8yPmh88cU82iE3hz6SwZzNOIG2wegL0VC03LC4BRRyod+xawvU5dIa/H
 nxJR6bGsKSQv/RLeLElFsOzL0zbx9Hb64jrj9D7t5fw/oU1XnQT3gkyoodWqQa3JH7OD
 wevg==
X-Gm-Message-State: APjAAAWKujprJRWzHOg46jQ3xDZjTLB6PEd+XI+buoxZeKqwQIRAiQ1Y
 rRgqApAB4jN6dKsjKgNaErbGOg==
X-Google-Smtp-Source: APXvYqxTvrAricfH4zSCJjfNseyILhC1mVPFZVt33bDXH1vSrEY0L19EpCl6w3rTFJO8Jdf66uAxVQ==
X-Received: by 2002:a17:90a:cf8f:: with SMTP id
 i15mr36366127pju.110.1563295366371; 
 Tue, 16 Jul 2019 09:42:46 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id r1sm25456468pfq.100.2019.07.16.09.42.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 09:42:45 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 2/2] mwifiex: Make use of the new sdio_trigger_replug() API to
 reset
Date: Tue, 16 Jul 2019 09:42:09 -0700
Message-Id: <20190716164209.62320-3-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
In-Reply-To: <20190716164209.62320-1-dianders@chromium.org>
References: <20190716164209.62320-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_094250_063947_8C88D395 
X-CRM114-Status: GOOD (  13.60  )
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
Cc: Ganapathi Bhat <gbhat@marvell.com>, linux-rockchip@lists.infradead.org,
 Xinming Hu <huxinming820@gmail.com>, netdev@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, linux-wireless@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, linux-kernel@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Nishant Sarmukadam <nishants@marvell.com>, Avri Altman <avri.altman@wdc.com>,
 linux-mmc@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

As described in the patch ("mmc: core: Add sdio_trigger_replug()
API"), the current mwifiex_sdio_card_reset() is broken in the cases
where we're running Bluetooth on a second SDIO func on the same card
as WiFi.  The problem goes away if we just use the
sdio_trigger_replug() API call.

NOTE: Even though with this new solution there is less of a reason to
do our work from a workqueue (the unplug / plug mechanism we're using
is possible for a human to perform at any time so the stack is
supposed to handle it without it needing to be called from a special
context), we still need a workqueue because the Marvell reset function
could called from a context where sleeping is invalid and thus we
can't claim the host.  One example is Marvell's wakeup_timer_fn().

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/net/wireless/marvell/mwifiex/sdio.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/net/wireless/marvell/mwifiex/sdio.c b/drivers/net/wireless/marvell/mwifiex/sdio.c
index 24c041dad9f6..f77ad2615f08 100644
--- a/drivers/net/wireless/marvell/mwifiex/sdio.c
+++ b/drivers/net/wireless/marvell/mwifiex/sdio.c
@@ -2218,14 +2218,6 @@ static void mwifiex_sdio_card_reset_work(struct mwifiex_adapter *adapter)
 {
 	struct sdio_mmc_card *card = adapter->card;
 	struct sdio_func *func = card->func;
-	int ret;
-
-	mwifiex_shutdown_sw(adapter);
-
-	/* power cycle the adapter */
-	sdio_claim_host(func);
-	mmc_hw_reset(func->card->host);
-	sdio_release_host(func);
 
 	/* Previous save_adapter won't be valid after this. We will cancel
 	 * pending work requests.
@@ -2233,9 +2225,9 @@ static void mwifiex_sdio_card_reset_work(struct mwifiex_adapter *adapter)
 	clear_bit(MWIFIEX_IFACE_WORK_DEVICE_DUMP, &card->work_flags);
 	clear_bit(MWIFIEX_IFACE_WORK_CARD_RESET, &card->work_flags);
 
-	ret = mwifiex_reinit_sw(adapter);
-	if (ret)
-		dev_err(&func->dev, "reinit failed: %d\n", ret);
+	sdio_claim_host(func);
+	sdio_trigger_replug(func);
+	sdio_release_host(func);
 }
 
 /* This function read/write firmware */
-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
