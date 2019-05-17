Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 660F822083
	for <lists+linux-rockchip@lfdr.de>; Sat, 18 May 2019 00:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5X9Bcl+/dG1LV6Ys4i/xAQp/7wrOigDH+8I4Q1Jrk3c=; b=cRo8AHRU6FvoD7
	WTzKLYsjeT8n/kHpGlYF4CQPEcrsH1C9ieiSO5apaZxAyabDypx2uUcRy19gZCQ8ww23lV7oxcXuJ
	PK8yjkpIufNJN/usADTyTjIaQCop8wAmIO8oEK4pX5PfNWvt0b0V/c/ZSV1h1SvCSRtGMWismfrBx
	kDChOBtiF7dQbhD0tfxdHSxMhzNAqH5zr9aozp7CtdGBfud3j+Du2Oh8MzBxuSt1MHotW8Pai8fnr
	G9IyZIYBZhTwy0W1uPFYsXwidXzZikUPGcFqgx66uHzRPH2nj1ARnbU3nyGchiSnnoCy1xyDUjfPC
	2NzuBjIEOEINbL9Slfgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRlkb-0004Ih-A2; Fri, 17 May 2019 22:54:53 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRlkV-0004E6-IS
 for linux-rockchip@lists.infradead.org; Fri, 17 May 2019 22:54:49 +0000
Received: by mail-pg1-x541.google.com with SMTP id w22so3949462pgi.6
 for <linux-rockchip@lists.infradead.org>; Fri, 17 May 2019 15:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jmrinjUmvX+AQ+lipzMHtBZaQD2gwKEewfCw3RvxUZk=;
 b=YBy/i07qpQlrvxx+6Ohii/hGKkEYRmpgmxzUqTc6t6e7jWY6J0RFRRoni7Yc9uR55E
 dOjuS+sxiF3k24jBmU7V/xt3JzhbBVbS1Jb28lbbMPZ8uBUX67zRh9M3rxqKH17xRDfC
 1JyFzVqKbemtnksZtgFzqdiY3uYO5HgqwLLb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jmrinjUmvX+AQ+lipzMHtBZaQD2gwKEewfCw3RvxUZk=;
 b=Lw8W86JnPbW+KZ56gnHZE1CZWWVq39p4vfCQx937GINq4Y7GdyS//A8dpv+hYR4gV/
 gbPKWglPM06Nd8uY1m3MI8sL41E7p8/MV+gP4mDbI13K8/DtLsvRe3OmlQgnvm4773TL
 gV8yD9UwPuwmSlSe3lKtUgJV9wJt+jxOpSP5x+b+GCn9dotNA5AkTOGOhZMiPU4BcGAy
 sR2Ob4Or2ZbLMdgogKOiY8NAoVzv9RXkRbly+tftz8QHWCiOszG8za6qdneIhzyvdB/P
 TCD5EIeRH8mbCQQ/UkyjJdVso2+MRgl54gKcBqd5oQVxXBDN+H8YYGHV9+0cjfIz7rT1
 o5Xw==
X-Gm-Message-State: APjAAAVIzcnL3JE+MPDtsmuyZVHN7sm1JVofDpzCy0B40BQLFZAhAf51
 EeX5HnTUvx1LL7p+RbQQDE8EaQ==
X-Google-Smtp-Source: APXvYqzxf9q2pzvCOer/zrm6/W4Z5BkzeAcb6pguC267JTog7JQqRYkt2ViDmHMU+7mEiD3cc9ESaA==
X-Received: by 2002:a65:628b:: with SMTP id f11mr57246101pgv.95.1558133686865; 
 Fri, 17 May 2019 15:54:46 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id u11sm11174450pfh.130.2019.05.17.15.54.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 15:54:46 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH 3/3] brcmfmac: sdio: Disable auto-tuning around commands
 expected to fail
Date: Fri, 17 May 2019 15:54:20 -0700
Message-Id: <20190517225420.176893-4-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190517225420.176893-1-dianders@chromium.org>
References: <20190517225420.176893-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_155447_607471_9D519288 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-wireless@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 brcm80211-dev-list@cypress.com, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org, Franky Lin <franky.lin@broadcom.com>
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

 drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
index 3fd2d58a3c88..c09bb8965487 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -27,6 +27,7 @@
 #include <linux/mmc/sdio_ids.h>
 #include <linux/mmc/sdio_func.h>
 #include <linux/mmc/card.h>
+#include <linux/mmc/core.h>
 #include <linux/semaphore.h>
 #include <linux/firmware.h>
 #include <linux/module.h>
@@ -708,6 +709,7 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 		bmask = SBSDIO_FUNC1_SLEEPCSR_KSO_MASK;
 	}
 
+	mmc_expect_errors_begin(bus->sdiodev->func1->card->host);
 	do {
 		/* reliable KSO bit set/clr:
 		 * the sdiod sleep write access is synced to PMU 32khz clk
@@ -730,6 +732,7 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 				   &err);
 
 	} while (try_cnt++ < MAX_KSO_ATTEMPTS);
+	mmc_expect_errors_end(bus->sdiodev->func1->card->host);
 
 	if (try_cnt > 2)
 		brcmf_dbg(SDIO, "try_cnt=%d rd_val=0x%x err=%d\n", try_cnt,
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
