Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4265B3383E
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 20:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQYXZrDEusvre2AIqaHs8GBdw1Zyi4RiNDaBrWpO4zA=; b=AKKS6czcvkcwkr
	9ezJniY2PQL6YeZ1Ffo0kCoJI0dfmr0uHkoMJwWMnC8JEzUFNGf7ILXT49v7/V6ExeHBbw0BJ2L+3
	sfoEABRbslGPbc+0/P0fVkvdD2TJ8SRTYnOo1e/L9m85F8sVy0Xw18DHNNx6G7pNapwI9cha0kYoS
	ysLhcUs7x5iLdCfpvJR7RUjbdkza1hw3jYHAliurylIwZa0ZceYt/jgzSJYW/XYoQ5ssi6IcBHOvT
	viiQm+GPp54IibOhdswbi7MkDihFiuX+dzactraa2bSCYnC+eq021Ph+KwkbQPuyDbkcDB3GcvBoy
	bH4pRB2VciOq/T+rnZoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXrqM-0003fe-PT; Mon, 03 Jun 2019 18:38:02 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXrqI-0003dI-Bu
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 18:37:59 +0000
Received: by mail-pg1-x543.google.com with SMTP id 83so1951709pgg.8
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Jun 2019 11:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sdJuH7k++BGfpS8zEifYD9KLgjj0LNkMfJlMApOTv3A=;
 b=VI7KxZOr4/miSRAbIaeuYOJWoiCEXYABO8BpdtXK45HVy3s3YAOXH2NJeOgkyrBE/Y
 M99xiWkHi2jRBQUPUeYqrK2eK3FG6YAzAK2+y6UTn4rp+zImAeXBrz5q/Kjrd7fCFoYp
 NqT8KOH/N14j84ZVOE54ukekZw45tWyTAZ44U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sdJuH7k++BGfpS8zEifYD9KLgjj0LNkMfJlMApOTv3A=;
 b=nS0Iwf17qWN8JYObzHSsEfOK15DPxwKP6TcbU8N0yLLElp7jVwTrtg0mhTrmz00qS4
 rtt23AmTF8kdpZkzZL1KQ+4/b2+Y5vid8RHe+S+QGV1irBH5+Lf4bUm+fRQm6u/fJNkv
 j/FwdA/Tof64BqheSC4lqGRA91PFd5N1kR74LVigPXonP/DJMbufN0mpKW0Q//xB73uf
 Lx22hamRYVmeT1ngvrxrho/hkSsi5RDN7Knv2DYGqSs6ZyznqGMgs8Gr09JmdGXlc2RL
 vJX02fcflAEgvskevZ9r+GLpa1xRDGAQeH3+ZNCUbJjiYpzv/+kGa/0RraRlHZqVUycz
 ldug==
X-Gm-Message-State: APjAAAVNxeNsN8XiPPKBRWNQ04Jwtzc/MytmneWc5QJPfIvspU6a1DDj
 kXQwVbw0TuBF5vV8rE+Dgz5lcg==
X-Google-Smtp-Source: APXvYqxCAKpMJCDgPT0zPf8L4uQ/LWU+VMtO7VfMvXmyv9L+9e+E97URHi0HoDSQYuK+nyvUaZeP3A==
X-Received: by 2002:a17:90a:26a9:: with SMTP id
 m38mr31800995pje.93.1559587077838; 
 Mon, 03 Jun 2019 11:37:57 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id t2sm14808969pfh.166.2019.06.03.11.37.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 11:37:57 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH v2 1/3] Revert "brcmfmac: disable command decode in sdio_aos"
Date: Mon,  3 Jun 2019 11:37:38 -0700
Message-Id: <20190603183740.239031-2-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
In-Reply-To: <20190603183740.239031-1-dianders@chromium.org>
References: <20190603183740.239031-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_113758_403132_EA194E7B 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: "David S. Miller" <davem@davemloft.net>,
 Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, Hante Meuleman <hante.meuleman@broadcom.com>,
 Hans de Goede <hdegoede@redhat.com>, netdev@vger.kernel.org,
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

This reverts commit 29f6589140a10ece8c1d73f58043ea5b3473ab3e.

After that patch landed I find that my kernel log on
rk3288-veyron-minnie and rk3288-veyron-speedy is filled with:
brcmfmac: brcmf_sdio_bus_sleep: error while changing bus sleep state -110

This seems to happen every time the Broadcom WiFi transitions out of
sleep mode.  Reverting the commit fixes the problem for me, so that's
what this patch does.

Note that, in general, the justification in the original commit seemed
a little weak.  It looked like someone was testing on a SD card
controller that would sometimes die if there were CRC errors on the
bus.  This used to happen back in early days of dw_mmc (the controller
on my boards), but we fixed it.  Disabling a feature on all boards
just because one SD card controller is broken seems bad.

Fixes: 29f6589140a1 ("brcmfmac: disable command decode in sdio_aos")
Cc: Wright Feng <wright.feng@cypress.com>
Cc: Double Lo <double.lo@cypress.com>
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>
Cc: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v2:
- A full revert, not just a partial one (Arend).  ...with explicit Cc.

 drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
index 4e15ea57d4f5..4a750838d8cd 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -3364,11 +3364,7 @@ static int brcmf_sdio_download_firmware(struct brcmf_sdio *bus,
 
 static bool brcmf_sdio_aos_no_decode(struct brcmf_sdio *bus)
 {
-	if (bus->ci->chip == CY_CC_43012_CHIP_ID ||
-	    bus->ci->chip == CY_CC_4373_CHIP_ID ||
-	    bus->ci->chip == BRCM_CC_4339_CHIP_ID ||
-	    bus->ci->chip == BRCM_CC_4345_CHIP_ID ||
-	    bus->ci->chip == BRCM_CC_4354_CHIP_ID)
+	if (bus->ci->chip == CY_CC_43012_CHIP_ID)
 		return true;
 	else
 		return false;
-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
