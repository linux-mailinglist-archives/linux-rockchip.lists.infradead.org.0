Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4937619D8A6
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 Apr 2020 16:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=78rAtZj25sf8oVCWVayj7Prl+Vsc7wGaL3D3W6s3tpE=; b=tDZ
	D452StBl/n91ZpyWShfu2xqIiCfktwgnSbGAjJjfC54IjmVepVWXQynvdRP83b1W7CeRIK3cZ70JO
	sQyB3LtIe8u9kJNloAs1L7CwUyAtaXJ9FPL8DuSOxVvsuyHAjEKz0pK/EZNECNbHbkG3lhCD9ENuV
	1lHE1s7i680rI89TmXy/Hb8diC6B4IdvdtfPSEafU/GWuLyZMlBYGqffD/dz+Nhb5Kse/STdjm88Y
	D1T1Xjmer+p59KrWNJdH81XopbFfRWRTP3b4R1kYIVqS0TjLreJ2GuOqTJMiPim5gbFNIgDr5pNAV
	mFQce2a8FoJtWbvCJR0ZDT10NnaU/sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKMxt-0008P0-Gm; Fri, 03 Apr 2020 14:06:33 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKMxq-0008OO-52
 for linux-rockchip@lists.infradead.org; Fri, 03 Apr 2020 14:06:31 +0000
Received: by mail-pf1-x444.google.com with SMTP id u65so3532964pfb.4
 for <linux-rockchip@lists.infradead.org>; Fri, 03 Apr 2020 07:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=5beh3tYBqXYsZM9WkHB84nsN0JayVNaqbU3KDCMIMkE=;
 b=HPTz22GX3PhyK0svSjiEAa/EYEoKl/3lYZ9PR0vxCRKC/FaCBtpqA6WeerrESZJ7JX
 tv88xM4eXiEciGzJFjYcoTO1WGy9MLzExMNNdTNTnZgv93V6bWIZBfitczga7J/i1i+L
 YzrahOiLRIPg7Knf2fAHPdx0qCj29Vs0t7f2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5beh3tYBqXYsZM9WkHB84nsN0JayVNaqbU3KDCMIMkE=;
 b=AvHiROECz3XXaWYbx2afm80g6zzeF1yWObTMn2M6V1ftMqYVnL0hUDc0URCnjt8Lwq
 i6Ub88WdVkysuQdBwTeXKx/5SbdC0bTQpyimf4s93Dk/bfTK6ExvvYxwlZFpEU4EoXka
 CAxIUQlbhs1s35C6KrpEZ35AH2MKQi7bzcc6nueUPHTydHAXSkDkuMRjRZsIoRHInakX
 yO8Xtf3zITrmA1JGMUqh8rrdPkzP9IqiXYPqbgq0Fq3EalfTA4njXhqkUnCwT9TgVVFY
 gwqnGW18A9hLvNZh4lfQdoHWzhlE+FDjqtmpc5P12EjkCntm8W1IUG1KHuZKSgrHpyiW
 o5wg==
X-Gm-Message-State: AGi0PuaSVESBS+N2qAui4N13TeCmilqKv6VMdYRWS/3RUeng93VlYtUq
 d1winqtMOzJ1mGTnP47S9ucNqw==
X-Google-Smtp-Source: APiQypLnyuaCfrMJVbi/1HEIwuHyrJ1Hs76x+x1jPDIZ54zuDRt5bMB+wdkOemO/y1W+MQTIm1IjZw==
X-Received: by 2002:a62:92:: with SMTP id 140mr8187984pfa.186.1585922788771;
 Fri, 03 Apr 2020 07:06:28 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9cd7:b821:2c84:e325])
 by smtp.gmail.com with ESMTPSA id q200sm5368935pgq.68.2020.04.03.07.06.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 07:06:28 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: heiko@sntech.de,
	catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH] arm64: defconfig: Enable GPIO_SYSCON
Date: Fri,  3 Apr 2020 19:36:16 +0530
Message-Id: <20200403140616.19505-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_070630_628697_193ADD63 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, Levin Du <djw@t-chip.com.cn>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

roc-rk3328-cc board has vcc_sdio regulator controlled
by a special output only gpio pin. This special pin can
now be reference as <&grf_gpio 0> via gpio-syscon driver,
as mentioned in below commit.

commit <99165b93dafe4f2a821b5dae106f2ef6b4ceff7e> "arm64: dts: rockchip:
add sdmmc UHS support for roc-rk3328-cc"

So, enable bydefault on the defconfig.

Cc: Levin Du <djw@t-chip.com.cn>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0f212889c931..0a38f0833cf7 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -433,6 +433,7 @@ CONFIG_GPIO_MAX732X=y
 CONFIG_GPIO_PCA953X=y
 CONFIG_GPIO_PCA953X_IRQ=y
 CONFIG_GPIO_MAX77620=y
+CONFIG_GPIO_SYSCON=y
 CONFIG_POWER_AVS=y
 CONFIG_QCOM_CPR=y
 CONFIG_ROCKCHIP_IODOMAIN=y
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
