Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FA6398DF
	for <lists+linux-rockchip@lfdr.de>; Sat,  8 Jun 2019 00:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vj2BpNSxjcdGmmUEJklYpHj7qM5PSFHOWh/WMMPqhDs=; b=DglWWoy1k/xt7j
	ujkM6J3h7QWf5qSv7uWSoU+Kkv7s5Pa18KDi09E0PtajJipypRohHq3x3DCgU77jesohni8HLXOMI
	TVCOvv1WwxM8RmaVnP0I6MWbqNf/BDVdPDpMflqJFNCddPEmbu4jhLqlne/VLnLYODU6dlNvvAi5h
	RBpqBNXWvm14nfhlBJ9E812o382LNW03eqM+xjIrU8KSI74ONknRWW7R6Ye+sOIBCnEhlMT2jArea
	PouyKkk8KW5wI2VMZ3TmewidrsQfeydrRcGj9oW3/imS2SQwkVG8w0uwMPLQi2RQVSvw/8Vg57M4y
	9ano4fegk2acMQDLDVZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNUX-0004qn-JD; Fri, 07 Jun 2019 22:37:45 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNUU-0004pP-5J
 for linux-rockchip@lists.infradead.org; Fri, 07 Jun 2019 22:37:43 +0000
Received: by mail-pl1-x641.google.com with SMTP id a93so1340155pla.7
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jun 2019 15:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=npqZn7jrWknLiP6RpPMO0pPj6O8NQ9dRH7/VI2Vhthk=;
 b=hdMt7Tp8R3E0DReUmZ60ezy4X6bTQmVNpN9Xob9TjfIVuVL+nrVX7wdG3Y2lEjkEoe
 w7yjBbWqqH3/q7tBbdW4khMsRF5Fm+s4GofU3zrlvE3jW8r+me40NCIVGSVFt5KL9VVA
 g2YydiHRvFDQXquQIEaNZ1shPB2elvhqoQdmI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=npqZn7jrWknLiP6RpPMO0pPj6O8NQ9dRH7/VI2Vhthk=;
 b=oHnS+pjZgYpA1WA1pxO9puqb9F1v1jv3rSX2iR90/wv3CzYtsEMKppBDUQhe2FuzOO
 S81VHjTYQiwtwSbFUpsm5+emdLvPzfgye3JDqLDPPWoGbmvgchdvDK16+GprtVQS4tcu
 tij+WhGKxFkBkinZMbc2I2Yq4CpmA54YmLJ66FkFUOPO5Fa5FrmUK9Q45n1uihv8owQA
 BcxHDmT4HaCtHaQ0YK6xroV45UbY3M1fMisMuLVclNMBkoHF6IrQDzNzQ5U9rzZ2gPkx
 7SgBRrCTzaQw6rjmUx05Js1HLtwqhBBTyTagmVkqhETt7/Va7a7YiJcZLMCk9Q7z6nq8
 /aeQ==
X-Gm-Message-State: APjAAAVb1DLWUzihWv5cON+M7WKmHlcIJJyFumsY6FpiDKMuy9UZ+/Yk
 O4TIRR4/wWeM2bM1jogvC571e1xwvTg=
X-Google-Smtp-Source: APXvYqxe0jRoHVjH0j4kVqEfBP2PUF3gAe9VxHlJqI7LH0UKRSF8v7zzb19mCum1XWxKY7vDj7csbg==
X-Received: by 2002:a17:902:522:: with SMTP id
 31mr55340726plf.296.1559947061581; 
 Fri, 07 Jun 2019 15:37:41 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id j23sm4185193pgb.63.2019.06.07.15.37.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 15:37:41 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH v3 1/5] Revert "brcmfmac: disable command decode in sdio_aos"
Date: Fri,  7 Jun 2019 15:37:12 -0700
Message-Id: <20190607223716.119277-2-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190607223716.119277-1-dianders@chromium.org>
References: <20190607223716.119277-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_153742_229024_D7E4A82C 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-wireless@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Wright Feng <wright.feng@cypress.com>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Michael Trimarchi <michael@amarulasolutions.com>,
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
