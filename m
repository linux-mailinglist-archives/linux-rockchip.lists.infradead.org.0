Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D02C1F3D90
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jun 2020 16:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3YuVsqL3f4RMEJNtCma9oYsFPiRZ0q3uEKCfw4Xnas=; b=bZOJtDECTHTcua
	ye9OEOmOGy1xoJoTzy4FLPta1egnXwd86eJbluDB82n4jbm5c7rDBA6b/05Iss8tUpKfwlz9V4DfH
	BEvrynFsyql9gX9guzRyGeTsKlxYO0sbwg3mVPhkkgRpbFt1oIGbT/4lQXta1RN1JikdvdqGUi04O
	L8C4QqsWCEGby0zUfFaj89poM2oqQ7jiZR7YYSqO3MUw7KjncqoFFE/c0poSFvyYUlL7GVwT5IYnz
	vEzD1vhG35ghfnlTldTtc1do6pOSaus5PCViaedWxE+4DzvfVKyE/UGDqVT6oHgdSBecm7UfzY5lJ
	8ZWNChCz1yWP6Cng9o0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiesp-0001BY-N5; Tue, 09 Jun 2020 14:05:43 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiesl-00019z-Lj
 for linux-rockchip@lists.infradead.org; Tue, 09 Jun 2020 14:05:40 +0000
Received: by mail-pf1-x42c.google.com with SMTP id 23so9225404pfw.10
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Jun 2020 07:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DeHnVKGp+S6n8ErjnNmprOR3Rq9PiFaV957cClQPU7s=;
 b=GKcboC4LDEm0Q5u+AO7R4CdbqH/mO+otC44T8rKjHKHQWFY3zF8uSu/uYeq3hr9u01
 iG8kuUomdqALUGl6oau5Vng3m/RPphu6h0Oz9CV5tVpuAdWz6ae/e/w9qvuPi3Bx3fl3
 4jNSRYckHmfoB6Vj7gXG3+SnxmZvyMfEaLvXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DeHnVKGp+S6n8ErjnNmprOR3Rq9PiFaV957cClQPU7s=;
 b=CrimXMh0WOdx6SBYNQrcMIhXAn+bTelJKI6hL+Ag5S99w5aUgGr+waNkfwB5uWOprk
 yvsawvuHCaurHE7Oh0pYw/wpIfQZX46OFf5na0GdHJuZqhx8sozpflLdhRaopv1GFtX0
 5pl5wKyIrkOVXTk/kAI2qhrGy569E4vnj+JL7VwARtn3xQ1utUeLBkesGDCKJVVlJP7B
 Sf9/ZS+ESeSZonS8R87+Kn50hM4qGVS+0gU2O7F+PMQ9vgXy7vVHo8H7HTTcqOkvuRRm
 wZfEDdJMSWb1M+i27vBImnxv/OuBVswH3g9ivDHTaYPt2sxsQdLRTwuhM5Fq90xKeyGe
 LPdw==
X-Gm-Message-State: AOAM531F/GesWV541HIK3yIQo3EB/Fox6ZKDEHrEUkH3tcViQ0x9RTEa
 P4uNXWG3ZJCGrwqVPx2cTVEcvQ==
X-Google-Smtp-Source: ABdhPJzmWsl2Y/1E1YaLDOzioBM8YtRZkT2i3cub8qjctptUy44AKXHGRBW+9IZB4CbAR7/v0tQ6gA==
X-Received: by 2002:aa7:9537:: with SMTP id c23mr25520613pfp.149.1591711538488; 
 Tue, 09 Jun 2020 07:05:38 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6575:fcd2:e4d4:715a])
 by smtp.gmail.com with ESMTPSA id e12sm8961817pgi.40.2020.06.09.07.05.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 07:05:37 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH 2/3] rock-pi-4: Enable PCI/NVME
Date: Tue,  9 Jun 2020 19:35:13 +0530
Message-Id: <20200609140514.132579-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200609140514.132579-1-jagan@amarulasolutions.com>
References: <20200609140514.132579-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_070539_709055_76370AA0 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42c listed in]
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
Cc: linux-rockchip@lists.infradead.org, Tom Cubie <tom@radxa.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable PCI/NVME for M.2 Slot on RockPI-4 boards.

=> nvme info
Device 0: Vendor: 0x144d Rev: 2B2QEXM7 Prod: S4EUNG0MC10012Y
            Type: Hard Disk
            Capacity: 238475.1 MB = 232.8 GB (488397168 x 512)

Cc: Tom Cubie <tom@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/rock-pi-4-rk3399_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
index 2487872219..f3eeef0293 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -18,6 +18,7 @@ CONFIG_TPL=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
+CONFIG_CMD_PCI=y
 CONFIG_CMD_USB=y
 # CONFIG_CMD_SETEXPR is not set
 CONFIG_CMD_TIME=y
@@ -36,6 +37,8 @@ CONFIG_MMC_SDHCI_ROCKCHIP=y
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
+CONFIG_NVME=y
+CONFIG_PCI=y
 CONFIG_PHY_ROCKCHIP_INNO_USB2=y
 CONFIG_PHY_ROCKCHIP_TYPEC=y
 CONFIG_PMIC_RK8XX=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
