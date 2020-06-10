Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D98721F53B5
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 13:44:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WRDHn9YKUH8SKIUpmN5/xwW8xp7KdoNz401t9+RuWpA=; b=ttXE7JW2GoRAS7
	DULwazrhGF43SeY7DnXzoLXh6+k5KttHHq3z2VLrZvWnnE3aAG1h091+/Mau1uzsUEKFY19qYLokC
	hSG6H1G/0RvUd1W0ukfRTxmZzjqBRPVDZEU+VF/zRJx7V7Aj3zpLmBj5uiQWW+NmqfgTG3RTwP5qi
	Hmy0FJdr1Vx4n3IjYs1T9Rq0OxOQ/MxLmBCGVwP0WGHKyouHbMaHj3GVAvzOOsgkC9emJmMRl8sqh
	bC0SXc9qAoGrxGhtOpwN66Z0lyAQojDLh4aKlX80XAYnuAKu0SrYqIrHJDcictwMUNWMGgFVUfsqa
	lBZwqlqniXblwWfL20wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiz9I-0005tZ-2l; Wed, 10 Jun 2020 11:44:04 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiz9E-0005t0-Ds
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 11:44:02 +0000
Received: by mail-pl1-x642.google.com with SMTP id k1so766732pls.2
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 04:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=O2V5XL3BREsrFDwBw4n7RZ8T6utX5AdnG2I6ivLZnCA=;
 b=Q+0/eSrJuVhFqQmrlsBwCwCZAbCe2xEaqucnx2B5U1ugNqUWmowKDVxmV5llgcsrnJ
 zliXEiVt8Az8b9zOxZM/0Tej8xH1pjdM08pw2sA/I0IEIg2fHq6zUioAR/MCZ4rbf9EN
 j/l6kIrf0ADHDtPscUlgRaN0nVou3/T0cGpcA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=O2V5XL3BREsrFDwBw4n7RZ8T6utX5AdnG2I6ivLZnCA=;
 b=IoP9itcG2XPeKLwevUSuRePRe4hxu6Uh7uLgfa2PueyHZztJ/RHTrKrESopxXGFpon
 nZegBQ4BQDK6IWJXMvCPsRcwdrb60MTreO9zCxdmJj3t59Ou5F1oqAjlm1FJXow4RmzH
 vUIHupZ0RjOCb0R/L0TLCoA8dhLSv9Y2AxZZefdLgiTMqhSdIIMj+p6kIkybu35+sYbP
 CKD0f+hgUB2WD9I5lTJtRADlNHkH2+uTHufPdqPtgJnm89om2vGlstji44HYk3NoQrFj
 uMhxwNhCcvfKTPbN3zOzvsCRwHeOp955M36bAqdeD3egnZzGwVQvSHTK1IziQMfuFPAk
 hFvg==
X-Gm-Message-State: AOAM532p6Tz1s9Flf4Z4NFhHaRkeYaIAi0RgR5sPAo3wFtcyq3/opwFy
 x70yeYhjf/m3MEs3H0DOlf/tUw==
X-Google-Smtp-Source: ABdhPJxfGS37PA5Fx79Ub2piTMRhJFMfO0r/k3qlpvGvsVv9giEauDno4rbVNspBFxzzTtqDA1vwmw==
X-Received: by 2002:a17:90a:9484:: with SMTP id
 s4mr2691977pjo.30.1591789439428; 
 Wed, 10 Jun 2020 04:43:59 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9daa:1b72:7bd0:50df])
 by smtp.gmail.com with ESMTPSA id y4sm12934672pfr.182.2020.06.10.04.43.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 04:43:58 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Peng Fan <peng.fan@nxp.com>, Jaehoon Chung <jh80.chung@samsung.com>,
 Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH v3] mmc: sdhci: Fix HISPD bit handling
Date: Wed, 10 Jun 2020 17:13:47 +0530
Message-Id: <20200610114347.118501-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_044400_901561_355C7FDD 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: linux-rockchip@lists.infradead.org, Marc Zyngier <maz@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
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

Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Kever Yang <kever.yang@rock-chips.com>
Cc: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Jaehoon Chung <jh80.chung@samsung.com>
Tested-by: Marc Zyngier <maz@kernel.org> # nanopc-t4
Tested-by: Suniel Mahesh <sunil@amarulasolutions.com> # roc-rk3399-pc
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- use && for quirk check.

 drivers/mmc/sdhci.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/mmc/sdhci.c b/drivers/mmc/sdhci.c
index 92cc8434af..a7db278a0e 100644
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
+	if (!(host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) &&
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
