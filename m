Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52921709F3
	for <lists+linux-rockchip@lfdr.de>; Mon, 22 Jul 2019 21:42:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWG3kyeWo9/pNBZJEI8wk36ArZjhK+8X+zFmZ6JeZIo=; b=VzTxH7Nvv0l6GG
	zqxrf3NmaR6LujJzatqtMzqgOR7F6mVCIo/ORx2pARZ+5mzXj7aLFTyrad3HHodpp2gbqazAc4GA5
	NFEoOoiXXXYOEZy26t9w2G/Dsq/th7m70FWPIqZ1t9WwFCIO+uT4EUNbU2fCK4pNMimmdK+C1937F
	G+FmPwPYACrqRok+h/z6kdQ2I0yVI6YnF0UlDV/NZKqBame6D9PtfhkIfQyY4XJNX6quu7+iJWrnB
	xccAGhErC3vMlTk4QEdJ6BhHN9G8rCXzuyWtqcvondUWxaWmlTG9nU/Twg2oh9uWNypmHJLIJr6Wd
	ySfszRVh1Dk40o4f7c1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpeCT-0000fO-NH; Mon, 22 Jul 2019 19:42:21 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpeBg-00008P-Bs
 for linux-rockchip@lists.infradead.org; Mon, 22 Jul 2019 19:41:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id y15so17868653pfn.5
 for <linux-rockchip@lists.infradead.org>; Mon, 22 Jul 2019 12:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ATbFy1aIdbWHFM03S3oai17NaO/neBJFfQYViTxrNMs=;
 b=fLXr6gDQl11kx/gfLPu/pKAYQ3oWpeGmz6q8QFeSzDdvzyBV3Jixq5ya13oHO5dqfo
 Nt5xcerqY4a9O3JWvuPb94Tyrayne1SI5T6+UGeut3CsFAKBfhZw9yU7Q5/RHukXvoYY
 cqcqRPZNeTl+YDf2PzrHdCfdrC3TgIUq6fJSI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ATbFy1aIdbWHFM03S3oai17NaO/neBJFfQYViTxrNMs=;
 b=imjQaNv+UhUdf/fuVfMeGT9lyOKWxe2xWDClzmpgDuNVyPukvoe57kR6DolorIHFSy
 VUkrwWIIh247BwWyOKnwu47Oj621SmmAd59eg6dLFhbLcpvGEHs00rIoRKaVkV+zgnHc
 pn64Ip7BBh1J/ugXVqef9xn8S2l+TL+i7c6as4z9uDmjP2GVHQo0DSdFihPDNnS0CZqB
 RPykkGGZk4gDktLspe8niVyqZgylIxY1ErQ0phQDbmV4Menf5GlWqmynslu9UG7w40G3
 6mBrTBHOi3q8NUkBDxmN911EoimuvozxX7+v/LP6vIYulcRdsmNLe9DyVsoLatkYz1h1
 WqBQ==
X-Gm-Message-State: APjAAAX9BTw7WD1Ds6ciexgz1rZ+FhlQ1DeM9YRZheYVuh5DyIc8NRXb
 rnZdS5Et8aG+9R3yRgB3cOgFGGyLM4M=
X-Google-Smtp-Source: APXvYqxe3jk2Td0NZ3MiOAVs4zOozU2NCyEe4BhAwMABU222PrrTzeC4C4T+vjjW5dwEp508Pc+S0A==
X-Received: by 2002:a17:90a:ba93:: with SMTP id
 t19mr77532204pjr.139.1563824491627; 
 Mon, 22 Jul 2019 12:41:31 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id z4sm29838803pgp.80.2019.07.22.12.41.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 12:41:31 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH v2 2/2] mwifiex: Make use of the new sdio_trigger_replug() API
 to reset
Date: Mon, 22 Jul 2019 12:39:39 -0700
Message-Id: <20190722193939.125578-3-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.657.g960e92d24f-goog
In-Reply-To: <20190722193939.125578-1-dianders@chromium.org>
References: <20190722193939.125578-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_124132_580498_41155A25 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Ganapathi Bhat <gbhat@marvell.com>, Brian Norris <briannorris@chromium.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Xinming Hu <huxinming820@gmail.com>, netdev@vger.kernel.org,
 Andreas Fenkart <afenkart@gmail.com>, linux-wireless@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Nishant Sarmukadam <nishants@marvell.com>,
 Avri Altman <avri.altman@wdc.com>, linux-mmc@vger.kernel.org,
 davem@davemloft.net
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

Cc: Andreas Fenkart <afenkart@gmail.com>
Cc: Brian Norris <briannorris@chromium.org>
Fixes: b4336a282db8 ("mwifiex: sdio: reset adapter using mmc_hw_reset")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
- Removed clear_bit() calls and old comment (Brian Norris).
- Explicit CC of Andreas Fenkart.
- Explicit CC of Brian Norris.
- Add "Fixes" pointing at the commit Brian talked about.
- Add Brian's Reviewed-by tag.

 drivers/net/wireless/marvell/mwifiex/sdio.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/net/wireless/marvell/mwifiex/sdio.c b/drivers/net/wireless/marvell/mwifiex/sdio.c
index 24c041dad9f6..7ec5068f6ffd 100644
--- a/drivers/net/wireless/marvell/mwifiex/sdio.c
+++ b/drivers/net/wireless/marvell/mwifiex/sdio.c
@@ -2218,24 +2218,10 @@ static void mwifiex_sdio_card_reset_work(struct mwifiex_adapter *adapter)
 {
 	struct sdio_mmc_card *card = adapter->card;
 	struct sdio_func *func = card->func;
-	int ret;
-
-	mwifiex_shutdown_sw(adapter);
 
-	/* power cycle the adapter */
 	sdio_claim_host(func);
-	mmc_hw_reset(func->card->host);
+	sdio_trigger_replug(func);
 	sdio_release_host(func);
-
-	/* Previous save_adapter won't be valid after this. We will cancel
-	 * pending work requests.
-	 */
-	clear_bit(MWIFIEX_IFACE_WORK_DEVICE_DUMP, &card->work_flags);
-	clear_bit(MWIFIEX_IFACE_WORK_CARD_RESET, &card->work_flags);
-
-	ret = mwifiex_reinit_sw(adapter);
-	if (ret)
-		dev_err(&func->dev, "reinit failed: %d\n", ret);
 }
 
 /* This function read/write firmware */
-- 
2.22.0.657.g960e92d24f-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
