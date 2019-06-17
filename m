Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFA648B09
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 19:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xNsD5DrhWnavUs9rOwWOGHmVYlZXxroIyqDH36enIM=; b=CBnzoyLYXQE8d6
	xiaxs58rXShCp3o65gjaWGE7phUnGm7GfkpPR0hvWcrkGgfW5R2T/83SpeZOQVSaSg7Jsp4OdXcHI
	nj4nVwEvIwA4j3l2HgCQPJxIBbFnTJsyIOIotdswiAlEkV82ezqj+2dHhvkWzAEFdRgJwm3P0MoT9
	tVzlBOVJKj2Rh4R/fsI/b1WCIPnNNUgrFaknVBWBQJwkPIXazalDJgpOFqJZYDZ+eSTS6yMu3Goab
	D1y3osOANtKGt9CdVdvPkExEjTXQz8ZXmsWfrORZbLZWDp96BsmnEQpdZwvG63sLfg5zlMV0SV0X1
	hNkm2n4RZErTPnRchw1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcvuT-0002qC-EY; Mon, 17 Jun 2019 17:59:13 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcvuP-0002ot-UR
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 17:59:11 +0000
Received: by mail-pl1-x644.google.com with SMTP id t7so4387212plr.11
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 10:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O3PB3xTklEmW3AoAowBmJggSurvgbCg3QOQ9X2qUJD4=;
 b=RboDbIDvgfV7dMa9VFb+74vgJFX6x47CzOGrFGwjfZWx5qTQzJLKX7DFLbYN926L3+
 5TghUkIKYttbsX6x/9xsWht/HRlB7c1tJJklBRT45jHnPf2Qw1JviIvXt2wDSNJQvJIa
 9bxI4a9kWmsXHtMmE2XQ/j2f2fC8WP9mba6mw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O3PB3xTklEmW3AoAowBmJggSurvgbCg3QOQ9X2qUJD4=;
 b=gTMxndnOHi6HRS89L4kkOhJjN8rnEbbnUnjoV8e76DukCnOpuaiG9hI0yPbDfOQGYW
 A+SLI0Gu58a//tsdS8bd0HTVIKvMROlKTH7ywsvd1jY2/KcM80JzWuYKxBybA3Z3XajS
 mjPI6sz8kbONC2ndJpjJuP1uHWPxIJo0wr9tPM74d3veyqjJQabjScsW0IPbvMTPJitJ
 pcy9o21Gem01ygV8eJPsVl+Pgr/NR2e/20PHOekrMQPhrwxM8wIJ7vDg1N6HT0HGyoe+
 u26V5GOrNuwrzV/nNvV68BzNULNsSEoyi9PWk+wyZCqlO73CT1dW3/HWyZKp1nazg0rm
 6SkQ==
X-Gm-Message-State: APjAAAU0zVerh1khLqloX8DNckH74yPyPdlzCyoWLTZKGKq7hRD95BlB
 9O0R25+ZY+M3sJzOcFei5kZZJA==
X-Google-Smtp-Source: APXvYqwYSPmzyzQ5e2M8XtYApTa8vYDOCWFfkZGGCKzwG2cujAwMW6h8gJ+jE8rwNjGGmVTtaAqMcA==
X-Received: by 2002:a17:902:24c:: with SMTP id
 70mr108322563plc.2.1560794349089; 
 Mon, 17 Jun 2019 10:59:09 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id q1sm15145809pfn.178.2019.06.17.10.59.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 10:59:06 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH v5 3/5] brcmfmac: sdio: Disable auto-tuning around commands
 expected to fail
Date: Mon, 17 Jun 2019 10:56:51 -0700
Message-Id: <20190617175653.21756-4-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190617175653.21756-1-dianders@chromium.org>
References: <20190617175653.21756-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_105909_987864_41635F82 
X-CRM114-Status: GOOD (  11.07  )
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-wireless@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 stable@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Wright Feng <wright.feng@cypress.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 brcm80211-dev-list@cypress.com, Naveen Gupta <naveen.gupta@cypress.com>,
 Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

There are certain cases, notably when transitioning between sleep and
active state, when Broadcom SDIO WiFi cards will produce errors on the
SDIO bus.  This is evident from the source code where you can see that
we try commands in a loop until we either get success or we've tried
too many times.  The comment in the code reinforces this by saying
"just one write attempt may fail"

Unfortunately these failures sometimes end up causing an "-EILSEQ"
back to the core which triggers a retuning of the SDIO card and that
blocks all traffic to the card until it's done.

Let's disable retuning around the commands we expect might fail.

Commit notes:
Patches #2 - #5 will go through Ulf's tree.

This patch is still lacking Kalle Valo's Ack, which should probably be
received before landing in Ulf's tree.
END

Fixes: bd11e8bd03ca ("mmc: core: Flag re-tuning is needed on CRC errors")
Cc: stable@vger.kernel.org
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
Reviewed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
---

Changes in v5: None
Changes in v4:
- Adjust to API rename (Adrian, Ulf).

Changes in v3:
- Expect errors for all of brcmf_sdio_kso_control() (Adrian).

Changes in v2: None

 drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
index 4a750838d8cd..ee76593259a7 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -667,6 +667,8 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 
 	brcmf_dbg(TRACE, "Enter: on=%d\n", on);
 
+	sdio_retune_crc_disable(bus->sdiodev->func1);
+
 	wr_val = (on << SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT);
 	/* 1st KSO write goes to AOS wake up core if device is asleep  */
 	brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR, wr_val, &err);
@@ -727,6 +729,8 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 	if (try_cnt > MAX_KSO_ATTEMPTS)
 		brcmf_err("max tries: rd_val=0x%x err=%d\n", rd_val, err);
 
+	sdio_retune_crc_enable(bus->sdiodev->func1);
+
 	return err;
 }
 
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
