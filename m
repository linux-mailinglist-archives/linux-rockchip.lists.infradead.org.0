Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2E316A1B
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=68COx+Dl2fFiSrh/1Wpov+BFYQr4ufuU7nd/wxsTqeY=; b=JzHNA60bTmJAoz
	7AM4CV1j32FEtKofbI6GfqCepd7w2j5XIQcB27rr9H+8ZvKcx/XwDSvw+1Ts+dLwBkcYdWK8ZLrRm
	oPlxhOCsGB6F+5qYh9lxmuRkxVsFLmETCAPJVM9QhhJ9n6ZEOL/VznVv3cp1DEqKCQIeFuEeGkEdh
	Sk55/wZ5EBJZBwhEHF0/8klcnNUuk4yMAEkRssXpeiF95MyuaVw6tdjJ1QLhm8DP5WZV27MREq+4E
	46j253llQkY+9guxpR+g4Tz3vvk0QXoODVnc09V1rQolrsHjp+NGt3LUNEvnfU39AWDPHnCEG5vz/
	kaYR9cU9niFL79Wiz5zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4lu-0003LV-TS; Tue, 07 May 2019 18:24:58 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4ls-0003Ki-2o
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:24:57 +0000
Received: by mail-pf1-x442.google.com with SMTP id t87so8502961pfa.2
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sXXUtaXlTBtdjWF6a79eQ7FCAv/jNGu73buyT5ITPC8=;
 b=bUSd9W3bT1vS9A50TW1cohzOqrW/UUZl3aixnNRbJs8SNWUzZ3tDwRfnpnM+3euDx9
 V06KqhyNrqnHnRUZbxioLvPXhCG0162aNOvGNDBetyxBREfO36Rqe8KFVBtbH4sllN6A
 d9f5PaVjRcrpJpYhLC0JdsZngUc3SAFEn5JK8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sXXUtaXlTBtdjWF6a79eQ7FCAv/jNGu73buyT5ITPC8=;
 b=VzEmxeOktWz2HgFr0kPcWpl9ZoeuS9Be5quH5smfcvTebTvOM6dK/fe4/62CzHQljM
 42siNgXvhXAKFwn1QDkOixy0lwKAHY2rBuwLot0pMHoXBIoJQxVBy3aeyyJdQ6yrk/Rr
 KolSWqOGLq5oTRc2FthMfcjYVIOQtm2y78uClt+d704z6E5TfYVI9QIen9U3YIVUDLE7
 ceBFrS28IEKYO7DeWgjrGjfSQR9WtAj+4PKIEq//E7XGBaEEPRxAwVSl0fjrOQOUgYIg
 ZFr/p99TskVbkl9h1IifLPffBcjSXhuEpLWfbiad5CwzzJ1fUg3GVnrVDUH3nfHNT+7k
 IDqA==
X-Gm-Message-State: APjAAAVULbm6D7oaW817YufXstGIvaGrgvE7WL+x/g0CPgLXNl4UbWbL
 NOJ0TrAV4odPhJfPbEvaykaY1j/Yr4c=
X-Google-Smtp-Source: APXvYqxVoMCBaSTjaT5RyGC93k3k2yyZtRDNyU2TzOMmFJFqiI6av6xYTjyqTCYAmIvzwp6wAWselg==
X-Received: by 2002:a63:6f0b:: with SMTP id k11mr17200247pgc.342.1557253494940; 
 Tue, 07 May 2019 11:24:54 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id b63sm28968884pfj.54.2019.05.07.11.24.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:24:54 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH] rockchip: rk3399: orangepi: Add SPL_TEXT_BASE
Date: Tue,  7 May 2019 23:54:40 +0530
Message-Id: <20190507182440.4501-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_112456_152252_B0C9E98B 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

CONFIG_SPL_TEXT_BASE was available in configs/rk3399_common.h
when the OrangePI rk3399 board supported during first
version patch.

But, later below change which move this config into Kconfig and
same has been merged in mainline tree.
"configs: move CONFIG_SPL_TEXT_BASE to Kconfig"
(sha1: f89d6133eef2e068f9c33853b6584d7fcbfa9d2e)

Unfortunately, the maintainer applied the initial version patch,
instead of looking for next version changes.

Fix it by adding SPL_TEXT_BASE in orangepi-rk3399 defconfig.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/orangepi-rk3399_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/configs/orangepi-rk3399_defconfig b/configs/orangepi-rk3399_defconfig
index cdccf221b5..ba13976cc6 100644
--- a/configs/orangepi-rk3399_defconfig
+++ b/configs/orangepi-rk3399_defconfig
@@ -17,6 +17,7 @@ CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-orangepi.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
+CONFIG_SPL_TEXT_BASE=0xff8c2000
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
 CONFIG_SPL_ATF=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
