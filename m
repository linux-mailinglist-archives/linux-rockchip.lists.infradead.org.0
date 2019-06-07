Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48470398E7
	for <lists+linux-rockchip@lfdr.de>; Sat,  8 Jun 2019 00:37:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CmFE6e5cEG+RzA+fblAMD0JYE5xpl20naFWaC/WF+A=; b=BLmibyGS56hEvy
	vIPfLXZYtu5ngAbYELjYy2OwddaxeSGxSw7MZS66F94SSR8A8zXS7+BDNi6G8I/Ek2lrq8yYpsyDa
	kRYEK2EOhb4HmUJkxWtIKGLuEn0tYf1YkH508TEU1tvxTsYIy6WPEcsqbHfwRIhPx2sj5Snli20UR
	eZKoM7viHhsTu/tHx+zw/QcQqmPX1L10hYDNyAUTBHTJ+YXBGtH5MBabsOgnTt36sGNY7Lz0l4deJ
	DyX5uzN29pc2X6rZKnsJgpwN2NLQbvmurPdKNEBpseLvypV5Q3bxjxtX4YgkN+pxBTUqSFr/Z9Xuf
	FMHwZXxdQ2vDftOxj8lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNUh-00051O-Gv; Fri, 07 Jun 2019 22:37:55 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNUZ-0004tH-6a
 for linux-rockchip@lists.infradead.org; Fri, 07 Jun 2019 22:37:48 +0000
Received: by mail-pg1-x543.google.com with SMTP id f25so1857705pgv.10
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jun 2019 15:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z4uQcLhxDEep9Dd0+N4T4ar1lYZLNVNOCQMZpRaAcgQ=;
 b=Wu5ODvnEgN+Dz3rZXFZGppPRarqh2wkcmSq/jdU0lxIYcSNaG6l9SM/cQ7rqNOQ+cx
 zxBOamHsP0cMwIo+6syFyWFHtQZ64LbEArNImhJSma0pDWnZQVdsP77XNYh/mmK0Dm2q
 qWYduKxF+F5spTIpgm3Rypp+nRk8xG2J2D5aM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z4uQcLhxDEep9Dd0+N4T4ar1lYZLNVNOCQMZpRaAcgQ=;
 b=PulFyIhUeVTTRMVTNmiS5t+XE68ADqHOs3Gja3qgVsx9MQw0n/Nw0m7fuZFgMilBNz
 iKzLMgm0sa6xaCQ0dFoAxpWEunDb5GpVOBGKTpLdagZ5xN+SkP6p7HmKqRY6VonQFT6S
 /+jvzbh5pJi/8ByKsJEWiN9rohcOOg/mw2FYzZ88smZjNiqaWFsRbdbYe1+MKnvlx90l
 aKtAK6Fc0y40JeMc7Cb0IkoNfWK/2wHlMSc2dV25oh7zgG4tjV1e1tJqZsDBWtPjDK/r
 Iv6APb1L+yqhIXP1uE+z6S5OdX8BFMHRamX8lZYtlmvcvd4P+CMY1xqe/S4FqAlo/uzB
 xqkQ==
X-Gm-Message-State: APjAAAVR/QZ0ZDpK63/TXVvCmwYgyi8xh1j3fXuFGKO+jCShriPEVKhC
 3eztevm+3TvVZc5jZ3ZyoqKoMP5Vf9s=
X-Google-Smtp-Source: APXvYqxs31BYhnz3CuDYoW0F6K1ef/NQQc4dhUPxacP60w15cFP3tld8eeafi1pEevxCtCS+7gK93A==
X-Received: by 2002:a17:90a:9504:: with SMTP id
 t4mr8420374pjo.100.1559947066689; 
 Fri, 07 Jun 2019 15:37:46 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id j23sm4185193pgb.63.2019.06.07.15.37.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 15:37:46 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH v3 5/5] brcmfmac: sdio: Don't tune while the card is off
Date: Fri,  7 Jun 2019 15:37:16 -0700
Message-Id: <20190607223716.119277-6-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190607223716.119277-1-dianders@chromium.org>
References: <20190607223716.119277-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_153747_282473_044674A0 
X-CRM114-Status: GOOD (  13.98  )
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
Cc: Ondrej Jirman <megous@megous.com>,
 Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-wireless@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Wright Feng <wright.feng@cypress.com>,
 brcm80211-dev-list@cypress.com, Naveen Gupta <naveen.gupta@cypress.com>,
 Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

When Broadcom SDIO cards are idled they go to sleep and a whole
separate subsystem takes over their SDIO communication.  This is the
Always-On-Subsystem (AOS) and it can't handle tuning requests.

Specifically, as tested on rk3288-veyron-minnie (which reports having
BCM4354/1 in dmesg), if I force a retune in brcmf_sdio_kso_control()
when "on = 1" (aka we're transition from sleep to wake) by whacking:
  bus->sdiodev->func1->card->host->need_retune = 1
...then I can often see tuning fail.  In this case dw_mmc reports "All
phases bad!").  Note that I don't get 100% failure, presumably because
sometimes the card itself has already transitioned away from the AOS
itself by the time we try to wake it up.  If I force retuning when "on
= 0" (AKA force retuning right before sending the command to go to
sleep) then retuning is always OK.

NOTE: we need _both_ this patch and the patch to avoid triggering
tuning due to CRC errors in the sleep/wake transition, AKA ("brcmfmac:
sdio: Disable auto-tuning around commands expected to fail").  Though
both patches handle issues with Broadcom's AOS, the problems are
distinct:
1. We want to defer (but not ignore) asynchronous (like
   timer-requested) tuning requests till the card is awake.  However,
   we want to ignore CRC errors during the transition, we don't want
   to queue deferred tuning request.
2. You could imagine that the AOS could implement retuning but we
   could still get errors while transitioning in and out of the AOS.
   Similarly you could imagine a seamless transition into and out of
   the AOS (with no CRC errors) even if the AOS couldn't handle
   tuning.

ALSO NOTE: presumably there is never a desperate need to retune in
order to wake up the card, since doing so is impossible.  Luckily the
only way the card can get into sleep state is if we had a good enough
tuning to send it a sleep command, so presumably that "good enough"
tuning is enough to wake us up, at least with a few retries.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v3:
- ("brcmfmac: sdio: Don't tune while the card is off") new for v3.

Changes in v2: None

 drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
index 4040aae1f9ed..98ffb4e90e15 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -670,6 +670,10 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 
 	mmc_expect_errors_begin(bus->sdiodev->func1->card->host);
 
+	/* Cannot re-tune if device is asleep; defer till we're awake */
+	if (on)
+		mmc_retune_hold_now(bus->sdiodev->func1->card->host);
+
 	wr_val = (on << SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT);
 	/* 1st KSO write goes to AOS wake up core if device is asleep  */
 	brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR, wr_val, &err);
@@ -730,6 +734,9 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 	if (try_cnt > MAX_KSO_ATTEMPTS)
 		brcmf_err("max tries: rd_val=0x%x err=%d\n", rd_val, err);
 
+	if (on)
+		mmc_retune_release(bus->sdiodev->func1->card->host);
+
 	mmc_expect_errors_end(bus->sdiodev->func1->card->host);
 
 	return err;
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
