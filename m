Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F84146E70
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 17:29:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgRB30ZbaPRBogpDnZeRY/Uy2pZeuCTEdidmw2QELaY=; b=tVJAb2ymERdbt5
	0dl5GuKcuVx5r9xKEFe5b/BqYnTQMJYQn/rnXK4Rf7s/TBG0pqvdSIfAut0l6FF8qps2NHaL932He
	awOXGwM3akrIOkHI5kmlmD5dU6JM8MSILzyPy7lJI1yTn6/J9MN4QWz/aC4gjOKJZs/q3jYYTObQC
	lMgy82llzjKcSX7NejHeHFHe5wQgvps2WiZp+Tb7Jk79ADgc0rRBTL6chhHcuhlu1OmUgDY901Cqr
	lmgIJXLSxCkmwrt5EP3dTupiAWH0sWeS0ziiMe1++7mg6vIYMS/FRVwvh0XzCPQrHqETmJJS/nUq3
	VgnGUljGY1RgxkXsohqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iufMC-0007aL-Hs; Thu, 23 Jan 2020 16:29:24 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iufM9-0007Y8-Gj
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 16:29:22 +0000
Received: by mail-pg1-x541.google.com with SMTP id x8so1621273pgk.8
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 08:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=J+OiRInHosqjCdmhqjIGvub+XWktp878CWzZRNlLP4A=;
 b=XchflPEbw2uUM4HrEWINj2vewEvxWEqkwMyOWLlw8SXq6j7Yfhdcif3FtD1BdORPS/
 mgnv1aR7jQhKZSVFnE3q4km+Q1ao7Kkk99q1qcSk88sCtvCURIg3JKq6L4q/bXIFbvVO
 qEUu3J3LSANWundsgBsc1K9V1pQltfxaQ+mKo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J+OiRInHosqjCdmhqjIGvub+XWktp878CWzZRNlLP4A=;
 b=S4Sf8Ly9BVSh40ha79ibKer4vviv7AHMWnYk+MqJOJBsmZaIO0CEsZskQ6YWG5w4Di
 5x6SUQ26zyxwn6hE2gNQk2NsR1AnxKcZ0KWOfBswvMr1Az5lIL4Cu1NjSUn3gZJqEeow
 +Hmd1+NM6LDN+WCBdhZsDLvx3wtNvawg0ae6qRSxNgx0wHbH4LTEAdTXv1jge498rLyp
 F3AxoOnUfy4inkZ+GVFKpSyoj00za4VcNc2cifnXamEWb8Ns96n/wsAUNJcI1nTto7/9
 o/NhAQL2OvilVXv1aN0aOAixWQjErDlOEEa8VRXvEMaSLUXTUW2btJWe3DLvctXsV8if
 lPOg==
X-Gm-Message-State: APjAAAVZy9w1jW4UKlpMAaG6BSoE2GowDz+/G1bAnYQIp1unn5J553/L
 kuGk2HblGRFL1cUm2pUIwP09Pw==
X-Google-Smtp-Source: APXvYqxEqNuQ/6mbbF0m79lfPWVLkmnmK9U1xjW4mcsNRzlVTnQxcJt8mhLD5NgQtqs9EcGsR/pM2w==
X-Received: by 2002:a63:6f8a:: with SMTP id k132mr4915552pgc.70.1579796960871; 
 Thu, 23 Jan 2020 08:29:20 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.109])
 by smtp.gmail.com with ESMTPSA id u1sm3188909pfn.133.2020.01.23.08.29.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 08:29:20 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 3/4] rockchip: Enable pre console for rk3399
Date: Thu, 23 Jan 2020 21:58:44 +0530
Message-Id: <20200123162845.10651-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200123162845.10651-1-jagan@amarulasolutions.com>
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_082921_590385_1B4B6E80 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: u-boot@lists.denx.de, Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
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
index 21d0244050..7d81924340 100644
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
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
