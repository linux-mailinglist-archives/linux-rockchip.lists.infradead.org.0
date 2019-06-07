Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6A9398E5
	for <lists+linux-rockchip@lfdr.de>; Sat,  8 Jun 2019 00:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7Rn8Cp3E9wEQscPrbX7+SE4+DylKvm8tZfWJFskU/w=; b=eDoxLwz2unuw1c
	Biw03BVDmLgE0lOzv8OnxQDTAw57PbHbZPyn1URJLPqyxC3E0b1uXwx1mdoAov0V3HAJfXYf87q2w
	Bm2KQPyD2t0WPOYeoqBzursaKQ+JbeXZaXkopMM1usqKH/iX7a3v0bjWVXx8XDAr1zKkLAwR2rsD7
	LxWeS14aR52dYjs2nC5A+FeO7hROm4gW48U1vTe6ZZ4yicq0BMw+ALPqBx2H7uWsxrITt4r9282/5
	ZH5KDSHkjHUnGmkzg0gB4kxZbP/WOz4RQytATiCubJvw5jrPcj5LhpA/0JPa93zq64irUoDuVaWXG
	N3S9xkdxdWqAM2KeN4VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNUc-0004vF-Sz; Fri, 07 Jun 2019 22:37:50 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNUW-0004qZ-LD
 for linux-rockchip@lists.infradead.org; Fri, 07 Jun 2019 22:37:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id e5so1326784pls.13
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jun 2019 15:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z/Emr8zkD81f/RoFF2bpt9vXXmYuPgcPH/tJJB2TNkM=;
 b=oQQs34ffYiXMPOR36xOya64Dt1KgLnf9z1SV0HDmj0CMof30gz507FOLOXiwLZF9vI
 1D4A3r35LVnz+omcfO1khnEJ5B5cf2uWoH3JxkZrIVrFp+vmy6UzYUj2ueHLGx4vpf7/
 59wQukIGshja6mS/TY/bI/w1srMb5f0chSNZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z/Emr8zkD81f/RoFF2bpt9vXXmYuPgcPH/tJJB2TNkM=;
 b=a2x7r5XRynkqz/erijCCz6FeGeFlxbHryRet87y5/dmAcBeUjh6bhtGjznFY4+h3Bs
 8NLnUAkeDaEfRXllbIR9KelwWefK6E2a3Osu54rAnh0YY2lnOnguB+EgNzZA5ezek190
 NGu65Fd8tQGFQ27rxo1Igy2UKBCW3L5gs0TSD/ZaGlF4sCZC2dpLpXpcMNqPauP7VYng
 FTDoCvSRF6+2qFFmTAzTw4s9WYP0JHaan6yq9pmMPYBIJvFsGiXVO4cOGza15cECrJhK
 WDM6gTgRc5kdHYyMRM47iUNmRg4V+UkIIkTeB7Wvvn8voD3SovXB4dM78nQQ3yaGfcFI
 XxcA==
X-Gm-Message-State: APjAAAWB6mWjX5cNCPtoeNqZ7bs+4Jmn50oMcxIat3AFm1vgP8I7D/ur
 txTBjs2t0uoJbGlVSej2orBikA==
X-Google-Smtp-Source: APXvYqyNw/yZY/ZbD9VOj7XTh2VyqbwOrp6QXWwuAPrgMHCzudlnfDTuWjve7w8tswOe88lOZPL0rQ==
X-Received: by 2002:a17:902:290b:: with SMTP id
 g11mr57474438plb.26.1559947064218; 
 Fri, 07 Jun 2019 15:37:44 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id j23sm4185193pgb.63.2019.06.07.15.37.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 15:37:43 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around commands
 expected to fail
Date: Fri,  7 Jun 2019 15:37:14 -0700
Message-Id: <20190607223716.119277-4-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190607223716.119277-1-dianders@chromium.org>
References: <20190607223716.119277-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_153744_690814_89945D6D 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: Madhan Mohan R <MadhanMohan.R@cypress.com>,
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

Fixes: bd11e8bd03ca ("mmc: core: Flag re-tuning is needed on CRC errors")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v3:
- Expect errors for all of brcmf_sdio_kso_control() (Adrian).

Changes in v2: None

 drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
index 4a750838d8cd..4040aae1f9ed 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -16,6 +16,7 @@
 #include <linux/mmc/sdio_ids.h>
 #include <linux/mmc/sdio_func.h>
 #include <linux/mmc/card.h>
+#include <linux/mmc/core.h>
 #include <linux/semaphore.h>
 #include <linux/firmware.h>
 #include <linux/module.h>
@@ -667,6 +668,8 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 
 	brcmf_dbg(TRACE, "Enter: on=%d\n", on);
 
+	mmc_expect_errors_begin(bus->sdiodev->func1->card->host);
+
 	wr_val = (on << SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT);
 	/* 1st KSO write goes to AOS wake up core if device is asleep  */
 	brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR, wr_val, &err);
@@ -727,6 +730,8 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 	if (try_cnt > MAX_KSO_ATTEMPTS)
 		brcmf_err("max tries: rd_val=0x%x err=%d\n", rd_val, err);
 
+	mmc_expect_errors_end(bus->sdiodev->func1->card->host);
+
 	return err;
 }
 
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
