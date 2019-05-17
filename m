Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 242F02207E
	for <lists+linux-rockchip@lfdr.de>; Sat, 18 May 2019 00:54:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fzCW8itoxkZAbNl39hT7/jW3kxukevQKvoaBrBcZeps=; b=nhpZPB/t41Tkq3
	lwQASA7l/kln2gnEZD+bI4OaXHVeRpZUXcHeOzgbsT9uZaiXPTkX/uVTzntGjMerw5oLhYexl2ejo
	AR4V0d4PakA2p92innV0ZWx8oqahHegNk1ZKEGZxccbs1hGr+O/xu606HFYsWUJqz/YfK3Ta+yAWW
	Yym1WYAucp0VS0y8gVnHpLkwT7+0fvxX0Wmzs5mIfdngEdYY40d9LN+cspdZPEKmpBr5y1sA8qa3B
	XPvhV8b5cP1Jkl7gYxoHP5TAae5nHcXzsGs2mWNcs1nsAP+uhamK8MZniuhskreewa7j9DhdWYS4c
	ytduqMfCucCkO9PKJV5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRlkW-0004F4-Ow; Fri, 17 May 2019 22:54:48 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRlkT-0004DB-CB
 for linux-rockchip@lists.infradead.org; Fri, 17 May 2019 22:54:46 +0000
Received: by mail-pg1-x544.google.com with SMTP id n27so1354693pgm.4
 for <linux-rockchip@lists.infradead.org>; Fri, 17 May 2019 15:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kE32OCklpIZXO7svMqG/W8w7+/cFFktuMCsLmJ9iAxQ=;
 b=j738cSt9G+eC+Ssi6Mhsw32N5TiBKHXPoJHB8D/AEDypV+5B0elAKCdF6PlzOM6OcS
 rbZQn5r0unqEm9W5BfrmtQTF+g0qfmROnRX2xCe1NjJ64kzHNg820UnDDryZLzrD8T2m
 etwXw4YU1QMMjXANx95rOa5DruCs5yslqOl6w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kE32OCklpIZXO7svMqG/W8w7+/cFFktuMCsLmJ9iAxQ=;
 b=dWVI97co7hekepbkGUegqLjtn5rpU4KY74ypjUsqI135PytOR7LELX5hfMt5zPrFts
 2T1QJ6nqDfZck3lSqkGDKMkPFaAJChu+LPZM/lhe33iwJglSFGa0Zs0EfcXFGH6AIbEk
 nblwOjzVRLc+i5d3tCiQdTj3fQ5eCAzI1GXYH6nvkHsIny/vC1MoAFh1TzFZs4xgcUrN
 +1UdonnKyPq5W6QaNDhzlj/56HZqzc1y0ndefuW4eC81ZjcL9jzjebciiJWGHjM83BNV
 AcLgXf3d6/IULU+aC6Ksjs36O2aWG2N5mkOsJ0UFxflIFbv7K8sRt5HngOoDDDw+wXIm
 CqcQ==
X-Gm-Message-State: APjAAAVhWPU+8UwdDPREg/7xqZTrlHrGUdthQAS7+sdxqG47TvrcdGO/
 VvC+5oYCLAQiiQGH9ekUYhx7YQ==
X-Google-Smtp-Source: APXvYqw3Pllw0o/YaHOCk+UhRzInd8A3zNoabhFlV045lJlGWBCfwcMIFoinD8muUSpjk/9MTo4nVw==
X-Received: by 2002:a63:ee0b:: with SMTP id e11mr6703708pgi.453.1558133684631; 
 Fri, 17 May 2019 15:54:44 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id u11sm11174450pfh.130.2019.05.17.15.54.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 15:54:44 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH 1/3] brcmfmac: re-enable command decode in sdio_aos for BRCM
 4354
Date: Fri, 17 May 2019 15:54:18 -0700
Message-Id: <20190517225420.176893-2-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190517225420.176893-1-dianders@chromium.org>
References: <20190517225420.176893-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_155445_409922_1FCFCB90 
X-CRM114-Status: GOOD (  15.17  )
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
Cc: Madhan Mohan R <MadhanMohan.R@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-wireless@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>, brcm80211-dev-list@cypress.com,
 linux-kernel@vger.kernel.org, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

In commit 29f6589140a1 ("brcmfmac: disable command decode in
sdio_aos") we disabled something called "command decode in sdio_aos"
for a whole bunch of Broadcom SDIO WiFi parts.

After that patch landed I find that my kernel log on
rk3288-veyron-minnie and rk3288-veyron-speedy is filled with:
  brcmfmac: brcmf_sdio_bus_sleep: error while changing bus sleep state -110

This seems to happen every time the Broadcom WiFi transitions out of
sleep mode.  Reverting the part of the commit that affects the WiFi on
my boards fixes the problem for me, so that's what this patch does.

Note that, in general, the justification in the original commit seemed
a little weak.  It looked like someone was testing on a SD card
controller that would sometimes die if there were CRC errors on the
bus.  This used to happen back in early days of dw_mmc (the controller
on my boards), but we fixed it.  Disabling a feature on all boards
just because one SD card controller is broken seems bad.  ...so
instead of just this patch possibly the right thing to do is to fully
revert the original commit.

Fixes: 29f6589140a1 ("brcmfmac: disable command decode in sdio_aos")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
index 22b73da42822..3fd2d58a3c88 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -3378,8 +3378,7 @@ static bool brcmf_sdio_aos_no_decode(struct brcmf_sdio *bus)
 	if (bus->ci->chip == CY_CC_43012_CHIP_ID ||
 	    bus->ci->chip == CY_CC_4373_CHIP_ID ||
 	    bus->ci->chip == BRCM_CC_4339_CHIP_ID ||
-	    bus->ci->chip == BRCM_CC_4345_CHIP_ID ||
-	    bus->ci->chip == BRCM_CC_4354_CHIP_ID)
+	    bus->ci->chip == BRCM_CC_4345_CHIP_ID)
 		return true;
 	else
 		return false;
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
