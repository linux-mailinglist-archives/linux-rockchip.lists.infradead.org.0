Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC054D9DB
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 20:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WfirHFEWfd/wxgE1Gv2980BoNlxJ+wTWMCagYNP0Wn0=; b=H/Ru3HcHwiFyDn
	qDRTMEZTLBO6mVTJma05yiu13zrb9d3+AjVMuMeqtXRltdo5PHEK7IILpQc3T0lrRi7TKmHpPYCnY
	tbGdIo9P7Ls57bg6Rb1x1MUROS2n6mHcrO0IoE3wdUhsc6LO2RE6cY3ISuB7NmHVTkz6FpQmCI9wU
	UA6cVmx3WWK8qagmX2v6rMr8EdhVZzQy893h4BSFcWMvaJldVvv7CtUwfaPXlRANk3l307EdkhHZj
	J3zkza2jD4NQyIN2jYdcXwnc3Oom84ZEYCDsqO8HIVUT6uFKSQ0/GqaFjMse4bx8ZKLVjE/weVQeK
	YH9X+Rxma62We3Q0bK1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2Du-00038J-7C; Thu, 20 Jun 2019 18:55:50 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2Dp-00035x-Sd
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 18:55:47 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so2156067pfe.11
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 11:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YAVX44TjixlyUBQzD0G7+JGPLwAIIoO4XVm2kwePVsI=;
 b=J3Co9Iqj/Uahf9I/LYllSovtu5292resySUkJhy2CATyEb8fHSHvLG27AeV3mSLuC3
 bYqqNUW4qiPBQtF7MgaonpEhUgoFUsqDztBLotnkJUYZ0p6qJhJq4kFmL6FxiORyV3ab
 3egxW90u3IlKkRfUrTX/uXSD5GbkCXtuUDe6M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YAVX44TjixlyUBQzD0G7+JGPLwAIIoO4XVm2kwePVsI=;
 b=NoxI0H+iXi5j6Yp+kRyD0uA26gyWIj5p1J4/GgyENGu43fVR0PR/MSYbmR0qDqu2KD
 YE+qghRWF09CfGcuA+4KQdtNZAWwgGwEmwc/e6ZaJMxNt/ubu7BKm+5ZticPbLQgkpjk
 r7VbbQnxdF0J2SIBZkWpE77xH5DuZgqiKGDfM2eQx0Bv3z8x4vwpuZe/siOeXhLCgIlr
 ede2kzTwm1gTa+/bowtJ+VUPnzWXmkAZ2k3vCu0ZilK82EoevGndYuAzdMlFney8PN1M
 KUV0K1B2EdLzPQfX5LPGwfysQGscClUg4II1oZYk5IAv0jURg8zRwE7aql03aGBF9L8/
 1gHA==
X-Gm-Message-State: APjAAAX1SVqG0dUk7Y62KxwIBixQLvUIbNq2Cymz9PWkpaNCwXkY7UqU
 9AmiIJCZdK3eIS8pDlxm565XzA==
X-Google-Smtp-Source: APXvYqx2KN4/aWVpMa6gmNLJWrp8NXPCOSnQnsYaSPsMQWxhCnvD2Gd3y4f9p+aaAHxuiX/0z/FKPg==
X-Received: by 2002:a63:4c14:: with SMTP id z20mr14096286pga.360.1561056945317; 
 Thu, 20 Jun 2019 11:55:45 -0700 (PDT)
Received: from localhost.localdomain ([183.82.225.128])
 by smtp.gmail.com with ESMTPSA id k3sm372183pju.27.2019.06.20.11.55.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 11:55:44 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de
Subject: [PATCH v2 8/8] rockchip: rk3399: Enable TPL_BOARD_INIT
Date: Fri, 21 Jun 2019 00:25:06 +0530
Message-Id: <20190620185506.11449-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190620185506.11449-1-jagan@amarulasolutions.com>
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_115545_949288_B4C87255 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [183.82.225.128 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable TPL_BOARD_INIT, this would help us to show
TPL boot prints.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index ce039022df..1d483be8b9 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -184,6 +184,7 @@ config ROCKCHIP_RK3399
 	imply TPL_LIBCOMMON_SUPPORT
 	imply TPL_LIBGENERIC_SUPPORT
 	imply TPL_SYS_MALLOC_SIMPLE
+	imply TPL_BOARD_INIT
 	imply TPL_BOOTROM_SUPPORT
 	imply TPL_DRIVERS_MISC_SUPPORT
 	imply TPL_OF_CONTROL
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
