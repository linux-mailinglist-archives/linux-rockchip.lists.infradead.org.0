Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 938D319C052
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 13:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jEhDa9GaRLO3p/qbXzzqMUs5MWztXaUaNvyfW9ITgS0=; b=JCOobchws87kwNeMzatzjFM+EW
	Hik8bkDTakLEe2i3oqZqn+CkLHbm4gC0nKx0c6yuS0tPcfm/rQ5AxS5dQlP6EqHnz6VjEGLa5OKG1
	46h4qvfnz0nZyPbe/OMNMhU6wxE1f23PQO6vhWUHsWpjfHnTAQPytUEqHv8KFWLoXMdVf3vqp35PG
	UIsHMbTXtfyVxW513tDevTSkOqZllafaOGuBTrQBb6eBcfG8Y/kdl0vfFAWUAzajdJpeLwPkqBR78
	MP/8b8E6G+EXRKXXmwYW1MF093wOevf4nEyHuwJDhJsUvSKL+wY9Nabu4pvBaulnCOII7T4gNPn6X
	lbiekgIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJyEL-0002Ad-PJ; Thu, 02 Apr 2020 11:41:53 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJyEI-00028q-2R
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 11:41:51 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ng8so1434500pjb.2
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 04:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=U9shr/sIXGUpkWVegpw8emtHcoxnHuA88+inRf7p4IE=;
 b=M/v//8fNNBafv0qRs9IJVD0OeLGuOI2jcXoNcblXRRCkUfogm5UjOdecA7zAtOQh//
 3NCviNSunTTK4lA5Y6H6cUjDyW082t/bzUbn53wE7r7KqrHZHQ0xHR8s35RyD/pnbyYF
 s8dL17KoFfOwRdw0spyZ/buyQEG6kJxOcE66E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=U9shr/sIXGUpkWVegpw8emtHcoxnHuA88+inRf7p4IE=;
 b=Yth7K3me6i6fati0ex2eStcRB460paBwB09ZTZxLgaaNvRgzXUn0mf8Fh4f75ou/8T
 L+Qfr9sI7fix//X+HHNe0Pp+2K1VXqYhp4/itzyyzaGWcopelLY2hQZdvN7HU9mZCfcD
 MQLXeuuq91a6sI0te1/h06WHuIz1/+VqKwVWJLTgDtOnDUCXRxKSnAoCER1IcSl9ludT
 k0cvwT1l2YzrwObKvCKxKvbi+DZghTKoFqh1vjLxAuwRXCk3Ks41nQHuaJn/yrk3NbkT
 HF2bEOklWS84/TbByPAgW2/eqtfPq6XAkATO/WgXDJS1QDeJhEWlNJlnA4RqPRlYwo23
 iBvg==
X-Gm-Message-State: AGi0Pubay7W5q+J0inF/4T9WArRgCpEOWTcgv14QCA78njQQIwo2Zgzd
 7W+zs7mxT3+xHSTQnY9pTTyVZQ==
X-Google-Smtp-Source: APiQypKuK+dRsLXJumxTCKxMR6eVsxq4/XyQl7YPxx7zIbt0E6zk74Vm3JGQZNB+Vd1yWXxJ4CAXIQ==
X-Received: by 2002:a17:90a:ad8b:: with SMTP id
 s11mr3306616pjq.8.1585827709430; 
 Thu, 02 Apr 2020 04:41:49 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:3532:519d:ba6d:25e1])
 by smtp.gmail.com with ESMTPSA id i4sm3618107pjg.4.2020.04.02.04.41.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 04:41:48 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Anatolij Gustschin <agust@denx.de>
Subject: [PATCH v3 3/5] rockchip: Enable pre console for rk3399
Date: Thu,  2 Apr 2020 17:11:23 +0530
Message-Id: <20200402114125.2501-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200402114125.2501-1-jagan@amarulasolutions.com>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_044150_109352_2B30921F 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, Mark Kettenis <mark.kettenis@xs4all.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable pre console buffer for rk3399 platform.

This would help to capture the console messages prior to
the console being initialised. Enabling this would help
to capture all the console messages on video output source
like HDMI. So we can find the full console messages of
U-Boot proper on HDMI display when enabled it for RK3399
platform boards.

Buffer address used for pre console is 0x0f200000 which is
ram base plus 240MiB. right now the Allwinner SoC is using
similar computation.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/Kconfig | 1 +
 common/Kconfig                 | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index ed7514ab75..0cb1f23d0f 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -229,6 +229,7 @@ config ROCKCHIP_RK3399
 	select DM_PMIC
 	select DM_REGULATOR_FIXED
 	select BOARD_LATE_INIT
+	imply PRE_CONSOLE_BUFFER
 	imply ROCKCHIP_COMMON_BOARD
 	imply ROCKCHIP_SDRAM_COMMON
 	imply SPL_ROCKCHIP_COMMON_BOARD
diff --git a/common/Kconfig b/common/Kconfig
index 46e4193fc8..bd35de3056 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -568,6 +568,7 @@ config PRE_CON_BUF_ADDR
 	default 0x2f000000 if ARCH_SUNXI && MACH_SUN9I
 	default 0x4f000000 if ARCH_SUNXI && !MACH_SUN9I
 	default 0x0f000000 if ROCKCHIP_RK3288
+	default 0x0f200000 if ROCKCHIP_RK3399
 	help
 	  This sets the start address of the pre-console buffer. This must
 	  be in available memory and is accessed before relocation and
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
