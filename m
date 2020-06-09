Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FDC1F3D76
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jun 2020 16:01:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tPElmGWLbAbssGBhdu3KnItMbOA2cIJpe+6OTFdYNWY=; b=YEB95HPQAXhMl8
	xuwJEkeJ5P1i/1MjFEH5jaMv7IZDjZfqheKgS5VZHJbXbcP01cd4y/GjcHf+XQOaThz2SxYjKOobG
	WjgzD+7WDnkLoxV6yXGxxQnf89E6JnlvzVEY5JUL/gLNvFw4OiYjYdck5qrseOdmhU5zHt/JHW7Pi
	KLPR43stgG/DGNPi3Mv7wLaFy/v0Sker67UUTN12yKoVE0++o+6v8h8daORYCXvWjkWFeQHHr3sWh
	Vomc/QPKHe8ZVUHNYaX8VSspruBldvgg5zDOiuhfhOXam/TxJ8mynCRFy6kze3MKf47yiJXzoo1Ni
	1ZCK/hX2yiAMr9EYyCXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiep9-000667-3c; Tue, 09 Jun 2020 14:01:55 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiep5-00065f-Fw
 for linux-rockchip@lists.infradead.org; Tue, 09 Jun 2020 14:01:53 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ga6so1452623pjb.1
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Jun 2020 07:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+syYf3Iu8KI6vyzKsTtZsCb86l6VKxYSmzVMN6y0iz8=;
 b=i4kVO/f+0jrMxB/dFY5LuWJUm5J7T9lzbF9GBda55O4++huBsQOzsLJx9eBPalvBAd
 itcWiBYF67eoByTwWCEXdKu7lflP3kWd+2IzJAQtgJB/+P7M61kfUOPAy1r3yaD2/yA4
 /KG0KNJWwOCrrFUjWoJi0IGR1KH7FwlKcX+Og=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+syYf3Iu8KI6vyzKsTtZsCb86l6VKxYSmzVMN6y0iz8=;
 b=Y6j3B4aGuzSuxk0gaIaOtqAJV7oNB++RiUr7O4SoxaGp+pIl/+k2IzD5E4QCmJ69tr
 JzKvv+KKVWateaGHX+qjHaCKAnZMWvUMV63XmDoyVO15mvnI7+FgArjY9nQDdW3SrUuZ
 8cBXQxcoGElRKwfjgGwRKJd90ooaUKwGNl3IlrqDnPmbFdEYRlpNaYTlxs9dqVSANTkL
 gML3JYU8hBFMT/oIJCbZDarbz+I1azwREAr/DAEqxoS7QuB+LMVZtttekUc/JlTqdv13
 6ZX6MGUprkh1JcC4N0Ksj+vUJ96koDBcTzCYEtG4YSZlfA5/+A3Hhgz8BRV3XWkXR+5D
 eAOw==
X-Gm-Message-State: AOAM5336ZSwL0uycZuAtZ5QBZ2m2UM5Qy6IPnGSQgdC4VFpBHc8FTBTf
 8i7huycQC2nwrD9pp19R9Kd+4g==
X-Google-Smtp-Source: ABdhPJzRAwLBNSQHTuEoZ99G5RFxw1K29RbE0upCljaJUkHtdEvdWnDXue1YNM7ZGy+VNOPbyOgKXA==
X-Received: by 2002:a17:90b:46ca:: with SMTP id
 jx10mr5233852pjb.3.1591711310362; 
 Tue, 09 Jun 2020 07:01:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6575:fcd2:e4d4:715a])
 by smtp.gmail.com with ESMTPSA id u5sm2703776pjv.54.2020.06.09.07.01.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 07:01:49 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Peng Fan <peng.fan@nxp.com>, Jaehoon Chung <jh80.chung@samsung.com>,
 Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH v2] mmc: sdhci: Fix HISPD bit handling
Date: Tue,  9 Jun 2020 19:31:35 +0530
Message-Id: <20200609140135.131887-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_070151_959137_2D4B4BF5 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
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
Reviewed-by: Jaehoon Chung <jh80.chung@samsung.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- collect Jaehoon R-b

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
