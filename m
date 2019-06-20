Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D2A4D9D8
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 20:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0i4w4RMLVMNxUJHUgMFDNyg2aizus7iADCdTlqPk3mM=; b=V/6WdC2vjnBd+W
	gxAfmCfGNVtcP2pI9SOfpGpsbdPWz6sAeXNUFskx/l89TJb903C/RlCRTbSzmYJFFGRxM7j+41pop
	DitCQF6fb274PXPOz0xnvlFLtPbvLq0ZGNTMu4gdPAowMCFA57eOuLpJCjn1jYM1gEcHsNnZarttG
	Pao2CpFAqgisjITCitoP7znSJyJZCGQSflIH9tby0h/XQ1Z+9ubWSJVRnhVQTIVWfg6mkS+VcWveD
	pUdrhNVF5XgKR0VKzk5YY0pV9k9LkNpVo1W8T9IpkJJ0+VBdKVyOWnRu2f/7nlv7nD5JzMqate5/Q
	My7i5XscaeLCHls6gSYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2Dk-0002zx-Ad; Thu, 20 Jun 2019 18:55:40 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2Dg-0002xQ-64
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 18:55:37 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay6so1736897plb.9
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 11:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IXklBQ6ai0O2AEMFHBbAi493eYh613acLhwbCyGgVi0=;
 b=GQc1ZbZLNzRrhUw1UDUak/4hlO4uo2VunMMv6KSdDDcUoPpAzv1w6KCcjpy7bIBUrj
 XD5Lu01xG7v7Q9WJI1uyaOjorNqqEMePc4MiQXJj/SJPgyKkxUN4gqfNaRapDSfu2z7D
 i7SVP6w62qfQQpnkTf2TkhzUfdJ8Xut1YkNrI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IXklBQ6ai0O2AEMFHBbAi493eYh613acLhwbCyGgVi0=;
 b=dCTS/jiVkWa3grEVlurm1OhM+sFQfQXQ/satjHr44XUGStEPLyXHh/qvdqE7dGJzyy
 sKaRgW9pBnzeHdV+/+AF2iz5h11W8enu0ugusVBX4s61XwyU5WgnDDq4EY8dwz4hgoUD
 duJdhfr9Wb6UX/rgkYDABgWOtdXMY1ihSRRJevrHbzlNKmn7/SC+fDyEZrbd3EL7fy9q
 bRbFcoUIqwVUA7DtEHIKwxK0zmPPIj8w2WsRv2Vj6xpCH0UKInrfdDDmEsMMo3SUW24F
 ICOU/+MsPQBLnuVj4l+vib3THqpamFAiyR4LHq/jRw71GFekCuGQ5YxL+MvaB/oIX2kq
 NCDw==
X-Gm-Message-State: APjAAAV/HBRcWoOFLRJ3zkkwIxa/kbdelAcjS4IS0W3fcsri4vXjoCnj
 R7S/FHhuBifBlHNsxIcHPx1Ajoku7r8=
X-Google-Smtp-Source: APXvYqzAmLSV3CpRpWZYcriyISJkD7of1RbSt1WgZchzbf+dJpvDUkpsRoL8nhX/2y7HEF+OhnVznA==
X-Received: by 2002:a17:902:1e9:: with SMTP id
 b96mr80242148plb.277.1561056935646; 
 Thu, 20 Jun 2019 11:55:35 -0700 (PDT)
Received: from localhost.localdomain ([183.82.225.128])
 by smtp.gmail.com with ESMTPSA id k3sm372183pju.27.2019.06.20.11.55.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 11:55:35 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de
Subject: [PATCH v2 5/8] rockchip: rk3399: Enable SPL_BOARD_INIT
Date: Fri, 21 Jun 2019 00:25:03 +0530
Message-Id: <20190620185506.11449-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190620185506.11449-1-jagan@amarulasolutions.com>
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_115536_226636_79A30B2D 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [183.82.225.128 listed in dnsbl.sorbs.net]
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

Enable SPL_BOARD_INIT globally to rk3399, this would
help to print the SPL banner during bootup.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/Kconfig | 1 +
 configs/puma-rk3399_defconfig  | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index c05e3c3f48..ce039022df 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -158,6 +158,7 @@ config ROCKCHIP_RK3399
 	select SPL
 	select SPL_ATF
 	select SPL_ATF_NO_PLATFORM_PARAM if SPL_ATF
+	select SPL_BOARD_INIT if SPL
 	select SPL_LOAD_FIT
 	select SPL_CLK if SPL
 	select SPL_PINCTRL if SPL
diff --git a/configs/puma-rk3399_defconfig b/configs/puma-rk3399_defconfig
index ebc78fb216..5cb2273a15 100644
--- a/configs/puma-rk3399_defconfig
+++ b/configs/puma-rk3399_defconfig
@@ -21,7 +21,6 @@ CONFIG_MISC_INIT_R=y
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0xff8c2000
-CONFIG_SPL_BOARD_INIT=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 # CONFIG_SPL_LEGACY_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
