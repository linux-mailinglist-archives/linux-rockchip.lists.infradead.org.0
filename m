Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B421354D3
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 09:53:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhT3PgMUsOgLNMobE20bDkNSMe2vMJVlJDax/wrxMOU=; b=A1+Ljqqsppi56Q
	wBazZ1abr0bHQG5p86RTNrt6Ro6nsH+rqbP6idyyczm4plzcqbiIlt0cl0Ec7TgB0Bvi8CXoYqQHa
	Qq1CDhEWbjQDhhw/Tf70v3yCgQqetC9WAJ/930PZtS0gUS+ZOnzzzCIi7/UpqaYGg9hR1raFHFF5i
	LvEzlwgFQCzIREDHCpY2TgSIDpviN0iL6HVRMYgB5JLMdHPae6mB0yfJaHOC4TgImHwHgaLNxUC2a
	GdI+jnL027ftZx0/IhtxqWp8h47LOczyjwEkl5c3ShdV4KAI2I9VF6w22cvj+4BcLqb3Lh8Hwf4I6
	H3NykWamDX8CFHI4ZgfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTZ1-0006RC-OW; Thu, 09 Jan 2020 08:53:11 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTYr-0006Fn-6u
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 08:53:02 +0000
Received: by mail-pl1-x642.google.com with SMTP id g6so2305923plt.2
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 00:53:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8cmgO4h/IT9+TadX/gfjKX3N9uvs8I+qHAmIxhEKZPw=;
 b=pqjl7SOgfC0m82HAVfVeYS5BS9XuNIE8MP1xUndAC9XfZmvXiwPevzJmJ5gYARbAZN
 WtOManHcStXMRhF59o6eMLnOy676VgTZ9OIcM+HqS0TTLL7muzI6JNUJU57kNRRa7wBB
 veIDEjtt86tY4a7c7nBv3SQdwK4y9J5PhoK9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8cmgO4h/IT9+TadX/gfjKX3N9uvs8I+qHAmIxhEKZPw=;
 b=k9goAOiUSeH69lwDM7XkzS6S+BHWDqhvxdHrQorXlXC2foifQpkPYSsEvW905m4EBY
 FTWoMvbW9irNCZU1NE6TgRkvMiByX2dNr0ZRW5CO/klszJ06OYQVURbpQqNRYaQPR7lw
 FDe0aHAi9MLmNkgeaSUvvkXea15S6cglcNDs6t6WHLiQlagEn/P5G+WPmEfpQ8VEwnNo
 sYq/UUedwauQGken14brVha79xKDBo0ZrpfG/N/hwkH6tgvoRj7eJX6vAPDCPVz5p/aX
 yH7XIVHoflIKUVTlW6Mo+6Rj8fcU4Kf85DvitJeV6goCKn9dY8g8pvHLPuE2tg+WV/Dp
 Ljvw==
X-Gm-Message-State: APjAAAUPA869yFzwxilWFwRQhlVeGJUX09UTImIE/CTqmwweujxrMuxr
 UoQ9nt9qtwFA2z6TVZ5NZfWvDw==
X-Google-Smtp-Source: APXvYqyWF6cjwZMACSpJA92Qf24vX4BOpEXmnfARbXOGI48nTAvd6wVS3pFFCx1UKubqoIlt1+u3gg==
X-Received: by 2002:a17:90a:dc82:: with SMTP id
 j2mr4112628pjv.70.1578559980334; 
 Thu, 09 Jan 2020 00:53:00 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d888:9871:544a:b516])
 by smtp.gmail.com with ESMTPSA id o17sm2139121pjq.1.2020.01.09.00.52.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 00:52:59 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v4 6/8] watchdog: kconfig: Enable designware for rk3399
Date: Thu,  9 Jan 2020 14:22:20 +0530
Message-Id: <20200109085222.22670-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200109085222.22670-1-jagan@amarulasolutions.com>
References: <20200109085222.22670-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_005301_351652_30DCCE5A 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marek Vasut <marex@denx.de>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable designware watchdog driver for rk3399 if WDT defined.

Cc: Marek Vasut <marex@denx.de>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v4:
- This change on top of below series
  https://patchwork.ozlabs.org/project/uboot/list/?series=151431

 drivers/watchdog/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index bf5612a811..ceefee3a6b 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -48,6 +48,7 @@ config ULP_WATCHDOG
 config DESIGNWARE_WATCHDOG
 	bool "Designware watchdog timer support"
 	select HW_WATCHDOG if !WDT
+	default y if WDT && ROCKCHIP_RK3399
 	help
 	   Enable this to support Designware Watchdog Timer IP, present e.g.
 	   on Altera SoCFPGA SoCs.
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
