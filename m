Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE9F45026
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 01:42:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TaxWmZvb2/1xOjC0bw51dyI6pq0PoCRjJ6xJXMIrX1g=; b=klXxNnTZO6+7Ot
	CaEmZmE9B+R84RmADIU1J7hoKueTWopBy2AbaoweszVIi2VcN9LnIpXhAfEc6kvJ1yeinZMIKrazh
	oumud6QOMjqiyIW59tpCZVJzJOdZFIFzvcUl5xhdCGL0HUjGFlpNnQINm/DeJNdIxT6mXtDLokzyK
	JYOgRpncXF94G8izQGZcrvaAGpYsKGz6rbWbnFBfSDtsfYMjiy68kwRv+i+lHGW9nUBJZTGFUCH/q
	BOLJxneIdEF3USSdSXGZPx8bt7EMnOWHq9NN4fh1PDI7dmb2ZThFJohLpvpKubyN6ge2qTYdCN2X7
	4ucgVc2iEqqrWLgqQArQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbZMD-0004f9-J0; Thu, 13 Jun 2019 23:42:13 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbZMA-0004dr-07
 for linux-rockchip@lists.infradead.org; Thu, 13 Jun 2019 23:42:11 +0000
Received: by mail-pg1-x544.google.com with SMTP id v9so375615pgr.13
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2019 16:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Vet+Dn10p+j7iocPSsG03g8vaMFWiMo90o3B9LDdj5Q=;
 b=eAWun/ksKNSaoQ10+uBkjZGfqtLoiG8yBGDTdZO258ZzYavaoOZuXXwFSkzwuBHRB7
 lAW5Qhzyq2gfCkWzO/C/0t28K4pk2shtn8t++uigTtM6pqGQTxJDZTEppJLVYFcPZiZ+
 ET5Mbl5aw+JT4vfiumCEtNewl5negiJ8/hElc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vet+Dn10p+j7iocPSsG03g8vaMFWiMo90o3B9LDdj5Q=;
 b=pZN4D/7yPruu/q2H86MOwPxXBqrwyegphDi822k9A8aFdM5jO6Uhs3VJv8byFo9/WJ
 QQ7ZLe51c2VaT7sfydWvkvq9/nTc9Sawp6XGH6mSVsUbMfHvzGg4V/lkPP5ZMKRHxuOS
 mM18/l6N9v/P+HI1Wa9p3qe/7FzSrJler8AMKxv9Y2deBrNkIHZciSWF8EcSEbZvcdN5
 R7S0F3i14PtCiCG5OW0uDEwmcfDkK8L6O0+WcN9c1WPcd/RPm/DbXXPGmkQfKWlHhcvJ
 SWG2WhvPoqYBRTGCGCZUX9vCboUNkOvzzPZRCFpfgFEVM1zL1ODMfHnT23MWLKvqUylt
 pEDQ==
X-Gm-Message-State: APjAAAXFbwGu04ykFwOLESRDggtp4eNp11McgHOTkcWJKVPlFoXobHgp
 qXV/uReDsjh7a7/NMTlhx3BPDg==
X-Google-Smtp-Source: APXvYqzcYCogaB1dx3Z18YZOdlzBvYKRQdVrqLFdJgs65C5FTDSv0SULwuUx8O/K6Sy3YmVLTPDmpA==
X-Received: by 2002:a17:90a:8a8e:: with SMTP id
 x14mr7827548pjn.103.1560469329449; 
 Thu, 13 Jun 2019 16:42:09 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id p7sm781088pfp.131.2019.06.13.16.42.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 16:42:09 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH v4 1/5] Revert "brcmfmac: disable command decode in sdio_aos"
Date: Thu, 13 Jun 2019 16:41:49 -0700
Message-Id: <20190613234153.59309-2-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190613234153.59309-1-dianders@chromium.org>
References: <20190613234153.59309-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_164210_036310_943D1714 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
As far as I know this patch can land anytime.

Changes in v4: None
Changes in v3: None
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
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
