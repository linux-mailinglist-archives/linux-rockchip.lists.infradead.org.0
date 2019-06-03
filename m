Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C8C33840
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 20:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7U7BXe63v0pmYhVkSb2U4Z99Xq9WSFiQH2qgWK6Z/g=; b=CbD5mu9kpcNHcF
	fvPKK1wS1BG+CAoCBxg3JVrFNNGudlZBlcb4a2FoBFnIvuoS3d91HxTR03+JY1ezYrIRtjxQ/P9Af
	vM2w4cLzF+uCyceWpwopLP2il1r/Tq5RwoHe1OQ/6no1InvYTJtwqr7CBloeUesh0M6Kmqk+io9hQ
	srWf5+uUXkU3+A7suWmC6jkfpFlDiXJNBM1+OEbz7udVfIHGdEi3lTPCfAl8vOcpCOnQt9zp8aQiQ
	raJKL4dw6zqjuxUQ5DHEwSc4h8LcST+mo8ovIFZ65GDjgBn2CGNXVn9oaelhGunTnx6XKE4gx52KT
	vV/XoE9eezcn+Ha7eaBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXrqP-0003id-By; Mon, 03 Jun 2019 18:38:05 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXrqL-0003e7-4V
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 18:38:02 +0000
Received: by mail-pl1-x642.google.com with SMTP id bh12so1233255plb.4
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Jun 2019 11:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=F8wwxq9VxptsURCry2b+aTfA85f9o72dfCgQNjFbLVk=;
 b=OoHOFFjgzLmkfMx69PpDw1GCFMxg+4mC3LGY9v8drB9Wns2TR4K59tgzJJx+TIUwgM
 xgZv1h8aB3DRO5FFXODObJQkwbi6Sr2sXsXKBfZrJCH3TG+vi6Qe/3jPtb5RsIIFhYME
 LCF9vDlm1NdGoKiRNrKIL9Vh4qwj9eWNIm2Lc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=F8wwxq9VxptsURCry2b+aTfA85f9o72dfCgQNjFbLVk=;
 b=hXgctA0IH4EzX9YT9v2l1uPKe7XiEHB0Z0HwDhjpIihndHTDCTfAbRFuu2n0UQbP/S
 yFMbcdzyPiEWUtbzqvaZk9RBHOnBrPX3AO2Ca1/MRN0KUwVN4XirH5J3jiDGDu0HY8u4
 sgaY/+PqvRZFG7oY8NZgh30TLRW5QIEv5lYbB3Koqci/EAhvkO1aN5K57AlGITfxli/Q
 ZCMQp0V0STZp9Ae6AD+vomiPX4C2Wi59WdLZpnZD+6oPnPYznA7je7PoZl1kEEaqexJ4
 Xtpxx5lAlUQM2WXANoOCDrpxMcpBuQknNd3ekuBqi5UMsZ77HaX23k8VcQs73FtCccwx
 x4Wg==
X-Gm-Message-State: APjAAAX/G3v7F5esGJUEl/T9q/xgK7yh//6f+lKvIeMFKRW1mwGuc97r
 313e22+sJDse77zctxUx7cSSUQ==
X-Google-Smtp-Source: APXvYqy0yhloB5894+QBKfjxD938Rjte+CYfFTXs3NtclcxDXGASENk362PIU8f/7EORJkc4NCJG+Q==
X-Received: by 2002:a17:902:2ae6:: with SMTP id
 j93mr32669828plb.130.1559587080394; 
 Mon, 03 Jun 2019 11:38:00 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id t2sm14808969pfh.166.2019.06.03.11.37.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 11:37:59 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH v2 3/3] brcmfmac: sdio: Disable auto-tuning around commands
 expected to fail
Date: Mon,  3 Jun 2019 11:37:40 -0700
Message-Id: <20190603183740.239031-4-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
In-Reply-To: <20190603183740.239031-1-dianders@chromium.org>
References: <20190603183740.239031-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_113801_299691_2F6CCEA2 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-wireless@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Wright Feng <wright.feng@cypress.com>,
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

Fixes: bd11e8bd03ca ("mmc: core: Flag re-tuning is needed on CRC errors")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v2: None

 drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
index 4a750838d8cd..e0cfcc078a54 100644
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
@@ -697,6 +698,7 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 		bmask = SBSDIO_FUNC1_SLEEPCSR_KSO_MASK;
 	}
 
+	mmc_expect_errors_begin(bus->sdiodev->func1->card->host);
 	do {
 		/* reliable KSO bit set/clr:
 		 * the sdiod sleep write access is synced to PMU 32khz clk
@@ -719,6 +721,7 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 				   &err);
 
 	} while (try_cnt++ < MAX_KSO_ATTEMPTS);
+	mmc_expect_errors_end(bus->sdiodev->func1->card->host);
 
 	if (try_cnt > 2)
 		brcmf_dbg(SDIO, "try_cnt=%d rd_val=0x%x err=%d\n", try_cnt,
-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
