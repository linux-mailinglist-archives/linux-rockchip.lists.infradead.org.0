Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6971E010D
	for <lists+linux-rockchip@lfdr.de>; Sun, 24 May 2020 19:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zhZAjrwCnZufTuGL7859kWDTInS9LWTiigiMrrVO77w=; b=CRWrfAVhVOrwHf
	PfyHAYKd2INESwB4sdsC55cYCzYaWc5kbTZ5doZsIudnTcdAUkd/gX6RJWO/6b+DXvNReRPAK3N5S
	N/qbKKvrWbapVzwcTV3uCW02Quj1YrrVPXbxi6879bQmtFzMkkBykwmMwaV6ORzXMfJlvEWGJ4NLD
	gi89ntgdcbJACMzuZR7X+n85khNJ0dLKa4L2KZxnC39Pthu2hX53pMk+pgU25ZuYI9FqInBegLRbP
	rHcFILJD9iN5L97K1ZUXfnWQsZwqP8sjNbixbf9hQaShuyTjCl/Cyfc0mmPXP780ePqV2cUxOq/vY
	iT96SJYq/IvYtYZKqevA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcuNp-0000Jr-LH; Sun, 24 May 2020 17:25:57 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcuNm-0000JA-O2
 for linux-rockchip@lists.infradead.org; Sun, 24 May 2020 17:25:56 +0000
Received: by mail-pg1-x543.google.com with SMTP id d10so7709568pgn.4
 for <linux-rockchip@lists.infradead.org>; Sun, 24 May 2020 10:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LH+j/67x/4dIo71GPtjk4zKaZjV6SuPULRXWrG4j6pc=;
 b=WQ7SX5TBr8b+ykJXgTDlDvNv2W1K8HgBu/yhleQLTvBUuipOteMyslc7h2I6jzMRKJ
 f2V7XVCFBLW5Mwxjs1RCta3U6UA7j/0J+2LdUEVpyJUIs/QDqdgefpI899er4sAhoBVK
 BEO8z8xrtz10DzI7yVYSvIHM93pzJSLSsOCaU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LH+j/67x/4dIo71GPtjk4zKaZjV6SuPULRXWrG4j6pc=;
 b=BWdv2stDbwEo1BnpYVowkTEt4QKSkTtwUonX/EjtUFYsni/yJBSznVhtiGzoE4H+dF
 hUtVbm5rkYCqR7QzjUNGuzj8xnUsO3Q33lssS+lVZ69fpVIDOpQvpYUsp0M4DGTjH8aV
 XIY7p3aTODHopCTaplca2O6RUHtECl2OgsPYpx7GXVL2wFJJPhOEHzpURGWWf0wX0Dpz
 6QtglzYneZrGD51gIWp94MEgsmqstFII9SaYrOXoOk+HgAx3R7+CCcvPAhM+1Uik3e3J
 7DnzjKkaZOi2sJTZaNDj5fbfpmed0t7shVrKdh6EVRuA9Bkj28bDNCBokGajAxfxUS5T
 HWZg==
X-Gm-Message-State: AOAM530bVH8kkcLsBCVPGxJKsMkvc0IINIZ3JVVRmMgoy6KqP3IY0OAm
 nj3amLGNPT+xlrUdQo/osv3tPg==
X-Google-Smtp-Source: ABdhPJxCpKuKuiKrH6Tod8XQ4j92wk24WsQRkgyuSqc3AhpCOMb0uAoyE77hKNKcKeyUxzlAcvFeAg==
X-Received: by 2002:a62:1702:: with SMTP id 2mr13705712pfx.243.1590341151215; 
 Sun, 24 May 2020 10:25:51 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9b1:856c:6c2b:bde7])
 by smtp.gmail.com with ESMTPSA id
 i3sm11279525pfe.44.2020.05.24.10.25.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 10:25:50 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: u-boot@lists.denx.de
Subject: [PATCH] mmc: sdhci: Fix HISPD bit handling
Date: Sun, 24 May 2020 22:55:13 +0530
Message-Id: <20200524172513.199962-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_102554_918872_7E96C6BA 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Kever Yang <kever.yang@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com, linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SDHCI HISPD bits need to be configured based on desired mmc
timings mode and some HISPD quirks.

So, handle the HISPD bit based on the mmc computed selected
mode(timing parameter) rather than fixed mmc card clock
frequency.

Linux handle the HISPD similar like this in below commit,

commit <501639bf2173> ("mmc: sdhci: fix SDHCI_QUIRK_NO_HISPD_BIT handling")

This eventually fixed the mmc write issue observed in
rk3399 sdhci controller.

Bug log for refernece,
=> gpt write mmc 0 $partitions
Writing GPT: mmc write failed
** Can't write to device 0 **
** Can't write to device 0 **
error!

Cc: Kever Yang <kever.yang@rock-chips.com>
Cc: Peng Fan <peng.fan@nxp.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/mmc/sdhci.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/mmc/sdhci.c b/drivers/mmc/sdhci.c
index 92cc8434af..280b8c88eb 100644
--- a/drivers/mmc/sdhci.c
+++ b/drivers/mmc/sdhci.c
@@ -594,14 +594,21 @@ static int sdhci_set_ios(struct mmc *mmc)
 			ctrl &= ~SDHCI_CTRL_4BITBUS;
 	}
 
-	if (mmc->clock > 26000000)
-		ctrl |= SDHCI_CTRL_HISPD;
-	else
-		ctrl &= ~SDHCI_CTRL_HISPD;
-
-	if ((host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
-	    (host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE))
-		ctrl &= ~SDHCI_CTRL_HISPD;
+	if (!(host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
+	    !(host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE)) {
+		if (mmc->selected_mode == MMC_HS ||
+		    mmc->selected_mode == SD_HS ||
+		    mmc->selected_mode == MMC_DDR_52 ||
+		    mmc->selected_mode == MMC_HS_200 ||
+		    mmc->selected_mode == MMC_HS_400 ||
+		    mmc->selected_mode == UHS_SDR25 ||
+		    mmc->selected_mode == UHS_SDR50 ||
+		    mmc->selected_mode == UHS_SDR104 ||
+		    mmc->selected_mode == UHS_DDR50)
+			ctrl |= SDHCI_CTRL_HISPD;
+		else
+			ctrl &= ~SDHCI_CTRL_HISPD;
+	}
 
 	sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
